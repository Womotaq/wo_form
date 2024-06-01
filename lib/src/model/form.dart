import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/inputs_map.dart';
import 'package:wo_form/wo_form.dart';

part 'form.freezed.dart';
part 'form.g.dart';

enum WoFormStatus {
  idle,
  invalid,
  submitting,
  submitError,
  submitted,
}

@freezed
abstract class WoForm with _$WoForm {
  const factory WoForm({
    @InputsMapConverter() required Map<String, WoFormInputMixin> inputsMap,
    @Default(WoFormStatus.idle) WoFormStatus status,
    String? errorCode,
  }) = _WoForm;

  /// Required for the override getter
  const WoForm._();

  factory WoForm.fromJson(Map<String, dynamic> json) => _$WoFormFromJson(json);

  // --

  List<WoFormInputMixin> get inputs => inputsMap.values.toList();

  /// Whether the input values are all valid.
  bool get isValid => inputs.every((input) => input.isValid);

  /// Whether the input values are not all valid.
  bool get isNotValid => !isValid;

  String? getInvalidExplanation(
    WoFormInputMixin input,
    FormLocalizations formL10n,
  ) {
    if (status != WoFormStatus.invalid) return null;

    return input.getInvalidExplanation(formL10n);
  }
}
