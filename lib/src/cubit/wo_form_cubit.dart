import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class WoFormNodesCubit extends Cubit<WoForm> {
  WoFormNodesCubit._(super.initialState);
}

class WoFormStatusCubit extends Cubit<WoFormStatus> {
  WoFormStatusCubit._({WoFormStatus? initialStatus})
      : super(initialStatus ?? const WoFormStatus.idle());

  void setIdle() => emit(const WoFormStatus.idle());
  void _setInvalidValues({Iterable<WoFormInputError>? inputErrors}) =>
      emit(WoFormStatus.invalidValues(inputErrors: inputErrors));
  void _setSubmitting() => emit(const WoFormStatus.submitting());
  void _setSubmitError({Object? error, StackTrace? stackTrace}) =>
      emit(WoFormStatus.submitError(error: error, stackTrace: stackTrace));
  void _setSubmitted() => emit(const WoFormStatus.submitted());
}

class WoFormValuesCubit extends Cubit<Map<String, dynamic>> {
  // with StateStreamable<WoFormValues>
  WoFormValuesCubit._(
    this._nodesCubit,
    this._statusCubit, {
    required this.onSubmitting,
  }) : super(_nodesCubit.state.defaultValues());

  final WoFormNodesCubit _nodesCubit;
  final WoFormStatusCubit _statusCubit;
  final FutureOr<void> Function() onSubmitting;

  bool get isPure => _statusCubit.state is SubmittedStatus;

  /// **Use this method precautiously since there is no type checking !**
  void onValueChanged({
    required String inputId,
    required dynamic value,
  }) {
    final newMap = Map<String, dynamic>.from(state);
    newMap[inputId] = value;

    // Setting the status to idle when a modification occurs allows isPure to
    // work
    if (_statusCubit.state is! InvalidValuesStatus) _statusCubit.setIdle();

    emit(newMap);
  }

  Future<void> submit() async {
    final inputErrors = _nodesCubit.state.getErrors(state);
    if (inputErrors.isNotEmpty) {
      return _statusCubit._setInvalidValues(inputErrors: inputErrors);
    }

    _statusCubit._setSubmitting();

    try {
      await onSubmitting();
      _statusCubit._setSubmitted();
    } catch (e, s) {
      _statusCubit._setSubmitError(error: e, stackTrace: s);
    }

    // setSubmitted();
  }
}

class WoFormInitializer extends StatelessWidget {
  const WoFormInitializer({
    required this.form,
    required this.onSubmitting,
    required this.child,
    super.key,
  });

  final WoForm form;
  final FutureOr<void> Function() onSubmitting;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => WoFormNodesCubit._(form)),
        BlocProvider(create: (context) => WoFormStatusCubit._()),
        BlocProvider(
          create: (context) => WoFormValuesCubit._(
            context.read(),
            context.read(),
            onSubmitting: onSubmitting,
          ),
        ),
      ],
      child: child,
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
    return BlocBuilder<WoFormNodesCubit, WoForm>(
      builder: (context, form) {
        return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
          builder: (context, status) {
            return BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
              builder: (context, valuesMap) {
                return builder(context, form, status, valuesMap);
              },
            );
          },
        );
      },
    );
  }
}
