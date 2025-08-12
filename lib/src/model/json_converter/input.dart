import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class InputConverter extends JsonConverter<WoFormNodeMixin, Json> {
  const InputConverter();

  @override
  WoFormNodeMixin fromJson(Json json) {
    try {
      return WoFormInput.fromJson(json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(json);
    }
  }

  @override
  Json toJson(WoFormNodeMixin object) => object.toJson();
}

class InputNullableConverter extends JsonConverter<WoFormNodeMixin?, Json> {
  const InputNullableConverter();

  @override
  WoFormNodeMixin? fromJson(Json json) {
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
  Json toJson(WoFormNodeMixin? object) => object?.toJson() ?? {};
}
