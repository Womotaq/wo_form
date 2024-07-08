import 'dart:async';

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
  void _setSubmitSuccess() => emit(const SubmitSuccessStatus());
}

/// This cubit references the paths of all the locked inputs.
class WoFormLockCubit extends Cubit<Set<String>> {
  WoFormLockCubit._() : super({});

  bool inputIsLocked({required String path}) => state.contains(path);

  void lockInput({required String path}) =>
      emit(Set<String>.from(state)..add(path));

  void unlockInput({required String path}) =>
      emit(Set<String>.from(state)..remove(path));
}

typedef WoFormValues = Map<String, dynamic>;

class WoFormValuesCubit extends Cubit<WoFormValues> {
  // with StateStreamable<WoFormValues>
  WoFormValuesCubit._(
    this.form,
    this._statusCubit,
    this._lockCubit,
  )   : pageController = PageController(),
        super(form.initialValues());

  final WoForm form;
  final WoFormStatusCubit _statusCubit;
  final WoFormLockCubit _lockCubit;
  final PageController pageController; // LATER: replace by currentInputPath

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }

  // --

  void clear() => emit(form.initialValues());

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String path,
    required dynamic value,
  }) {
    // Can't edit a form while submitting it
    if (_statusCubit.state is SubmittingStatus) return;

    if (_lockCubit.inputIsLocked(path: path)) return;

    final newMap = Map<String, dynamic>.from(state);
    newMap[path] = value;

    // Setting the status to idle when a modification occurs allows isPure to
    // work
    if (_statusCubit.state is! InvalidValuesStatus) {
      _statusCubit.setInProgress();
    }

    emit(newMap);
  }

  Future<void> submit() async {
    // LATER: this only submits the currentInputPath
    // if (form.uiSettings.submitMode is PageByPageSubmitMode &&
    //     (pageController.page ?? 0) < form.inputs.length - 1) {
    //   final index = pageController.page?.toInt() ?? 0;
    //   final input = form.inputs[index];

    //   final errors = input.getErrors(state, parentPath: '');

    //   if (errors.isNotEmpty) {
    //     return _statusCubit.setInvalidValues(inputErrors: errors);
    //   } else {
    //     if (!form.canModifySubmittedValues) {
    //       for (final path
    //           in input.getAllInputPaths(values: state, parentPath: '')) {
    //         _lockCubit.lockInput(path: path);
    //       }
    //     }

    //     // remove the InvalidValuesStatus
    //     _statusCubit.setInProgress();

    //     return pageController.nextPage(
    //       duration: const Duration(
    //         milliseconds: 300,
    //       ),
    //       curve: Curves.easeIn,
    //     );
    //   }
    // }

    final inputErrors = form.getErrors(state);
    if (inputErrors.isNotEmpty) {
      return _statusCubit.setInvalidValues(inputErrors: inputErrors);
    }

    _statusCubit._setSubmitting();

    final oldLocks = _lockCubit.state;

    for (final path in form.getAllInputPaths(values: state)) {
      _lockCubit.lockInput(path: path);
    }

    try {
      await form.onSubmitting?.call(form, state);
      _statusCubit._setSubmitSuccess();
    } catch (e, s) {
      _statusCubit._setSubmitError(error: e, stackTrace: s);
    }

    for (final path in _lockCubit.state) {
      if (!oldLocks.contains(path)) {
        _lockCubit.unlockInput(path: path);
      }
    }
  }
}

class WoFormInitializer extends StatelessWidget {
  const WoFormInitializer({
    required this.form,
    required this.child,
    super.key,
  });

  final WoForm form;
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
            ),
          ),
        ],
        child: BlocListener<WoFormStatusCubit, WoFormStatus>(
          listener: (context, status) {
            switch (status) {
              case SubmitSuccessStatus():
                form.onSubmitSuccess?.call(context);
              case SubmitErrorStatus():
                (form.onSubmitError ?? WoFormTheme.of(context)?.onSubmitError)
                    ?.call(context, status);
              default:
            }
          },
          child: child,
        ),
      ),
    );
  }
}
