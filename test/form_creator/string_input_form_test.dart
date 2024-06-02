import 'package:test/test.dart';
import 'package:wo_form/form_creator/form_creator/string_input_form.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/wo_form.dart';

void main() {
  final expectedInput = StringInput(
    id: 'name',
    isRequired: true,
    regexPattern: RegexPattern.username.value,
    fieldSettings: StringFieldSettings(
      invalidRegexMessage: FormLocalizationsFr()
          .regexPatternUnmatched(RegexPattern.username.name),
    ),
  );
  final expectedInputToJson = expectedInput.toJson();
  final filledInputForm = stringInputForm.copyWith(
    inputsMap: Map.from(stringInputForm.inputsMap)
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
        (i) => (i as SelectInput)
            .copyWith(selectedValues: [RegexPattern.username]),
      )
      ..update(
        'fieldSettings',
        (i) => (i as InputsListInput).copyWith(
          value: List<WoFormInputMixin>.from(i.value).map(
            (fsInput) {
              if (fsInput.id == 'invalidRegexMessage') {
                return (fsInput as StringInput).copyWith(
                  value: expectedInput.fieldSettings.invalidRegexMessage ?? '',
                );
              }
              return fsInput;
            },
          ).toList(),
        ),
      ),
  );

  test('StringInput Form : Step 0', () {
    expect(filledInputForm.isValid, true);
  });

  test('StringInput Form : Step 1', () {
    expect(filledInputForm.valuesToJson(), expectedInputToJson);
  });

  test('StringInput Form : Step 2', () {
    expect(
      WoForm.fromJson({
        'inputs': [expectedInputToJson],
      }),
      WoForm(
        inputs: [expectedInput],
      ),
    );
  });
}
