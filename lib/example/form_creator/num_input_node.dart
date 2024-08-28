import 'package:wo_form/wo_form.dart';

WoFormNodeMixin createNumInputNode() => ValueBuilderNode(
      id: 'labelText-builder',
      path: './numInput/uiSettings/labelText',
      builder: (value) {
        value as String?;
        return InputsNode(
          id: 'numInput',
          exportSettings: const ExportSettings(
            metadata: {
              'runtimeType': 'num',
            },
          ),
          uiSettings: InputsNodeUiSettings(
            labelText: value ?? 'Saisie de nombre',
            helperText: value == null ? null : 'Saisie de nombre',
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
              id: 'initialValue',
              uiSettings: NumInputUiSettings(
                labelText: 'Valeur par défaut',
              ),
            ),
            const BooleanInput(
              id: 'isRequired',
              uiSettings: BooleanInputUiSettings(
                labelText: 'Doit être renseigné',
                helperText:
                    'Un champ vide ne sera pas accepté. 0 sera accepté.',
              ),
            ),
            const NumInput(
              id: 'minBound',
              initialValue: 0,
              isRequired: true,
              uiSettings: NumInputUiSettings(
                labelText: 'Valeur minimale',
              ),
            ),
            const NumInput(
              id: 'maxBound',
              uiSettings: NumInputUiSettings(
                labelText: 'Valeur maximale',
              ),
            ),
            const InputsNode(
              id: 'uiSettings',
              uiSettings: InputsNodeUiSettings(
                labelText: 'Interface',
                childrenVisibility: ChildrenVisibility.whenAsked,
              ),
              children: [
                StringInput(
                  id: 'labelText',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Titre',
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
