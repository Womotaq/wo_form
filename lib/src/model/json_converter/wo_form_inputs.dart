import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class WoFormInputsConverter extends JsonConverter<Map<String, WoFormInputMixin>,
    List<Map<String, dynamic>>> {
  const WoFormInputsConverter();

  @override
  Map<String, WoFormInputMixin> fromJson(List<Map<String, dynamic>> json) =>
      {for (final input in json.map(WoFormInput.fromJson)) input.id: input};

  @override
  List<Map<String, dynamic>> toJson(Map<String, WoFormInputMixin> object) =>
      object.values.map((input) => input.toJson()).toList();
}
