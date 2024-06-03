import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class InputsListConverter extends JsonConverter<List<WoFormElementMixin>,
    List<Map<String, dynamic>>> {
  const InputsListConverter();

  @override
  List<WoFormElementMixin> fromJson(List<Map<String, dynamic>> json) =>
      json.map((inputJson) {
        try {
          return WoFormInput.fromJson(inputJson);
        } catch (_) {
          return WoFormNode.fromJson(inputJson);
        }
      }).toList();

  @override
  List<Map<String, dynamic>> toJson(List<WoFormElementMixin> object) =>
      object.map((input) => input.toJson()).toList();
}
