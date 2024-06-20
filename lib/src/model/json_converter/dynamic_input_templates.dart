import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class DynamicInputTemplatesConverter
    extends JsonConverter<List<DynamicInputTemplate>, List<dynamic>> {
  const DynamicInputTemplatesConverter();

  @override
  List<DynamicInputTemplate> fromJson(List<dynamic> json) =>
      json.map((inputJson) {
        return DynamicInputTemplate.fromJson(inputJson as Map<String, dynamic>);
      }).toList();

  @override
  List<dynamic> toJson(List<DynamicInputTemplate> object) =>
      object.map((input) => input.toJson()).toList();
}
