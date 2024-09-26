import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

WoFormNodeMixin createSelectStringInputNode() => ValueBuilderNode(
      id: 'labelText-builder',
      path: './selectStringInput/uiSettings/labelText',
      builder: (value) {
        value as String?;
        return InputsNode(
          id: 'selectStringInput',
          exportSettings: const ExportSettings(
            metadata: {
              'runtimeType': 'selectString',
            },
          ),
          uiSettings: InputsNodeUiSettings(
            labelText: value ?? 'Choix de texte',
            helperText: value == null ? null : 'Choix de texte',
            childrenVisibility: ChildrenVisibility.whenAsked,
          ),
          children: [
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
                childrenVisibility: ChildrenVisibility.always,
              ),
              children: [
                InputsNode(
                  id: 'uiSettings-More',
                  exportSettings: const ExportSettings(
                    type: ExportType.mergeWithParent,
                  ),
                  uiSettings: const InputsNodeUiSettings(
                    labelText: 'Interface',
                    childrenVisibility: ChildrenVisibility.whenAsked,
                  ),
                  children: [
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
                    SelectInput<ChildrenVisibility?>(
                      id: 'childrenVisibility',
                      initialValues: [ChildrenVisibility.always],
                      availibleValues: ChildrenVisibility.values,
                      minCount: 1,
                      maxCount: 1,
                      uiSettings: SelectInputUiSettings(
                        labelText: 'Visibilité des options',
                        valueBuilder: (value) => Text(
                          switch (value) {
                            null => "Sélectionnez un type d'affichage",
                            ChildrenVisibility.whenAsked =>
                              'Cliquer pour voir les options',
                            ChildrenVisibility.always =>
                              'Toujours voir les options',
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
            DynamicInputsNode(
              id: 'availibleValues',
              exportSettings: const ExportSettings(type: ExportType.list),
              templates: [
                DynamicInputTemplate(
                  child: const StringInput(
                    id: '', // will be overwritten
                    isRequired: true,
                    uiSettings: StringInputUiSettings(
                      labelText: 'Valeur',
                      autofocus: true,
                    ),
                  ),
                ),
              ],
              uiSettings: const DynamicInputsNodeUiSettings(
                labelText: 'Ajouter une option',
              ),
            ),
          ],
        );
      },
    );
