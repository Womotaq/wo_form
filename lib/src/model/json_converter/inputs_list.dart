import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class InputsListConverter
    extends JsonConverter<List<WoFormElementMixin>, List<dynamic>> {
  const InputsListConverter();

  @override
  List<WoFormElementMixin> fromJson(List<dynamic> json) =>
      json.map((inputJson) {
        try {
          return WoFormInput.fromJson(inputJson as Map<String, dynamic>);
        } on CheckedFromJsonException {
          return WoFormNode.fromJson(inputJson as Map<String, dynamic>);
        }
      }).toList();

  @override
  List<dynamic> toJson(List<WoFormElementMixin> object) =>
      object.map((input) => input.toJson()).toList();
}

class WoFormElementConverter
    extends JsonConverter<WoFormElementMixin, Map<String, dynamic>> {
  const WoFormElementConverter();

  @override
  WoFormElementMixin fromJson(Map<String, dynamic> json) {
    try {
      return WoFormInput.fromJson(json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(WoFormElementMixin object) => object.toJson();
}
