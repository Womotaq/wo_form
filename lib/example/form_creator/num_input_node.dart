import 'package:wo_form/wo_form.dart';

const numInputNode = InputsNode(
  id: 'numInput',
  fieldSettings: MapFieldSettings(
    labelText: 'NumInput',
  ),
  inputs: [
    StringInput(
      id: 'id',
      isRequired: true,
      fieldSettings: StringFieldSettings(
        labelText: 'Clef',
      ),
    ),
    NumInput(
      id: 'defaultValue',
      fieldSettings: NumFieldSettings(
        labelText: 'Valeur par défaut',
      ),
    ),
    BooleanInput(
      id: 'isRequired',
      fieldSettings: BooleanFieldSettings(
        labelText: 'Requis',
      ),
    ),
    InputsNode(
      id: 'fieldSettings',
      fieldSettings: MapFieldSettings(
        labelText: 'Interface',
      ),
      inputs: [
        StringInput(
          id: 'labelText',
          fieldSettings: StringFieldSettings(
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
