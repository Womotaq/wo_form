import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class InputsListConverter
    extends JsonConverter<List<WoFormInputMixin>, List<Map<String, dynamic>>> {
  const InputsListConverter();

  @override
  List<WoFormInputMixin> fromJson(List<Map<String, dynamic>> json) =>
      json.map(WoFormInput.fromJson).toList();

  @override
  List<Map<String, dynamic>> toJson(List<WoFormInputMixin> object) =>
      object.map((input) => input.toJson()).toList();
}
