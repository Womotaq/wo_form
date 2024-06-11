import 'package:flutter/material.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      uiSettings: const WoFormUiSettings(
        submitText: 'Terminer',
        submitMode: WoFormSubmitMode.submitIfValid,
        displayMode: WoFormDisplayMode.pages(
          nextText: 'Répondre',
        ),
      ),
      inputs: [
        const SelectStringInput(
          id: 'q1',
          maxCount: 1,
          minCount: 1,
          availibleValues: ['Bleu', 'Rouge', 'Vert', 'Jaune'],
          uiSettings: SelectInputUiSettings(
            labelText: 'De quelle couleur est le soleil ?',
            displayMode: SelectFieldDisplayMode.tile,
            // TODO : nullValueText
          ),
        ),
        ValueBuilderNode(
          id: 'a1',
          inputPath: '../q1',
          builder: (id, value) {
            final answer = (value as List<String>?)?.firstOrNull;
            return InputsNode(
              id: id,
              uiSettings: InputsNodeUiSettings(
                labelText: answer == 'Jaune' ? 'Bonne réponse !' : 'Dommage...',
                helperText: 'Le Soleil est une étoile comme celles qu’on voit'
                    ' briller la nuit, mais c’est la plus proche de la Terre.'
                    ' Une étoile est une énorme boule de gaz très chaud, qui'
                    ' produit énormément d’énergie. Et cette énergie émerge'
                    ' de la surface sous forme de lumière.',
              ),
            );
          },
        ),
        SelectStringInput(
          id: 'q2',
          maxCount: 1,
          minCount: 1,
          availibleValues: [
            'A',
            'B',
            'C',
          ],
          uiSettings: SelectInputUiSettings(
            labelText: "Quelle est l'hypothénuse de x ?",
            displayMode: SelectFieldDisplayMode.tile,
            valueBuilder: (value) => Text(
              switch (value) {
                'A' => '√2',
                'B' => '0',
                'C' => 'Elle veut rien dire ta question',
                _ => 'Elle veut rien dire ta question',
              },
            ),
          ),
        ),
        ValueBuilderNode(
          id: 'a2',
          inputPath: '../q2',
          builder: (id, value) {
            final answer = (value as List<String>?)?.firstOrNull;
            return InputsNode(
              id: id,
              uiSettings: InputsNodeUiSettings(
                labelText: answer == 'C' ? 'Bonne réponse !' : 'Dommage...',
                helperText: "L'hypothénuse est en réalité la face cachée de la "
                    'Lune...',
              ),
            );
          },
        ),
      ],
    ).toPage(onSubmitted: showJsonDialog);
  }
}
