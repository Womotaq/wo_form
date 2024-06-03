import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

// TODO : remove
class WoFormInputsConverter extends JsonConverter<
    Map<String, WoFormElementMixin>,
    List<Map<String, dynamic>>> {
  const WoFormInputsConverter();

  @override
  Map<String, WoFormElementMixin> fromJson(List<Map<String, dynamic>> json) =>
      {for (final input in json.map(WoFormInput.fromJson)) input.id: input};

  @override
  List<Map<String, dynamic>> toJson(Map<String, WoFormElementMixin> object) =>
      object.values.map((input) => input.toJson()).toList();
}
