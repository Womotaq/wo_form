import 'package:wo_form/wo_form.dart';

InputsNode createNumInputNode() => const InputsNode(
      id: 'numInput',
      uiSettings: InputsNodeUiSettings(
        labelText: 'Saisie de nombre',
        inputsVisibility: InputsVisibility.whenAsked,
      ),
      inputs: [
        StringInput(
          id: 'id',
          isRequired: true,
          uiSettings: StringInputUiSettings(
            labelText: 'Clef json',
            autofocus: true,
          ),
        ),
        NumInput(
          id: 'initialValue',
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
          initialValue: 0,
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
            inputsVisibility: InputsVisibility.whenAsked,
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
      exportSettings: ExportSettings(
        exportedMetadata: {
          'runtimeType': 'num',
        },
      ),
    );
