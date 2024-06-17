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

class WoFormValuesCubit extends Cubit<Map<String, dynamic>> {
  // with StateStreamable<WoFormValues>
  WoFormValuesCubit._(
    this.form,
    this._statusCubit, {
    this.onSubmitting,
  }) : super(form.defaultValues());

  final WoForm form;
  final WoFormStatusCubit _statusCubit;
  final FutureOr<void> Function(Map<String, dynamic> values)? onSubmitting;

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String inputPath,
    required dynamic value,
  }) {
    final newMap = Map<String, dynamic>.from(state);
    newMap[inputPath] = value;

    // Setting the status to idle when a modification occurs allows isPure to
    // work
    if (_statusCubit.state is! InvalidValuesStatus) {
      _statusCubit.setInProgress();
    }

    emit(newMap);
  }

  void submitInput({
    required int index,
    required VoidCallback onSuccess,
  }) {
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
      // remove the InvalidValuesStatus
      _statusCubit.setInProgress();

      onSuccess();
    }
  }

  Future<void> submit() async {
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
            create: (context) => WoFormValuesCubit._(
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

// TODO : move
class WoFormBuilder extends StatelessWidget {
  const WoFormBuilder({
    required this.builder,
    super.key,
  });

  final Widget Function(
    BuildContext context,
    WoForm form,
    WoFormStatus status,
    Map<String, dynamic> values,
  ) builder;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (_, status) {
        return BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
          builder: (context, values) {
            return builder(context, form, status, values);
          },
        );
      },
    );
  }
}
