import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/readable_json.dart';

class QuizForm extends WoForm {
  QuizForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            titleText: 'Daily quiz',
            submitText: 'Done',
            multistepSettings: const MultistepSettings(
              nextText: 'Next',
            ),
            canModifySubmittedValues: false,
            presentation: context.read<PresentationCubit>().state,
            submitButtonBuilder: (data) => Builder(
              builder: (context) {
                final submitButtonBuilder =
                    WoFormTheme.of(context)?.submitButtonBuilder ??
                        SubmitButton.new;

                final path = data.path;
                if (path.isEmpty) return submitButtonBuilder(data);

                final inputIsLocked = context.select(
                  (WoFormLockCubit c) => c.inputIsLocked(path: path),
                );
                if (inputIsLocked) return submitButtonBuilder(data);

                if (path.contains('noSubmitButton')) {
                  return const SizedBox.shrink();
                }

                return submitButtonBuilder(data);
              },
            ),
          ),
          children: [
            InputsNode(
              id: 'q1-page-noSubmitButton',
              exportSettings:
                  const ExportSettings(type: ExportType.mergeWithParent),
              children: [
                WidgetNode(
                  builder: (_) =>
                      const QuizQuestion('De quelle couleur est le soleil ?'),
                ),
                const SelectInput(
                  id: 'q1',
                  maxCount: 1,
                  minCount: 1,
                  availibleValues: ['Bleu', 'Rouge', 'Vert', 'Jaune', 'Blanc'],
                  submitFormOnSelect: true,
                  uiSettings: SelectInputUiSettings(
                    hintText: 'Sélectionner une réponse',
                  ),
                ),
              ],
            ),
            ValueBuilderNode(
              id: 'a1',
              path: '#q1',
              builder: (value) {
                return WidgetNode(
                  id: 'a1',
                  builder: (context) => QuizAnswer(
                    choice: (value as List<String>?)?.firstOrNull,
                    answer: 'Blanc',
                    explanation:
                        'Le Soleil est une étoile comme celles qu’on voit'
                        ' briller la nuit, mais c’est la plus proche de '
                        'la Terre. Une étoile est une énorme boule de gaz'
                        ' très chaud, qui produit énormément d’énergie. '
                        'Et cette énergie émerge'
                        ' de la surface sous forme de lumière.',
                  ),
                );
              },
            ),
            InputsNode(
              id: 'q2-page-noSubmitButton',
              exportSettings: const ExportSettings(
                type: ExportType.mergeWithParent,
              ),
              children: [
                WidgetNode(
                  id: 'header',
                  builder: (_) =>
                      const QuizQuestion("Quelle est l'hypothénuse de x ?"),
                ),
                SelectInput(
                  id: 'q2',
                  maxCount: 1,
                  minCount: 1,
                  availibleValues: ['A', 'B', 'C'],
                  submitFormOnSelect: true,
                  uiSettings: SelectInputUiSettings(
                    childrenVisibility: ChildrenVisibility.always,
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
              ],
            ),
            ValueBuilderNode(
              id: 'a2',
              path: '#q2',
              builder: (value) {
                return WidgetNode(
                  id: 'a2',
                  builder: (context) => QuizAnswer(
                    choice: (value as List<String>?)?.firstOrNull,
                    answer: 'C',
                    explanation:
                        "L'hypothénuse est en réalité la face cachée de "
                        'la Lune...',
                  ),
                );
              },
            ),
            InputsNode(
              id: 'q3-page',
              exportSettings: const ExportSettings(
                type: ExportType.mergeWithParent,
              ),
              children: [
                WidgetNode(
                  id: 'header',
                  builder: (context) => const QuizQuestion(
                      'Quel est le record du monde de jonglage, '
                      'avec un ballon de foot, sans interruption ?'),
                ),
                const NumInput(
                  id: 'q3',
                  initialValue: 0,
                  isRequired: true,
                ),
              ],
            ),
            ValueBuilderNode(
              id: 'a3',
              path: '#q3',
              builder: (value) {
                return WidgetNode(
                  id: 'a3',
                  builder: (context) => QuizAnswer(
                    choice: value as num?,
                    answer: 170515,
                    explanation:
                        'Le record du monde actuel de jonglage avec un '
                        "ballon de football est détenu par l'athlète "
                        'japonais Yuki Kadono. En 2018, il a réalisé '
                        '170 515 jongles en une seule session, battant'
                        ' ainsi le record précédent qui était de '
                        '170 405 jongles. Ce record a été officiellement '
                        'enregistré par Guinness World Records.',
                  ),
                );
              },
            ),
            InputsNode(
              id: 'q4-page',
              exportSettings: const ExportSettings(
                type: ExportType.mergeWithParent,
              ),
              children: [
                WidgetNode(
                  id: 'header',
                  builder: (_) => const QuizQuestion('Quel est votre prénom ?'),
                ),
                const StringInput(
                  id: 'q4',
                  isRequired: true,
                  uiSettings:
                      StringInputUiSettings(autofocus: WoFormAutofocus.ifEmpty),
                ),
              ],
            ),
            ValueBuilderNode(
              id: 'r4',
              path: '#q4',
              builder: (value) {
                return WidgetNode(
                  id: 'r4',
                  builder: (context) => QuizAnswer(
                    choice: value as String?,
                    answer: value,
                    explanation:
                        'Un prénom est personnel, propre à chacun et sale'
                        ' aux autres.',
                  ),
                );
              },
            ),
            InputsNode(
              id: 'q5-page',
              exportSettings: const ExportSettings(
                type: ExportType.mergeWithParent,
              ),
              children: [
                WidgetNode(
                  id: 'header',
                  builder: (context) => const QuizQuestion(
                    "J'ai vu et je reconnais que le package wo_form est"
                    ' un package extraordinaire et très utile.',
                  ),
                ),
                const BooleanInput(
                  id: 'q5',
                  uiSettings: BooleanInputUiSettings(
                    controlType: BooleanFieldControlType.checkbox,
                  ),
                ),
              ],
            ),
            ValueBuilderNode(
              id: 'r5',
              path: '#q5',
              builder: (value) {
                return WidgetNode(
                  id: 'r5',
                  builder: (context) => QuizAnswer(
                    choice: value as bool?,
                    answer: true,
                    explanation:
                        'Le package wo_form vous permet tout ce dont vous '
                        'avez besoin pour tout type de formulaire, de '
                        "l'éditeur au questionnaire, en fournissant des"
                        ' fonctionnalités avancées telles que le thème,'
                        ' les champs dynamiques, la jsonification...',
                  ),
                );
              },
            ),
          ],
          onSubmitSuccess: (context) async {
            await showJsonDialog(context);
            if (context.mounted) Navigator.of(context).pop();
          },
        );
}

class QuizQuestion extends StatelessWidget {
  const QuizQuestion(this.question, {super.key});

  final String question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          question,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class QuizAnswer<T> extends StatelessWidget {
  const QuizAnswer({
    required this.choice,
    required this.answer,
    this.explanation,
    super.key,
  });

  final T choice;
  final T answer;
  final String? explanation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            choice == answer ? 'Bonne réponse !' : 'Dommage...',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 32),
          if (choice != answer) ...[
            Decorated(
              color: Colors.red,
              icon: Icons.cancel,
              child: Text(choice.toString()),
            ),
            const SizedBox(height: 16),
          ],
          Decorated(
            color: Colors.green,
            icon: Icons.check_circle,
            child: Text(answer.toString()),
          ),
          const SizedBox(height: 32),
          if (explanation != null)
            Text(
              explanation!,
              textAlign: TextAlign.justify,
            ),
        ],
      ),
    );
  }
}

class Decorated extends StatelessWidget {
  const Decorated({
    required this.child,
    required this.color,
    this.icon,
    super.key,
  });

  final Widget child;
  final Color color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          borderSide: BorderSide(color: color),
        ),
        prefixIcon: icon == null ? null : Icon(icon, color: color),
      ),
      child: child,
    );
  }
}
