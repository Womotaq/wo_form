import 'package:test/test.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  final input = StringInput(
    id: 'name',
    value: 'John',
    regexPattern: RegexPattern.username.value,
    fieldSettings: StringFieldSettings(
      labelText: 'Type your username',
      submitFormOnFieldSubmitted: true,
      invalidRegexMessage: FormLocalizationsFr()
          .regexPatternUnmatched(RegexPattern.username.name),
    ),
  );
  final json = {
    'id': 'name',
    'value': 'John',
    'isRequired': false,
    'regexPattern':
        r'^(?!.*[_\.\-]{2})@?[a-zA-Z0-9][a-zA-Z0-9_\.\-]+[a-zA-Z0-9]$',
    'fieldSettings': {
      'labelText': 'Type your username',
      'action': null,
      'submitFormOnFieldSubmitted': true,
      'keyboardType': null,
      'obscureText': null,
      'autocorrect': null,
      'autofillHints': null,
      'autofocus': null,
      'textInputAction': null,
      'textCapitalization': null,
      'maxLines': null,
      'hintText': null,
      'invalidRegexMessage': 'Minimum 3 caractères, en alphanumérique\n'
          'Symboles acceptés : _ - .\n'
          'Un seul symbole à la suite, et uniquement au milieu.',
    },
    'runtimeType': 'string',
  };

  test('StringInput.toJson()', () {
    expect(input.toJson(), json);
  });

  test('StringInput.fromJson()', () {
    expect(StringInput.fromJson(json), input);
  });

  test('StringInput.isValid', () {
    expect(input.isValid, true);
  });

  test('StringInput.valueToJson()', () {
    expect(input.valueToJson(), 'John');
  });
}
