import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  const input = BooleanInput(
    id: 'isRequired',
    uiSettings: BooleanInputUiSettings(
      controlType: BooleanFieldControlType.switchButton,
    ),
  );
  final json = {
    'id': 'isRequired',
    'value': true,
    'isRequired': false,
    'uiSettings': {
      'labelText': null,
      'controlType': 'switchButton',
      'controlAffinity': null,
    },
    'runtimeType': 'boolean',
  };

  test('BooleanInput.toJson()', () {
    expect(input.toJson(), json);
  });

  test('BooleanInput.fromJson()', () {
    expect(BooleanInput.fromJson(json), input);
  });

  test('BooleanInput.getError', () {
    expect(input.getError(true) == null, true);
  });

  test('BooleanInput.submitJson()', () {
    expect(
      input.getSubmittedJson(
        values: {'isRequired': true},
        parentPath: '',
      ),
      true,
    );
  });
}
