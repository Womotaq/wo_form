import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  const form = WoForm(
    inputs: [
      StringInput(
        id: 'name',
      ),
    ],
  );
  final json = {
    'id': r'$root$',
    'inputs': [
      {
        'id': 'name',
        'defaultValue': null,
        'isRequired': false,
        'regexPattern': null,
        'uiSettings': {
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
          'invalidRegexMessage': null,
        },
        'runtimeType': 'string',
      }
    ],
    'unmodifiableValuesJson': null,
    'runtimeType': 'root',
  };

  test('WoForm.toJson()', () {
    expect(form.toJson(), json);
  });

  test('WoForm.fromJson()', () {
    expect(WoForm.fromJson(json), form);
  });

  test('WoForm.exportValues()', () {
    expect(
      form.exportValues({'name': 'John'}),
      {
        'name': 'John',
      },
    );
  });
}
