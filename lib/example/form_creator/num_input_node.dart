import 'package:wo_form/wo_form.dart';

InputsNode createNumInputNode({required String id}) => InputsNode(
      id: id,
      uiSettings: const InputsNodeUiSettings(
        labelText: 'Saisie de nombre',
        helperText: 'Demandez un nombre.',
      ),
      inputs: const [
        StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringInputUiSettings(
            labelText: 'Clef json',
          ),
        ),
        NumInput(
          id: 'defaultValue',
          uiSettings: NumInputUiSettings(
            labelText: 'Valeur par défaut',
          ),
        ),
        BooleanInput(
          id: 'isRequired',
          uiSettings: BooleanInputUiSettings(
            labelText: 'Doit être renseigné',
            helperText: 'Un champ vide ne sera pas accepté. 0 sera accepté.',
          ),
        ),
        NumInput(
          id: 'minBound',
          defaultValue: 0,
          isRequired: true,
          uiSettings: NumInputUiSettings(
            labelText: 'Valeur minimale',
          ),
        ),
        NumInput(
          id: 'maxBound',
          uiSettings: NumInputUiSettings(
            labelText: 'Valeur maximale',
          ),
        ),
        InputsNode(
          id: 'uiSettings',
          uiSettings: InputsNodeUiSettings(
            labelText: 'Interface',
            displayMode: NodeDisplayMode.expansionTile,
          ),
          inputs: [
            StringInput(
              id: 'labelText',
              uiSettings: StringInputUiSettings(
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
