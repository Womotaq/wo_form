import 'package:flutter/material.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/wo_form.dart';

InputsNode createStringInputNode({String id = 'stringInput'}) => InputsNode(
      id: id,
      uiSettings: const NodeFieldSettings(
        labelText: 'StringInput',
      ),
      inputs: [
        const StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringFieldSettings(
            labelText: 'Clef',
          ),
        ),
        const StringInput(
          id: 'defaultValue',
          uiSettings: StringFieldSettings(
            labelText: 'Valeur par défaut',
          ),
        ),
        const BooleanInput(
          id: 'isRequired',
          uiSettings: BooleanFieldSettings(
            labelText: 'Requis',
          ),
        ),
        SelectInput(
          id: 'regexPattern',
          availibleValues: RegexPattern.values,
          maxCount: 1,
          uiSettings: const SelectFieldSettings(
            labelText: 'Regex pattern',
            displayMode: SelectFieldDisplayMode.selectChip,
          ),
          toJsonT: (regex) => regex.value,
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: const NodeFieldSettings(
            labelText: 'Interface',
          ),
          inputs: [
            const StringInput(
              id: 'labelText',
              uiSettings: StringFieldSettings(
                labelText: 'Titre',
              ),
            ),
            const StringInput(
              id: 'hintText',
              uiSettings: StringFieldSettings(
                labelText: 'Aide',
              ),
            ),
            const SelectInput<StringFieldAction>(
              id: 'action',
              availibleValues: StringFieldAction.values,
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Action à droite du champ',
                displayMode: SelectFieldDisplayMode.selectChip,
              ),
            ),
            const BooleanInput(
              id: 'submitFormOnFieldSubmitted',
              uiSettings: BooleanFieldSettings(
                labelText: 'Envoyer le formulaire quand le champ est validé',
              ),
            ),
            SelectInput<TextInputType>(
              id: 'keyboardType',
              availibleValues: TextInputType.values,
              maxCount: 1,
              uiSettings: const SelectFieldSettings(
                labelText: 'Type de text',
                displayMode: SelectFieldDisplayMode.selectChip,
              ),
              toJsonT: (value) => const TextInputTypeConverter().toJson(value),
            ),
            const BooleanInput(
              id: 'obscureText',
              uiSettings: BooleanFieldSettings(
                labelText: 'Cacher le texte',
              ),
            ),
            const BooleanInput(
              id: 'autocorrect',
              uiSettings: BooleanFieldSettings(
                labelText: "Autoriser l'auto-correction",
              ),
            ),
            const SelectStringInput(
              id: 'autofillHints',
              availibleValues: AutofillHintsX.all,
              maxCount: null,
              uiSettings: SelectFieldSettings(
                labelText: 'Auto-remplissage',
              ),
            ),
            const BooleanInput(
              id: 'autofocus',
              uiSettings: BooleanFieldSettings(
                labelText: 'Auto-focus',
              ),
            ),
            const SelectInput<TextInputAction>(
              id: 'textInputAction',
              availibleValues: TextInputAction.values,
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: "Bouton 'Entrée' du clavier",
                displayMode: SelectFieldDisplayMode.selectChip,
              ),
            ),
            const SelectInput<TextCapitalization>(
              id: 'textCapitalization',
              availibleValues: TextCapitalization.values,
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Gestion des majuscules',
                // displayMode: SelectFieldDisplayMode.selectChip,
              ),
            ),
            const NumInput(
              id: 'maxLines',
              uiSettings: NumFieldSettings(
                labelText: 'Nombre maximum de lignes',
              ),
            ),
            const StringInput(
              id: 'invalidRegexMessage',
              uiSettings: StringFieldSettings(
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
