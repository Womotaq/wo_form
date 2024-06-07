import 'package:wo_form/wo_form.dart';

InputsNode createNumInputNode({String id = 'numInput'}) => InputsNode(
      id: id,
      uiSettings: const NodeFieldSettings(
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
            labelText: 'Requis',
          ),
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: NodeFieldSettings(
            labelText: 'Interface',
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
