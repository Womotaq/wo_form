import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class InputsListConverter
    extends JsonConverter<List<WoFormNode>, List<dynamic>> {
  const InputsListConverter();

  @override
  List<WoFormNode> fromJson(List<dynamic> json) =>
      json.map((inputJson) => WoFormNode.fromJson(inputJson as Json)).toList();

  @override
  List<dynamic> toJson(List<WoFormNode> object) =>
      object.map((input) => input.toJson()).toList();
}
