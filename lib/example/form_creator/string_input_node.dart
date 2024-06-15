import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/utils/auto_fill_hints.dart';
import 'package:wo_form/example/utils/regex_pattern.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/src/model/json_converter/text_input_type.dart';
import 'package:wo_form/wo_form.dart';

InputsNode createStringInputNode({required String id}) => InputsNode(
      id: id,
      uiSettings: const InputsNodeUiSettings(
        labelText: 'Saisie de texte',
      ),
      inputs: [
        const StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringInputUiSettings(
            labelText: 'Clef json',
          ),
        ),
        const StringInput(
          id: 'defaultValue',
          uiSettings: StringInputUiSettings(
            labelText: 'Valeur par défaut',
          ),
        ),
        const BooleanInput(
          id: 'isRequired',
          uiSettings: BooleanInputUiSettings(
            labelText: 'Doit être renseigné',
            helperText: 'Un texte vide ne sera pas accepté.',
          ),
        ),
        SelectInput<RegexPattern?>(
          id: 'regexPattern',
          availibleValues: [null, ...RegexPattern.values],
          maxCount: 1,
          uiSettings: SelectInputUiSettings(
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
        ValueListenerNode(
          id: 'regexPatternListener',
          inputPath: '../regexPattern',
          listener: (context, parentPath, value) {
            final regex = (value as List<RegexPattern?>?)?.firstOrNull;

            context.read<WoFormValuesCubit>().onValueChanged(
                  inputPath: WoFormElementMixin.getAbsolutePath(
                    parentPath: parentPath,
                    inputPath: '../uiSettings/invalidRegexMessage',
                  ),
                  value: regex == null
                      ? null
                      : FormLocalizationsFr().regexPatternUnmatched(regex.name),
                );
          },
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: const InputsNodeUiSettings(
            labelText: 'Interface',
            displayMode: NodeDisplayMode.expansionTile,
          ),
          inputs: [
            const StringInput(
              id: 'labelText',
              uiSettings: StringInputUiSettings(
                labelText: 'Titre (ceci est un titre)',
              ),
            ),
            const StringInput(
              id: 'helperText',
              uiSettings: StringInputUiSettings(
                labelText: 'Sous-titre',
                helperText: '(ceci est un sous-titre)',
              ),
            ),
            const StringInput(
              id: 'hintText',
              uiSettings: StringInputUiSettings(
                labelText: 'Aide',
                hintText: '(ceci est une aide)',
              ),
            ),
            SelectInput<StringFieldAction?>(
              id: 'action',
              availibleValues: [null, ...StringFieldAction.values],
              maxCount: 1,
              uiSettings: SelectInputUiSettings(
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
              uiSettings: BooleanInputUiSettings(
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
              uiSettings: SelectInputUiSettings(
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
              uiSettings: BooleanInputUiSettings(
                labelText: 'Cacher le text ••••',
              ),
            ),
            const BooleanInput(
              id: 'autocorrect',
              defaultValue: true,
              uiSettings: BooleanInputUiSettings(
                labelText: 'Correction automatique',
              ),
            ),
            SelectStringInput(
              id: 'autofillHints',
              availibleValues: AutofillHintsX.all,
              maxCount: null,
              uiSettings: SelectInputUiSettings(
                labelText: 'Saisie automatique',
                searcher: (query_, value_) {
                  final query = query_.toLowerCase();
                  final value = value_.toLowerCase();
                  if (value.startsWith(query)) return 1;
                  if (value.contains(query)) return .5;
                  return 0;
                },
              ),
            ),
            const BooleanInput(
              id: 'autofocus',
              uiSettings: BooleanInputUiSettings(
                labelText: 'Auto-focus',
              ),
            ),
            SelectInput<TextInputAction?>(
              id: 'textInputAction',
              availibleValues: [null, ...TextInputAction.values],
              maxCount: 1,
              uiSettings: SelectInputUiSettings(
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
              uiSettings: SelectInputUiSettings(
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
              uiSettings: NumInputUiSettings(
                labelText: 'Nombre de lignes',
                helperText: "Pour que le champ s'adapte à la hauteur du texte, "
                    'laissez vide.',
              ),
            ),
            const StringInput(
              id: 'invalidRegexMessage',
              uiSettings: StringInputUiSettings(
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
