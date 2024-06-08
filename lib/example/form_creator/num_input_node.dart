import 'package:wo_form/wo_form.dart';

InputsNode createNumInputNode({required String id}) => InputsNode(
      id: id,
      uiSettings: const NodeWidgetSettings(
        labelText: 'NumInput',
      ),
      inputs: const [
        StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringFieldSettings(
            labelText: 'Clef',
          ),
        ),
        NumInput(
          id: 'defaultValue',
          uiSettings: NumFieldSettings(
            labelText: 'Valeur par défaut',
          ),
        ),
        BooleanInput(
          id: 'isRequired',
          uiSettings: BooleanFieldSettings(
            labelText: 'Doit être renseigné',
          ),
        ),
        NumInput(
          id: 'minBound',
          defaultValue: 0,
          isRequired: true,
          uiSettings: NumFieldSettings(
            labelText: 'Valeur minimale',
          ),
        ),
        NumInput(
          id: 'maxBound',
          uiSettings: NumFieldSettings(
            labelText: 'Valeur maximale',
          ),
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: NodeWidgetSettings(
            labelText: 'Interface',
            displayMode: NodeDisplayMode.tile,
          ),
          inputs: [
            StringInput(
              id: 'labelText',
              uiSettings: StringFieldSettings(
                labelText: 'Titre',
              ),
            ),
          ],
        ),
      ],
      unmodifiableValuesJson: {
        'runtimeType': 'num',
      },
    );
