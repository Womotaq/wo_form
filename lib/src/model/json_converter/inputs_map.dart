import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/wo_form.dart';

class InputsMapConverter extends JsonConverter<
    Map<String, WoFormInput<dynamic>>, List<Map<String, dynamic>>> {
  const InputsMapConverter();

  @override
  Map<String, WoFormInput<dynamic>> fromJson(List<Map<String, dynamic>> json) =>
      {
        for (final input in json.map((inputJson) {
          if (inputJson['runtimeType'] == 'select') {
            final value = inputJson['value'];
            // Cf UnknownTypeConverter
            if (value is Map<String, String>) {
              switch (value['type']) {
                case 'String':
                  return WoFormInput<String>.fromJson(inputJson);
                case 'bool':
                  return WoFormInput<bool>.fromJson(inputJson);
                case 'int':
                  return WoFormInput<int>.fromJson(inputJson);
                case 'double':
                  return WoFormInput<double>.fromJson(inputJson);
                case 'num':
                  return WoFormInput<num>.fromJson(inputJson);
              }
            }
          }

          return WoFormInput<dynamic>.fromJson(inputJson);
        }))
          input.id: input,
      };

  @override
  List<Map<String, dynamic>> toJson(Map<String, WoFormInput<dynamic>> object) =>
      object.values.map((input) => input.toJson()).toList();
}
