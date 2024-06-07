import 'package:flutter/material.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/wo_form.dart';

InputsNode createStringInputNode({required String id}) => InputsNode(
      id: id,
      uiSettings: const NodeWidgetSettings(
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
        SelectInput<RegexPattern?>(
          id: 'regexPattern',
          availibleValues: [null, ...RegexPattern.values],
          maxCount: 1,
          uiSettings: SelectFieldSettings(
            labelText: 'Regex pattern',
            displayMode: SelectFieldDisplayMode.chip,
            valueBuilder: (regex) => Text(regex?.name ?? 'Aucun'),
          ),
          toJsonT: (regex) => regex?.value,
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: const NodeWidgetSettings(
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
            SelectInput<StringFieldAction?>(
              id: 'action',
              availibleValues: [null, ...StringFieldAction.values],
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Action à droite du champ',
                displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(value?.name ?? 'Aucune'),
              ),
            ),
            const BooleanInput(
              id: 'submitFormOnFieldSubmitted',
              uiSettings: BooleanFieldSettings(
                labelText: 'Envoyer le formulaire quand le champ est validé',
              ),
            ),
            SelectInput<TextInputType?>(
              id: 'keyboardType',
              availibleValues: [null, ...TextInputType.values],
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Type de text',
                displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(value?.name ?? 'Défaut'),
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
            SelectInput<TextInputAction?>(
              id: 'textInputAction',
              availibleValues: [null, ...TextInputAction.values],
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: "Bouton 'Entrée' du clavier",
                displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(value?.name ?? 'Défaut'),
              ),
            ),
            SelectInput<TextCapitalization>(
              id: 'textCapitalization',
              defaultValues: [TextCapitalization.none],
              availibleValues: TextCapitalization.values,
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Gestion des majuscules',
                // displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(value?.name ?? ''),
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
