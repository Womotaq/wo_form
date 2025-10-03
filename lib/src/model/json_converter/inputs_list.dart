import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class InputsListConverter
    extends JsonConverter<List<WoFormElement>, List<dynamic>> {
  const InputsListConverter();

  @override
  List<WoFormElement> fromJson(List<dynamic> json) => json.map((inputJson) {
    try {
      return WoFormInput.fromJson(inputJson as Json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(inputJson as Json);
    }
  }).toList();

  @override
  List<dynamic> toJson(List<WoFormElement> object) =>
      object.map((input) => input.toJson()).toList();
}
