import 'package:flutter/material.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class DynamicFormPage extends StatelessWidget {
  const DynamicFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      uiSettings: const WoFormUiSettings(
        titleText: 'Formulaire dynamique',
        submitText: 'Envoyer',
      ),
      inputs: [
        StringInput(
          id: 'name',
          isRequired: true,
          getCustomError: (value) => (value ?? '').isEmpty
              ? const CustomInputError(
                  message: 'Donne ton prénom !',
                )
              : null,
          uiSettings: const StringFieldSettings(
            labelText: 'Prénom',
          ),
        ),
        ValueBuilderNode(
          id: 'feeling',
          inputPath: '/name',
          builder: (id, value) {
            final name = value as String?;
            return StringInput(
              id: id,
              uiSettings: StringFieldSettings(
                hintText: "Bonjour ${(name ?? '').isEmpty ? '' : '$name '}! "
                    "Comment allez-vous aujourd'hui ?",
                maxLines: 5,
              ),
            );
          },
        ),
        ValueBuilderNode(
          id: 'isMale',
          inputPath: '/name',
          builder: (id, value) {
            final name = value as String?;
            return BooleanInput(
              id: id,
              uiSettings: BooleanFieldSettings(
                labelText: 'Êtes-vous un homme'
                    "${(name ?? '').isEmpty ? '' : ', $name'} ?",
              ),
            );
          },
        ),
        ValueBuilderNode(
          id: 'age',
          inputPath: '/name',
          builder: (id, value) {
            final name = value as String?;
            return NumInput(
              id: id,
              isRequired: true,
              minBound: 18,
              getCustomError: (value) => value == null || value >= 18
                  ? null
                  : const CustomInputError(
                      message: 'Eh non mon coco y faut être majeur ici !',
                    ),
              uiSettings: NumFieldSettings(
                labelText: 'Quel âge avez-vous'
                    "${(name ?? '').isEmpty ? '' : ', $name'} ?",
              ),
            );
          },
        ),
        ValueBuilderNode(
          id: 'username',
          inputPath: '/isMale/isMale',
          builder: (id, value) {
            final isMale = (value as bool?) ?? false;
            return ValueBuilderNode(
              id: id,
              inputPath: '/name',
              builder: (id, value) {
                final name = value as String?;
                return SelectInput<num>(
                  id: id,
                  availibleValues: [1, 2, 3],
                  toJsonT: (value) => switch (value) {
                    1 => '@${name}_du49',
                    2 => isMale ? '@${name}_lebOgosse' : '@${name}_labLgosse',
                    3 => '@Official$name',
                    _ => '',
                  },
                  minCount: 1,
                  maxCount: 1,
                  getCustomError: (values) => values.isNotEmpty
                      ? null
                      : const CustomInputError(
                          message: 'Bah alors ? On veut pas de pseudo ?',
                        ),
                  uiSettings: SelectFieldSettings(
                    labelText: 'Choisissez votre pseudo',
                    valueBuilder: (value) => Text(
                      switch (value) {
                        1 => '@${name}_du49',
                        2 =>
                          isMale ? '@${name}_lebOgosse' : '@${name}_labLgosse',
                        3 => '@Official$name',
                        _ => '',
                      },
                    ),
                  ),
                );
              },
            );
          },
        ),
        ValueBuilderNode(
          id: 'acceptConditions',
          inputPath: '/name',
          builder: (id, value) {
            final name = value as String?;
            return BooleanInput(
              id: id,
              isRequired: true,
              getCustomError: (value) => value == true
                  ? null
                  : CustomInputError(
                      message: 'Eh $name ! '
                          'Tu as oublié les conditions météorologiques !',
                    ),
              uiSettings: const BooleanFieldSettings(
                labelText:
                    "J'ai lu et j'accepte les conditions météorologiques",
                onOffType: BooleanFieldOnOffType.checkbox,
              ),
            );
          },
        ),
      ],
    ).toPage(onSubmitted: showJsonDialog);
  }
}
