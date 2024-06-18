import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormStatusCubit extends Cubit<WoFormStatus> {
  WoFormStatusCubit._(super.initialState);

  void setInProgress() => emit(const InProgressStatus());
  void setInvalidValues({Iterable<WoFormInputError>? inputErrors}) =>
      emit(InvalidValuesStatus(inputErrors: inputErrors));
  void _setSubmitting() => emit(const SubmittingStatus());
  void _setSubmitError({Object? error, StackTrace? stackTrace}) =>
      emit(SubmitErrorStatus(error: error, stackTrace: stackTrace));
  void _setSubmitted() => emit(const SubmittedStatus());
}

/// This cubit references the paths of all the locked inputs.
class WoFormLockCubit extends Cubit<Set<String>> {
  WoFormLockCubit._() : super({});

  bool inputIsLocked({required String inputPath}) => state.contains(inputPath);

  void lockInput({required String inputPath}) =>
      emit(Set<String>.from(state)..add(inputPath));
}

class WoFormValuesCubit extends Cubit<Map<String, dynamic>> {
  // with StateStreamable<WoFormValues>
  WoFormValuesCubit._(
    this.form,
    this._statusCubit,
    this._lockCubit, {
    this.onSubmitting,
  })  : pageController = PageController(),
        super(form.defaultValues());

  final WoForm form;
  final WoFormStatusCubit _statusCubit;
  final WoFormLockCubit _lockCubit;
  final FutureOr<void> Function(Map<String, dynamic> values)? onSubmitting;
  final PageController pageController;

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String inputPath,
    required dynamic value,
  }) {
    // Can't edit a form while submitting it
    if (_statusCubit.state is SubmittingStatus) return;

    if (_lockCubit.inputIsLocked(inputPath: inputPath)) return;

    final newMap = Map<String, dynamic>.from(state);
    newMap[inputPath] = value;

    // Setting the status to idle when a modification occurs allows isPure to
    // work
    if (_statusCubit.state is! InvalidValuesStatus) {
      _statusCubit.setInProgress();
    }

    emit(newMap);
  }

  Future<void> submit() async {
    if (form.uiSettings.submitMode is PageByPageSubmitMode &&
        (pageController.page ?? 0) < form.inputs.length - 1) {
      final index = pageController.page?.toInt() ?? 0;
      final input = form.inputs[index];

      final Iterable<WoFormInputError> errors;
      if (input is WoFormNode) {
        errors = input.getErrors(state, parentPath: '');
      } else if (input is WoFormInputMixin) {
        errors = [
          (input as WoFormInputMixin).getError(state['/${input.id}']),
        ].whereNotNull();
      } else {
        throw UnimplementedError();
      }

      if (errors.isNotEmpty) {
        return _statusCubit.setInvalidValues(inputErrors: errors);
      } else {
        if (!form.canModifySubmittedValues) {
          for (final inputPath
              in input.getAllInputPaths(values: state, parentPath: '')) {
            _lockCubit.lockInput(inputPath: inputPath);
          }
        }

        // remove the InvalidValuesStatus
        _statusCubit.setInProgress();

        return pageController.nextPage(
          duration: const Duration(
            milliseconds: 300,
          ),
          curve: Curves.easeIn,
        );
      }
    }

    final inputErrors = form.getErrors(state);
    if (inputErrors.isNotEmpty) {
      return _statusCubit.setInvalidValues(inputErrors: inputErrors);
    }

    _statusCubit._setSubmitting();

    try {
      await onSubmitting?.call(state);
      _statusCubit._setSubmitted();
    } catch (e, s) {
      _statusCubit._setSubmitError(error: e, stackTrace: s);
    }
  }
}

class WoFormInitializer extends StatelessWidget {
  const WoFormInitializer({
    required this.form,
    required this.child,
    this.onSubmitting,
    super.key,
  });

  final WoForm form;
  final FutureOr<void> Function(Map<String, dynamic> values)? onSubmitting;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: form,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WoFormStatusCubit._(form.initialStatus),
          ),
          BlocProvider(
            create: (context) => WoFormLockCubit._(),
          ),
          BlocProvider(
            create: (context) => WoFormValuesCubit._(
              context.read(),
              context.read(),
              context.read(),
              onSubmitting: onSubmitting,
            ),
          ),
        ],
        child: child,
      ),
    );
  }
}
