import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class InputsListConverter
    extends JsonConverter<List<WoFormNodeMixin>, List<dynamic>> {
  const InputsListConverter();

  @override
  List<WoFormNodeMixin> fromJson(List<dynamic> json) => json.map((inputJson) {
        try {
          return WoFormInput.fromJson(inputJson as Map<String, dynamic>);
        } on CheckedFromJsonException {
          return WoFormNode.fromJson(inputJson as Map<String, dynamic>);
        }
      }).toList();

  @override
  List<dynamic> toJson(List<WoFormNodeMixin> object) =>
      object.map((input) => input.toJson()).toList();
}
