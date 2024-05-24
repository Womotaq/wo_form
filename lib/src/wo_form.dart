import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/input.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form.freezed.dart';

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
    required WoFormStatus status,
    required Map<String, WoFormInput> inputsMap,
    String? errorCode,
  }) = _WoFormWIP;

  /// Required for the override getter
  const WoForm._();

  List<WoFormInput> get inputs => inputsMap.values.toList();

  /// Whether the [WoFormInput] values are all valid.
  bool get isValid => inputs.every((input) => input.isValid);

  /// Whether the [WoFormInput] values are not all valid.
  bool get isNotValid => !isValid;

  String? getInvalidExplanation(
    WoFormInput input,
    FormLocalizations formL10n,
  ) {
    if (status != WoFormStatus.invalid) return null;

    return input.getInvalidExplanation(formL10n);
  }
}
