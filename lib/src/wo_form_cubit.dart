import 'package:flutter_bloc/flutter_bloc.dart';
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
  void onInputChanged({required WoFormInputMixin input}) => emit(
        state.copyWith(
          status: state.status == WoFormStatus.invalid
              ? WoFormStatus.invalid
              : WoFormStatus.idle,
          inputsMap: state.inputsMap.copyWithInput(input),
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

extension InputsMapX on Map<String, WoFormInputMixin> {
  Map<String, WoFormInputMixin> copyWithInput(WoFormInputMixin newInput) {
    if (keys.contains(newInput.id)) {
      return uncheckedCopyWithInput(newInput);
    }

    for (final input in values) {
      if (input is InputsListInput) {
        final updatedInput = input.copyWithInput(newInput);
        if (updatedInput != null) return uncheckedCopyWithInput(updatedInput);
      }
    }

    throw ArgumentError('No input found with id: ${newInput.id}');
  }

  Map<String, WoFormInputMixin> uncheckedCopyWithInput(
    WoFormInputMixin newInput,
  ) =>
      Map.from(this)..update(newInput.id, (_) => newInput);
}

extension InputsListInputX on InputsListInput {
  InputsListInput? copyWithInput(WoFormInputMixin newInput) {
    for (final input in value) {
      if (input.id == newInput.id) return uncheckedCopyWithInput(newInput);
    }

    for (final input in value) {
      if (input is InputsListInput) {
        final updatedInput = input.copyWithInput(newInput);
        if (updatedInput != null) return uncheckedCopyWithInput(updatedInput);
      }
    }

    return null;
  }

  InputsListInput uncheckedCopyWithInput(WoFormInputMixin newInput) => copyWith(
        value: value.map((i) => i.id == newInput.id ? newInput : i).toList(),
      );
}
