import 'package:test/test.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  test('WoForm.toJson()', () {
    final form = WoForm(
      inputs: [
        const StringInput(
          id: 'name',
          value: 'John',
        ),
      ],
    );
    expect(
      form.toJson(),
      {
        'inputsMap': [
          {
            'id': 'name',
            'value': 'John',
            'isRequired': false,
            'regexPattern': null,
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
      },
    );
  });
}
