import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/readable_json.dart';

class DynamicForm extends WoForm {
  DynamicForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            titleText: 'Formulaire dynamique',
            submitText: 'Done',
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            StringInput(
              id: 'name',
              isRequired: true,
              getCustomError: (value, path) => (value ?? '').isEmpty
                  ? CustomInputError(
                      path: path,
                      message: 'Donne ton prénom !',
                    )
                  : null,
              uiSettings: const StringInputUiSettings(
                labelText: 'Prénom',
                helperText: 'Vous pouvez aussi nous donner votre surnom',
              ),
            ),
            ValueBuilderNode(
              id: 'feeling',
              path: '/name',
              builder: (value) {
                final name = value as String?;
                return StringInput(
                  id: 'feeling',
                  uiSettings: StringInputUiSettings(
                    helperText: 'Le soleil est la lumière de la vie',
                    hintText:
                        "Bonjour ${(name ?? '').isEmpty ? '' : '$name '}! "
                        "Comment allez-vous aujourd'hui ?",
                    maxLines: 5,
                  ),
                );
              },
            ),
            ValueBuilderNode(
              id: 'isMale',
              path: '/name',
              builder: (value) {
                final name = value as String?;
                return BooleanInput(
                  id: 'isMale',
                  uiSettings: BooleanInputUiSettings(
                    labelText: 'Êtes-vous un homme'
                        "${(name ?? '').isEmpty ? '' : ', $name'} ?",
                  ),
                );
              },
            ),
            ValueBuilderNode(
              id: 'age',
              path: '/name',
              builder: (value) {
                final name = value as String?;
                return NumInput(
                  id: 'age',
                  isRequired: true,
                  minBound: 18,
                  getCustomError: (value, path) => value == null || value >= 18
                      ? null
                      : CustomInputError(
                          path: path,
                          message: 'Eh non mon coco y faut être majeur ici !',
                        ),
                  uiSettings: NumInputUiSettings(
                    labelText: 'Quel âge avez-vous'
                        "${(name ?? '').isEmpty ? '' : ', $name'} ?",
                  ),
                );
              },
            ),
            ValueBuilderNode(
              id: 'username',
              path: '/isMale/isMale',
              builder: (value) {
                final isMale = (value as bool?) ?? false;
                return ValueBuilderNode(
                  id: 'username',
                  path: '/name',
                  builder: (value) {
                    final name = value as String?;
                    return SelectInput<num>(
                      id: 'username',
                      availibleValues: [1, 2, 3],
                      toJsonT: (value) => switch (value) {
                        1 => '@${name}_du49',
                        2 =>
                          isMale ? '@${name}_lebOgosse' : '@${name}_labLgosse',
                        3 => '@Official$name',
                        _ => '',
                      },
                      minCount: 1,
                      maxCount: 1,
                      getCustomError: (values, path) => values.isNotEmpty
                          ? null
                          : CustomInputError(
                              path: path,
                              message: 'Bah alors ? On veut pas de pseudo ?',
                            ),
                      uiSettings: SelectInputUiSettings(
                        labelText: 'Choisissez votre pseudo',
                        valueBuilder: (value) => Text(
                          switch (value) {
                            1 => '@${name}_du49',
                            2 => isMale
                                ? '@${name}_lebOgosse'
                                : '@${name}_labLgosse',
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
              path: '/name',
              builder: (value) {
                final name = value as String?;
                return BooleanInput(
                  id: 'acceptConditions',
                  isRequired: true,
                  getCustomError: (value, path) => value == true
                      ? null
                      : CustomInputError(
                          path: path,
                          message: 'Eh $name ! '
                              'Tu as oublié les conditions météorologiques !',
                        ),
                  uiSettings: const BooleanInputUiSettings(
                    labelText:
                        "J'ai lu et j'accepte les conditions météorologiques",
                    controlType: BooleanFieldControlType.checkbox,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                );
              },
            ),
          ],
          onSubmitSuccess: showJsonDialog,
        );
}
