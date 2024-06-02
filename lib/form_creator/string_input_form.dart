import 'package:flutter/material.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/wo_form.dart';

final stringInputForm = WoForm(
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
        const ListInput<String>(id: 'autofillHints'),
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
