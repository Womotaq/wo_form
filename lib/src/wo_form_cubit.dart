import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/model/input.dart';
import 'package:wo_form/wo_form.dart';

abstract class WoFormCubitA<T extends WoForm> extends Cubit<T>
    with StateStreamable<T> {
  WoFormCubitA(super.initialState);
}

abstract class WoFormCubit extends Cubit<WoForm> with StateStreamable<WoForm> {
  WoFormCubit(super.initialState);

  bool get isPure => state.status == WoFormStatus.submitted;

  void clearError() => emit(state.copyWith(errorCode: null));

  /// Setting the status to idle when a modification occurs
  /// allows isPure to work
  void onInputChanged({required WoFormInput input}) => emit(
        state.copyWith(
          status: WoFormStatus.idle,
          inputsMap: Map.from(state.inputsMap)..update(input.id, (_) => input),
        ),
      );

  void setIdle() => emit(state.copyWith(status: WoFormStatus.idle));
  void setInvalid() => emit(state.copyWith(status: WoFormStatus.invalid));
  void setSubmitting() => emit(state.copyWith(status: WoFormStatus.submitting));
  void setSubmitError({String? errorCode}) => emit(
        state.copyWith(
          status: WoFormStatus.submitError,
          errorCode: errorCode,
        ),
      );
  void setSubmitted() => emit(state.copyWith(status: WoFormStatus.submitted));

  void submit();
}
