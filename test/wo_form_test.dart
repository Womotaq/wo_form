import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  final form = WoForm(
    inputs: [
      const StringInput(
        id: 'name',
        value: 'John',
      ),
    ],
  );
  final json = {
    'inputs': [
      {
        'id': 'name',
        'value': 'John',
        'isRequired': false,
        'regexPattern': null,
        'invalidRegexMessage': null,
        'fieldSettings': {
          'labelText': null,
          'action': null,
          'submitFormOnFieldSubmitted': null,
          'keyboardType': null,
          'obscureText': null,
          'autocorrect': null,
          'autofillHints': null,
          'autofocus': null,
          'textInputAction': null,
          'textCapitalization': null,
          'maxLines': null,
          'hintText': null,
        },
        'runtimeType': 'string',
      }
    ],
    'status': 'idle',
    'errorCode': null,
    'unmodifiableValuesJson': null,
  };

  test('WoForm.toJson()', () {
    expect(form.toJson(), json);
  });

  test('WoForm.fromJson()', () {
    expect(WoForm.fromJson(json), form);
  });

  test('WoForm.valuesToJson()', () {
    expect(
      form.valuesToJson(),
      {
        'name': 'John',
      },
    );
  });
}
