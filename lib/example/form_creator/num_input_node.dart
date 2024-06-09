import 'package:wo_form/wo_form.dart';

InputsNode createNumInputNode({required String id}) => InputsNode(
      id: id,
      uiSettings: const InputsNodeWidgetSettings(
        labelText: 'Saisie de nombre',
        helperText: 'Demandez un nombre.',
      ),
      inputs: const [
        StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringFieldSettings(
            labelText: 'Clef json',
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
            helperText: 'Un champ vide ne sera pas accepté. 0 sera accepté.',
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
          uiSettings: InputsNodeWidgetSettings(
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
