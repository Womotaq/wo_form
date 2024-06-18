import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      themeBuilder: (context) => Theme.of(context).copyWith(
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          linearTrackColor: Colors.transparent,
        ),
      ),
      canModifySubmittedValues: false,
      uiSettings: WoFormUiSettings(
        showAsteriskIfRequired: false,
        submitMode: const PageByPageSubmitMode(
          submitText: 'Terminer',
        ),
        submitButtonBuilder: (data) => Builder(
          builder: (context) {
            final form = context.read<WoForm>();
            final currentInput = form.inputs[data.pageIndex];

            final inputIsLocked = context.select(
              (WoFormLockCubit c) =>
                  c.inputIsLocked(inputPath: '/${currentInput.id}'),
            );

            return [0, 2].contains(data.pageIndex) && !inputIsLocked
                ? const SizedBox.shrink()
                : SubmitButton(data: data);
          },
        ),
      ),
      inputs: [
        const InputsNode(
          id: 'q1',
          uiSettings: InputsNodeUiSettings(
            labelText: 'De quelle couleur est le soleil ?',
          ),
          inputs: [
            // TODO : WidgetNode(),
            SelectStringInput(
              id: 'q1',
              maxCount: 1,
              minCount: 1,
              availibleValues: ['Bleu', 'Rouge', 'Vert', 'Jaune'],
              uiSettings: SelectInputUiSettings(
                hintText: 'Sélectionner une réponse',
                displayMode: SelectFieldDisplayMode.chip,
                submitFormOnSelect: true,
              ),
            ),
          ],
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
            submitFormOnSelect: true,
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
        const NumInput(
          id: 'q3',
          defaultValue: 0,
          isRequired: true,
          uiSettings: NumInputUiSettings(
            labelText: 'Quel est le record du monde de jonglage, '
                'avec un ballon de foot, sans interruption ?',
          ),
        ),
        ValueBuilderNode(
          id: 'a3',
          inputPath: '../q3',
          builder: (id, value) {
            final answer = value as num?;
            return InputsNode(
              id: id,
              uiSettings: InputsNodeUiSettings(
                labelText: answer == 170515 ? 'Bonne réponse !' : 'Dommage...',
                helperText:
                    'Le record du monde actuel de jonglage avec un ballon de '
                    "football est détenu par l'athlète japonais Yuki Kadono. "
                    'En 2018, il a réalisé 170 515 jongles en une seule '
                    'session, battant ainsi le record précédent qui était de '
                    '170 405 jongles. Ce record a été officiellement '
                    'enregistré par Guinness World Records.',
              ),
            );
          },
        ),
        const StringInput(
          id: 'q4',
          isRequired: true,
          uiSettings: StringInputUiSettings(
            labelText: 'Quel est votre prénom ?',
          ),
        ),
        const InputsNode(
          id: 'r4',
          uiSettings: InputsNodeUiSettings(
            labelText: 'Bonne réponse !',
            helperText:
                'Un prénom est personnel, propre à chacun et sale aux autres.',
          ),
        ),
        const BooleanInput(
          id: 'q5',
          uiSettings: BooleanInputUiSettings(
            labelText:
                "J'ai vu et je reconnais que le package wo_form est un package"
                ' extraordinaire et très utile.',
            controlType: BooleanFieldControlType.checkbox,
          ),
        ),
        ValueBuilderNode(
          id: 'r5',
          inputPath: '../q5',
          builder: (id, value) {
            final answer = value as bool?;
            return InputsNode(
              id: id,
              uiSettings: InputsNodeUiSettings(
                labelText: answer == true
                    ? 'Bonne réponse !'
                    : 'Il va falloir mettre des lunettes',
                helperText:
                    'Le package wo_form vous permet tout ce dont vous avez '
                    "besoin pour tout type de formulaire, de l'éditeur au "
                    'questionnaire, en fournissant des fonctionnalités '
                    'avancées telles que le thème, les champs dynamiques, '
                    'la jsonification...',
              ),
            );
          },
        ),
      ],
    ).toPage(onSubmitted: showJsonDialog);
  }
}
