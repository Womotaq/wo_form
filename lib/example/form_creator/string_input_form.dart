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
      ),
    ),
    const StringInput(
      id: 'value',
      fieldSettings: StringFieldSettings(
        labelText: 'Valeur par défaut',
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
      availibleValues: RegexPattern.values,
      maxCount: 1,
      fieldSettings: const SelectFieldSettings(
        labelText: 'Regex pattern',
        displayMode: SelectFieldDisplayMode.selectChip,
      ),
      toJsonT: (regex) => regex.value,
    ),
    InputsNode(
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
        const StringInput(
          id: 'hintText',
          fieldSettings: StringFieldSettings(
            labelText: 'Aide',
          ),
        ),
        const SelectInput<StringFieldAction>(
          id: 'action',
          availibleValues: StringFieldAction.values,
          maxCount: 1,
          fieldSettings: SelectFieldSettings(
            labelText: 'Action à droite du champ',
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
          availibleValues: TextInputType.values,
          maxCount: 1,
          fieldSettings: const SelectFieldSettings(
            labelText: 'Type de text',
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
        const SelectStringInput(
          id: 'autofillHints',
          availibleValues: AutofillHintsX.all,
          maxCount: null,
          fieldSettings: SelectFieldSettings(
            labelText: 'Auto-remplissage',
          ),
        ),
        const BooleanInput(
          id: 'autofocus',
          fieldSettings: BooleanFieldSettings(
            labelText: 'Auto-focus',
          ),
        ),
        const SelectInput<TextInputAction>(
          id: 'textInputAction',
          availibleValues: TextInputAction.values,
          maxCount: 1,
          fieldSettings: SelectFieldSettings(
            labelText: "Bouton 'Entrée' du clavier",
            displayMode: SelectFieldDisplayMode.selectChip,
          ),
        ),
        const SelectInput<TextCapitalization>(
          id: 'textCapitalization',
          availibleValues: TextCapitalization.values,
          maxCount: 1,
          fieldSettings: SelectFieldSettings(
            labelText: 'Gestion des majuscules',
            // displayMode: SelectFieldDisplayMode.selectChip,
          ),
        ),
        const NumInput(
          id: 'maxLines',
          fieldSettings: NumFieldSettings(
            labelText: 'Nombre maximum de lignes',
          ),
        ),
        const StringInput(
          id: 'invalidRegexMessage',
          fieldSettings: StringFieldSettings(
            labelText: 'Message en cas de regex invalide',
          ),
        ),
      ],
    ),
  ],
  unmodifiableValuesJson: {
    'runtimeType': 'string',
  },
);
