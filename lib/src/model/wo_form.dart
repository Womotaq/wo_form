import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/wo_form_inputs.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form.freezed.dart';
part 'wo_form.g.dart';

enum WoFormStatus {
  idle,
  invalid,
  submitting,
  submitError,
  submitted,
}

@freezed
abstract class WoForm with _$WoForm {
  factory WoForm({
    required Iterable<WoFormInputMixin> inputs,
    WoFormStatus? status,
    String? errorCode,
    Map<String, dynamic>? unmodifiableValuesJson,
  }) =>
      WoForm._private(
        inputsMap: {for (final input in inputs) input.id: input},
        status: status ?? WoFormStatus.idle,
        errorCode: errorCode,
        unmodifiableValuesJson: unmodifiableValuesJson,
      );

  const factory WoForm._private({
    @WoFormInputsConverter()
    @JsonKey(name: 'inputs')
    required Map<String, WoFormInputMixin> inputsMap,
    Map<String, dynamic>? unmodifiableValuesJson,
    @Default(WoFormStatus.idle) WoFormStatus status,
    String? errorCode,
  }) = _WoForm;

  /// Required for the override getter
  const WoForm._();

  factory WoForm.fromJson(Map<String, dynamic> json) => _$WoFormFromJson(json);

  // --

  Iterable<WoFormInputMixin> get inputs => inputsMap.values;

  /// Whether the input values are all valid.
  bool get isValid => inputs.every((input) => input.isValid);

  /// Whether the input values are not all valid.
  bool get isNotValid => !isValid;

  WoFormInputMixin? getInput({required String inputId}) {
    final input = inputs.firstWhereOrNull((i) => i.id == inputId);
    if (input != null) return input;

    for (final input in inputs) {
      if (input is InputsListInput) {
        final gatcha = input.getInput(inputId: inputId);
        if (gatcha != null) return gatcha;
      }
    }

    return null;
  }

  String? getInvalidExplanation(
    WoFormInputMixin input,
    FormLocalizations formL10n,
  ) {
    if (status != WoFormStatus.invalid) return null;

    return input.getInvalidExplanation(formL10n);
  }

  Map<String, dynamic> valuesToJson() => {
        ...unmodifiableValuesJson ?? {},
        for (final input in inputs) input.id: input.valueToJson(),
      };
}

extension InputsListInputGetInput on InputsListInput {
  WoFormInputMixin? getInput({required String inputId}) {
    final input = value.firstWhereOrNull((i) => i.id == inputId);
    if (input != null) return input;

    for (final input in value) {
      if (input is InputsListInput) {
        final gatcha = input.getInput(inputId: inputId);
        if (gatcha != null) return gatcha;
      }
    }

    return null;
  }
}
