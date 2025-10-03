import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class InputConverter extends JsonConverter<WoFormElement, Json> {
  const InputConverter();

  @override
  WoFormElement fromJson(Json json) {
    try {
      return WoFormInput.fromJson(json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(json);
    }
  }

  @override
  Json toJson(WoFormElement object) => object.toJson();
}

class InputNullableConverter extends JsonConverter<WoFormElement?, Json> {
  const InputNullableConverter();

  @override
  WoFormElement? fromJson(Json json) {
    try {
      try {
        return WoFormInput.fromJson(json);
      } on CheckedFromJsonException {
        return WoFormNode.fromJson(json);
      }
    } catch (_) {
      return null;
    }
  }

  @override
  Json toJson(WoFormElement? object) => object?.toJson() ?? {};
}
