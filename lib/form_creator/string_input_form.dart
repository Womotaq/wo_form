import 'package:flutter/material.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/wo_form.dart';

final stringInputForm = WoForm(
  inputs: [
    const StringInput(
      id: 'id',
      isRequired: true,
      fieldSettings: StringFieldSettings(
        labelText: 'Clef',
        // hintText: 'La clef du json',
      ),
    ),
    const StringInput(
      id: 'value',
      fieldSettings: StringFieldSettings(
        labelText: 'Valeur par défaut',
        // hintText: 'Votre utilisateur pourra modifier ce champ.',
      ),
    ),
    const BooleanInput(
      id: 'isRequired',
      fieldSettings: BooleanFieldSettings(
        labelText: 'Requis',
      ),
    ),
    SelectInput(
      id: 'regexPattern',
      fieldSettings: const SelectFieldSettings(
        labelText: 'Regex pattern',
        values: RegexPattern.values,
        displayMode: SelectFieldDisplayMode.selectChip,
      ),
      toJsonT: (regex) => regex.value,
    ),
    InputsListInput(
      id: 'fieldSettings',
      fieldSettings: const MapFieldSettings(
        labelText: 'Interface',
      ),
      value: [
        const StringInput(
          id: 'labelText',
          fieldSettings: StringFieldSettings(
            labelText: 'Titre',
          ),
        ),
        const SelectInput<StringFieldAction>(
          id: 'action',
          fieldSettings: SelectFieldSettings(
            labelText: 'Action spéciale',
            values: StringFieldAction.values,
            displayMode: SelectFieldDisplayMode.selectChip,
          ),
        ),
        const BooleanInput(
          id: 'submitFormOnFieldSubmitted',
          fieldSettings: BooleanFieldSettings(
            labelText: 'Envoyer le formulaire quand le champ est validé',
          ),
        ),
        SelectInput<TextInputType>(
          id: 'keyboardType',
          fieldSettings: const SelectFieldSettings(
            labelText: 'Type de text',
            values: TextInputType.values,
            displayMode: SelectFieldDisplayMode.selectChip,
          ),
          toJsonT: (value) => const TextInputTypeConverter().toJson(value),
        ),
        const BooleanInput(
          id: 'obscureText',
          fieldSettings: BooleanFieldSettings(
            labelText: 'Cacher le texte',
          ),
        ),
        const BooleanInput(
          id: 'autocorrect',
          fieldSettings: BooleanFieldSettings(
            labelText: "Autoriser l'auto-correction",
          ),
        ),
        const ListInput<String>(
          id: 'autofillHints',
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
