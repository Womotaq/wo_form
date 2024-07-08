import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

InputsNode createSelectStringInputNode() => InputsNode(
      id: 'selectStringInput',
      uiSettings: const InputsNodeUiSettings(
        labelText: 'Choix de texte',
        inputsVisibility: InputsVisibility.whenAsked,
      ),
      inputs: [
        const StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringInputUiSettings(
            labelText: 'Clef json',
            autofocus: true,
          ),
        ),
        const NumInput(
          id: 'maxCount',
          initialValue: 1,
          minBound: 1,
          isRequired: true,
          uiSettings: NumInputUiSettings(
            labelText: 'Nombre maximum de réponses',
          ),
        ),
        const NumInput(
          id: 'minCount',
          initialValue: 0,
          isRequired: true,
          uiSettings: NumInputUiSettings(
            labelText: 'Nombre minimum de réponses',
          ),
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: const InputsNodeUiSettings(
            inputsVisibility: InputsVisibility.always,
          ),
          inputs: [
            InputsNode(
              id: 'uiSettings-More',
              exportSettings: const ExportSettings(
                exportType: ExportType.list,
              ),
              uiSettings: const InputsNodeUiSettings(
                labelText: 'Interface',
                inputsVisibility: InputsVisibility.whenAsked,
              ),
              inputs: [
                const StringInput(
                  id: 'helperText',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Sous-titre',
                  ),
                ),
                const StringInput(
                  id: 'hintText',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Affichage en cas de valeur nulle',
                  ),
                ),
                SelectInput<InputsVisibility?>(
                  id: 'inputsVisibility',
                  availibleValues: InputsVisibility.values,
                  maxCount: 1,
                  uiSettings: SelectInputUiSettings(
                    labelText: 'Visibilité des options',
                    valueBuilder: (value) => Text(
                      switch (value) {
                        null => "Sélectionnez un type d'affichage",
                        InputsVisibility.whenAsked =>
                          'Cliquer pour voir les options',
                        InputsVisibility.always => 'Toujours voir les options',
                      },
                    ),
                  ),
                ),
              ],
            ),
            const StringInput(
              id: 'labelText',
              uiSettings: StringInputUiSettings(
                labelText: 'Titre',
              ),
            ),
          ],
        ),
        const DynamicInputsNode(
          id: 'availibleValues',
          exportSettings: ExportSettings(exportType: ExportType.list),
          templates: [
            DynamicInputTemplate(
              input: StringInput(
                id: '', // will be overwritten
                isRequired: true,
                uiSettings: StringInputUiSettings(
                  labelText: 'Valeur',
                  autofocus: true,
                ),
              ),
            ),
          ],
          uiSettings: DynamicInputsNodeUiSettings(
            labelText: 'Ajouter une option',
          ),
        ),
      ],
      exportSettings: const ExportSettings(
        exportedMetadata: {
          'runtimeType': 'selectString',
        },
      ),
    );
