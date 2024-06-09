import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormStatusCubit extends Cubit<WoFormStatus> {
  WoFormStatusCubit._(super.initialStatus);

  void setIdle() => emit(const IdleStatus());
  void _setInvalidValues({Iterable<WoFormInputError>? inputErrors}) =>
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
  final FutureOr<void> Function()? onSubmitting;

  bool get isPure => _statusCubit.state is SubmittedStatus;

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String inputPath,
    required dynamic value,
  }) {
    final newMap = Map<String, dynamic>.from(state);
    newMap[inputPath] = value;

    // Setting the status to idle when a modification occurs allows isPure to
    // work
    if (_statusCubit.state is! InvalidValuesStatus) _statusCubit.setIdle();

    emit(newMap);
  }

  Future<void> submit() async {
    final inputErrors = form.getErrors(state);
    if (inputErrors.isNotEmpty) {
      return _statusCubit._setInvalidValues(inputErrors: inputErrors);
    }

    _statusCubit._setSubmitting();

    try {
      await onSubmitting?.call();
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
  final FutureOr<void> Function()? onSubmitting;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: form,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => WoFormStatusCubit._(
              form.initialStatusIsSubmitted
                  ? const SubmittedStatus()
                  : const IdleStatus(),
            ),
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
          builder: (context, valuesMap) {
            return builder(context, form, status, valuesMap);
          },
        );
      },
    );
  }
}
