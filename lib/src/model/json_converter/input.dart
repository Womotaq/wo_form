import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class InputConverter extends JsonConverter<WoFormNode, Json> {
  const InputConverter();

  @override
  WoFormNode fromJson(Json json) => WoFormNode.fromJson(json);

  @override
  Json toJson(WoFormNode object) => object.toJson();
}

class InputNullableConverter extends JsonConverter<WoFormNode?, Json> {
  const InputNullableConverter();

  @override
  WoFormNode? fromJson(Json json) {
    try {
      return WoFormNode.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Json toJson(WoFormNode? object) => object?.toJson() ?? {};
}
