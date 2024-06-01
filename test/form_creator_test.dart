import 'package:test/test.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  final expectedInput = StringInput(
    id: 'name',
    isRequired: true,
    regexPattern: RegexPattern.username.value,
    // fieldSettings: StringFieldSettings(
    //   invalidRegexMessage: FormLocalizationsFr()
    //       .regexPatternUnmatched(RegexPattern.username.name),
    // ),
  );
  final expectedInputToJson = {
    'id': 'name',
    'value': '',
    'isRequired': true,
    'regexPattern': RegexPattern.username.value,
    'runtimeType': 'string',
  };
  final inputForm = WoForm(
    inputs: [
      const StringInput(id: 'id', isRequired: true),
      const StringInput(id: 'value'),
      const BooleanInput(id: 'isRequired'),
      SelectInput(
        id: 'regexPattern',
        fieldSettings: const SelectFieldSettings(
          values: RegexPattern.values,
        ),
        toJsonT: (regex) => regex.value,
      ),
      // const StringInput(id: 'invalidRegexMessage'),
    ],
    unmodifiableValuesJson: {
      'runtimeType': 'string',
    },
  );
  final filledInputForm = inputForm.copyWith(
    inputsMap: Map.from(inputForm.inputsMap)
      ..update(
        'id',
        (i) => (i as StringInput).copyWith(value: expectedInput.id),
      )
      ..update(
        'value',
        (i) => (i as StringInput).copyWith(value: expectedInput.value),
      )
      ..update(
        'isRequired',
        (i) => (i as BooleanInput).copyWith(value: expectedInput.isRequired),
      )
      ..update(
        'regexPattern',
        (i) => (i as SelectInput).copyWith(value: RegexPattern.username),
      )
    // ..update(
    //   'invalidRegexMessage',
    //   (i) => (i as StringInput).copyWith(
    //     value: expectedInput.fieldSettings.invalidRegexMessage ?? '',
    //   ),
    // )
    ,
  );

  test('StringInput Creator : Step 0', () {
    expect(filledInputForm.isValid, true);
  });

  test('StringInput Creator : Step 1', () {
    expect(filledInputForm.valuesToJson(), expectedInputToJson);
  });

  test('StringInput Creator : Step 2', () {
    final form = WoForm.fromJson({
      'inputs': [expectedInputToJson],
    });
    expect(form, WoForm(inputs: [expectedInput]));
  });
}
