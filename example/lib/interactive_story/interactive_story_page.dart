import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/readable_json.dart';

class InteractiveStoryForm extends WoForm {
  InteractiveStoryForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            presentation: context.read<PresentationCubit>().state,
            submitButtonBuilder: (data) =>
                data.path == '' || data.path.contains('garden')
                    ? Align(
                        alignment: Alignment.centerRight,
                        child: SubmitButton(data.copyWith(path: '/')),
                      )
                    : const SizedBox.shrink(),
            multistepSettings: MultistepSettings(
              nextText: 'Quit',
              onStepSubmitting: (context) async {
                final values = context.read<WoFormValuesCubit>().state;
                final stepId = values.currentStepId ?? '';
                final choice = values.get<List<StoryStep>>('/$stepId/choice');
                final nextStep = choice?.firstOrNull;
                if (nextStep == null) {
                  return const MultistepActionSubmitForm();
                } else if (nextStep == StoryStep.garden) {
                  return MultistepAction.popUntil(
                    (stepId) => stepId == StoryStep.street.name,
                    replacementStepId: nextStep.name,
                  );
                } else {
                  return MultistepAction.push(stepId: nextStep.name);
                }
              },
            ),
          ),
          children: StoryStep.values.map(StoryStepNode.new).toList(),
          onSubmitSuccess: (context) async {
            await showJsonDialog(context);
            if (context.mounted) Navigator.of(context).pop();
          },
        );
}

enum StoryStep {
  street,
  entry,
  kitchen,
  bedroom,
  bathroom,
  toilets,
  garden;

  factory StoryStep.fromString(String name) =>
      values.firstWhere((value) => value.name == name);

  List<StoryStep> get nextSteps => switch (this) {
        street => [entry, garden],
        entry => [kitchen, bedroom],
        kitchen => [],
        bedroom => [bathroom, toilets],
        bathroom => [],
        toilets => [garden],
        garden => [],
      };

  String get endText => switch (this) {
        street => '',
        entry => '',
        kitchen => 'You found a spoon and a yogurt. Bon appétit !',
        bedroom => '',
        bathroom => 'Nothing here.',
        toilets => '',
        garden => "You're free to go !",
      };
}

class StoryStepNode extends InputsNode {
  StoryStepNode(StoryStep step)
      : super(
          id: step.name,
          uiSettings: InputsNodeUiSettings(
            labelText: 'You are in the ${step.name}.',
          ),
          children: [
            if (step.nextSteps.isNotEmpty)
              SelectInput<StoryStep>(
                id: 'choice',
                maxCount: 1,
                minCount: 1,
                submitFormOnSelect: true,
                availibleValues: step.nextSteps,
                uiSettings: SelectInputUiSettings(
                  valueBuilder: (step) => Text(
                    step == null ? 'Select a step' : 'Go to the ${step.name}',
                  ),
                ),
              ),
            WidgetNode(
              builder: (context) => Padding(
                padding: const EdgeInsets.all(16),
                child: Text(step.endText),
              ),
            ),
          ],
        );
}
