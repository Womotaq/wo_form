import 'package:flutter/material.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/wo_form.dart';

InputsNode createStringInputNode({required String id}) => InputsNode(
      id: id,
      uiSettings: const InputsNodeWidgetSettings(
        labelText: 'Saisie de texte',
      ),
      inputs: [
        const StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringFieldSettings(
            labelText: 'Id',
            helperText: 'Ceci sera la clef associée à la réponse de votre '
                "utilisateur, dans le json qu'il produira.",
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
            labelText: 'Doit être renseigné',
            helperText: 'Un texte vide ne sera pas accepté.',
          ),
        ),
        SelectInput<RegexPattern?>(
          id: 'regexPattern',
          availibleValues: [null, ...RegexPattern.values],
          maxCount: 1,
          uiSettings: SelectFieldSettings(
            labelText: 'Doit correspondre à',
            displayMode: SelectFieldDisplayMode.chip,
            valueBuilder: (regex) => Text(
              switch (regex) {
                null => 'Peu importe',
                RegexPattern.email => 'Une adresse mail',
                RegexPattern.password => 'Un mot de passe',
                RegexPattern.username => "Un nom d'utilisateur",
              },
            ),
          ),
          toJsonT: (regex) => regex?.value,
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: const InputsNodeWidgetSettings(
            labelText: 'Interface',
            displayMode: NodeDisplayMode.tile,
          ),
          inputs: [
            const StringInput(
              id: 'labelText',
              uiSettings: StringFieldSettings(
                labelText: 'Titre',
              ),
            ),
            const StringInput(
              id: 'helperText',
              uiSettings: StringFieldSettings(
                labelText: 'Sous-titre',
                helperText: 'Ceci sera affiché en dessous du champ.',
              ),
            ),
            const StringInput(
              id: 'hintText',
              uiSettings: StringFieldSettings(
                labelText: 'Aide',
                hintText: "Ceci est un message d'aide",
                helperText: 'Ceci sera affiché dans le champ.',
              ),
            ),
            SelectInput<StringFieldAction?>(
              id: 'action',
              availibleValues: [null, ...StringFieldAction.values],
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Action spéciale (à droite)',
                displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(
                  switch (value) {
                    null => 'Aucune',
                    StringFieldAction.clear => 'Tout effacer',
                    StringFieldAction.obscure => 'Cacher/Afficher le texte',
                  },
                ),
              ),
            ),
            const BooleanInput(
              id: 'submitFormOnFieldSubmitted',
              uiSettings: BooleanFieldSettings(
                labelText: 'Envoyer le formulaire quand le champ est validé',
                helperText: "Par exemple, lorsque l'utilisateur presse "
                    '"Entrée".',
              ),
            ),
            SelectInput<TextInputType>(
              id: 'keyboardType',
              defaultValues: [TextInputType.text],
              availibleValues: TextInputType.values,
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Clavier optimisé pour écrire',
                helperText: 'Seulement sur mobile.',
                displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(
                  switch (value?.name) {
                    'multiline' => 'Du texte à plusieurs lignes',
                    'number' => 'Un nombre',
                    'phone' => 'Un numéro de téléphone',
                    'datetime' => 'Une date',
                    'emailAddress' => 'Une adresse mail',
                    'url' => 'Une url',
                    'visiblePassword' => 'Un mot de passe',
                    'name' => "Le nom d'une personne",
                    'address' => 'Une adresse postale',
                    'none' => 'Ne pas afficher le clavier',
                    _ => 'Du texte',
                  },
                ),
                helpValueBuilder: (value) => switch (value.name) {
                  'datetime' => const Text(
                      'Sur Android, donne accès aux touches ":" et "-".',
                    ),
                  'emailAddress' => const Text(
                      'Donne accès aux touches "@" et ".".',
                    ),
                  'url' => const Text(
                      'Donne accès aux touches "/" et ".".',
                    ),
                  'visiblePassword' => const Text(
                      'Donne accès aux lettres et aux chiffres',
                    ),
                  _ => null,
                },
              ),
              toJsonT: (value) => const TextInputTypeConverter().toJson(value),
            ),
            const BooleanInput(
              id: 'obscureText',
              uiSettings: BooleanFieldSettings(
                labelText: 'Cacher le text ••••',
              ),
            ),
            const BooleanInput(
              id: 'autocorrect',
              defaultValue: true,
              uiSettings: BooleanFieldSettings(
                labelText: 'Correction automatique',
              ),
            ),
            const SelectStringInput(
              id: 'autofillHints',
              availibleValues: AutofillHintsX.all,
              maxCount: null,
              uiSettings: SelectFieldSettings(
                labelText: 'Saisie automatique',
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
                labelText: "Bouton 'Entrée' (sur mobile)",
                displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(value?.name ?? 'Défaut'),
              ),
            ),
            SelectInput<TextCapitalization>(
              id: 'textCapitalization',
              defaultValues: [TextCapitalization.sentences],
              availibleValues: TextCapitalization.values,
              maxCount: 1,
              uiSettings: SelectFieldSettings(
                labelText: 'Mettre le clavier en majuscule',
                displayMode: SelectFieldDisplayMode.chip,
                valueBuilder: (value) => Text(
                  switch (value) {
                    null || TextCapitalization.none => 'Jamais',
                    TextCapitalization.words => 'À chaque début de mot',
                    TextCapitalization.sentences => 'À chaque début de phrase',
                    TextCapitalization.characters => 'À chaque caractère',
                  },
                ),
              ),
            ),
            const NumInput(
              id: 'maxLines',
              defaultValue: 1,
              uiSettings: NumFieldSettings(
                labelText: 'Nombre de lignes',
                helperText: "Pour que le champ s'adapte à la hauteur du texte, "
                    'laissez vide.',
              ),
            ),
            ValueBuilderNode(
              id: 'invalidRegexMessage',
              inputPath: '../../regexPattern',
              builder: (id, value) {
                final regex = (value as List<RegexPattern?>?)?.firstOrNull;
                return StringInput(
                  id: 'invalidRegexMessage',
                  defaultValue: switch (regex) {
                    null => null,
                    _ =>
                      FormLocalizationsFr().regexPatternUnmatched(regex.name),
                  },
                  uiSettings: const StringFieldSettings(
                    labelText: 'Message en cas de regex invalide',
                  ),
                );
              },
            ),
          ],
        ),
      ],
      unmodifiableValuesJson: {
        'runtimeType': 'string',
      },
    );
