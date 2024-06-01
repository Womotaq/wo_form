import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  const input = BooleanInput(
    id: 'isRequired',
    value: true,
    fieldSettings: BooleanFieldSettings(
      onOffType: BooleanFieldOnOffType.switchButton,
    ),
  );
  final json = {
    'id': 'isRequired',
    'value': true,
    'isRequired': false,
    'fieldSettings': {
      'labelText': null,
      'onOffType': 'switchButton',
      'onOffPosition': null,
    },
    'runtimeType': 'boolean',
  };

  test('BooleanInput.toJson()', () {
    expect(input.toJson(), json);
  });

  test('BooleanInput.fromJson()', () {
    expect(BooleanInput.fromJson(json), input);
  });

  test('BooleanInput.isValid', () {
    expect(input.isValid, true);
  });

  test('BooleanInput.submittedJson()', () {
    expect(input.valueToJson(), true);
  });
}
