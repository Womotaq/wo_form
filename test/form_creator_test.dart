import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:wo_form/src/_export.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
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
      InputsListInput(
        id: 'fieldSettings',
        value: [
          const StringInput(id: 'labelText'),
          const SelectInput<StringFieldAction>(id: 'action'),
          const BooleanInput(id: 'submitFormOnFieldSubmitted'),
          SelectInput<TextInputType>(
            id: 'keyboardType',
            toJsonT: (value) => const TextInputTypeConverter().toJson(value),
          ),
          const BooleanInput(id: 'obscureText'),
          const BooleanInput(id: 'autocorrect'),
          ListInput<String>(
            id: 'autofillHints',
            toJsonT: (value) => value, // TODO : supported type by default
          ),
          const BooleanInput(id: 'autofocus'),
          const SelectInput<TextInputAction>(id: 'textInputAction'),
          const SelectInput<TextCapitalization>(id: 'textCapitalization'),
          const NumInput(id: 'maxLines'),
          const StringInput(id: 'hintText'),
          const StringInput(id: 'invalidRegexMessage'),
        ],
      ),
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
      ..update(
        'fieldSettings',
        (i) => (i as InputsListInput).copyWith(
          value: List<WoFormInputMixin>.from(i.value ?? []).map(
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
