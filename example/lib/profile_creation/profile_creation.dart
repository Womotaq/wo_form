import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/capitalized.dart';
import 'package:wo_form_example/utils/discard_changes_dialog.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/readable_json.dart';
import 'package:wo_form_example/utils/regex_pattern.dart';

class ProfileCreationForm extends WoForm {
  ProfileCreationForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            submitText: 'Save my profile',
            multistepSettings: const MultistepSettings(
              nextText: 'Next page',
              progressIndicatorBuilder: StepProgressIndicator.new,
            ),
            canQuit: showDiscardChangesDialogIfWoFormUnsaved,
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            const InputsNode(
              id: 'birthdayPage',
              uiSettings: InputsNodeUiSettings(
                labelText: "On te souhaite ton anniv' ?",
              ),
              children: [
                DateTimeInput(
                  id: 'birthday',
                  minDate: TodayDate(addYears: -120),
                  maxDate: TodayDate(),
                  uiSettings: DateTimeInputUiSettings(
                    headerFlex: 6,
                    labelText: 'Wich date ?',
                    editMode: DateEditMode.date,
                    dateFormat: 'yMMMd',
                    prefixIcon: Icon(Icons.calendar_month),
                  ),
                ),
                DateTimeInput(
                  id: 'time',
                  uiSettings: DateTimeInputUiSettings(
                    headerFlex: 6,
                    labelText: 'What hour ?',
                    editMode: DateEditMode.time,
                    prefixIcon: Icon(Icons.timer_outlined),
                  ),
                ),
                DateTimeInput(
                  id: 'datetime',
                  // isRequired: true,
                  uiSettings: DateTimeInputUiSettings(
                    labelText: 'Les 2 !',
                    // labelFlex: 5,
                  ),
                ),
              ],
            ),
            InputsNode(
              id: 'namePage',
              uiSettings: const InputsNodeUiSettings(
                labelText: "Comment t'appelles-tu ?",
              ),
              children: [
                const StringInput(
                  id: 'firstName',
                  isRequired: true,
                  uiSettings: StringInputUiSettings(
                    labelText: 'Prénom',
                    hintText: "N'écris pas John stp !!",
                    prefixIcon: Icon(Icons.person),
                    autofocus: WoFormAutofocus.ifEmpty,
                    autofillHints: [AutofillHints.givenName],
                  ),
                ),
                ConditionnalNode(
                  id: 'condition',
                  condition: ConditionValue(
                    path: '/namePage/firstName',
                    isEqualTo: 'John',
                  ),
                  child: const StringInput(
                    id: 'password',
                    isRequired: true,
                    uiSettings: StringInputUiSettings(
                      labelText: 'Bonjour agent John.',
                      hintText: 'Mot de passe',
                      prefixIcon: SizedBox.square(dimension: 24),
                    ),
                  ),
                ),
                const StringInput(
                  id: 'lastName',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Nom',
                    prefixIcon: SizedBox.square(dimension: 24),
                    autofillHints: [AutofillHints.familyName],
                  ),
                ),
              ],
            ),
            const InputsNode(
              id: 'addressPage',
              uiSettings: InputsNodeUiSettings(
                labelText: 'Où habites-tu ?',
              ),
              children: [
                StringInput(
                  id: 'street',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Rue',
                    prefixIcon: Icon(Icons.location_on),
                    autofocus: WoFormAutofocus.ifEmpty,
                    autofillHints: [AutofillHints.streetAddressLevel1],
                  ),
                ),
                StringInput(
                  id: 'postalCode',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Code postal',
                    prefixIcon: SizedBox.square(dimension: 24),
                    keyboardType: TextInputType.number,
                    autofillHints: [AutofillHints.postalCode],
                  ),
                ),
                StringInput(
                  id: 'city',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Ville',
                    prefixIcon: SizedBox.square(dimension: 24),
                    autofillHints: [AutofillHints.addressCity],
                  ),
                ),
                StringInput(
                  id: 'country',
                  initialValue: 'France',
                  uiSettings: StringInputUiSettings(
                    labelText: 'Pays',
                    prefixIcon: Icon(Icons.public),
                    autofillHints: [AutofillHints.countryName],
                  ),
                ),
              ],
            ),
            InputsNode(
              id: 'contactPage',
              uiSettings: const InputsNodeUiSettings(
                labelText: 'Comment te contacter ?',
              ),
              children: [
                StringInput(
                  id: 'mail',
                  isRequired: true,
                  regexPattern: RegexPattern.email.value,
                  initialValue: 'prefilled@company.web',
                  uiSettings: StringInputUiSettings.email(
                    labelText: 'Email',
                    prefixIcon: const Icon(Icons.mail),
                    autofocus: WoFormAutofocus.ifEmpty,
                    invalidRegexMessage:
                        'Ne correspond pas à une adresse email',
                  ),
                ),
                StringInput(
                  id: 'phone',
                  initialValue: 'nawak',
                  uiSettings: StringInputUiSettings.phone(
                    labelText: 'Numéro de téléphone',
                    prefixIcon: const Icon(Icons.phone),
                  ),
                ),
              ],
            ),
          ],
          onSubmitting: (form, values) async {
            if (values['#firstName'] == 'John') {
              throw ArgumentError("On t'avais dit de ne pas écrire John...");
            }
            return;
          },
          onSubmitSuccess: showJsonDialog,
        );
}

class StepProgressIndicator extends StatelessWidget {
  const StepProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    if (context
            .read<RootNode>()
            .uiSettings
            ?.multistepSettings
            ?.generatingSteps ??
        false) {
      return const SizedBox.shrink();
    }

    final currentStepIndex =
        context.select((WoFormValuesCubit c) => c.state.currentStepIndex ?? 0);
    final maxIndex = context.read<RootNode>().children.length - 1;

    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // spacing: 16,
        children: List.generate(
          maxIndex * 2 + 1,
          (i) {
            final i2 = (i / 2).ceil();
            final past = i2 < currentStepIndex;
            final current = i2 == currentStepIndex;
            final future = i2 > currentStepIndex;

            return i.isEven
                ? GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: past
                        ? () =>
                            MultistepController.of(context)?.animateToStep(i2)
                        : null,
                    child: SizedBox(
                      width: 70,
                      child: Column(
                        children: [
                          AnimatedContainer(
                            duration: WoFormTheme.STEP_TRANSITION_DURATION,
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: current
                                  ? colorScheme.primary
                                  : past
                                      ? colorScheme.primaryContainer
                                      : null,
                              border: future
                                  ? Border.all(
                                      color:
                                          colorScheme.onSurface.withAlpha(128),
                                    )
                                  : null,
                            ),
                            child: Center(
                              child: past
                                  ? Icon(
                                      Icons.check,
                                      color: colorScheme.onPrimaryContainer,
                                      size: 16,
                                    )
                                  : Text(
                                      (i2 + 1).toString(),
                                      style: TextStyle(
                                        color: current
                                            ? colorScheme.onPrimary
                                            : colorScheme.onSurface
                                                .withAlpha(128),
                                      ),
                                    ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Builder(builder: (context) {
                            final id = context.read<RootNode>().children[i2].id;
                            return Text(
                              id.substring(0, id.length - 4).capitalized(),
                              textAlign: TextAlign.center,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            );
                          }),
                        ],
                      ),
                    ),
                  )
                : Expanded(
                    child: WoOverflowBox(
                      horizontalOverflow: 10,
                      child: AnimatedContainer(
                        duration: WoFormTheme.STEP_TRANSITION_DURATION,
                        margin: const EdgeInsets.only(top: (32 - 4) / 2),
                        height: 2,
                        color: current
                            ? colorScheme.primary
                            : future
                                ? colorScheme.onSurface.withAlpha(128)
                                : colorScheme.primaryContainer,
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }
}

class WoOverflowBox extends StatelessWidget {
  const WoOverflowBox({
    required this.child,
    required this.horizontalOverflow,
    super.key,
  });

  final Widget child;
  final double horizontalOverflow;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OverflowBox(
          maxWidth: constraints.maxWidth + horizontalOverflow * 2,
          fit: OverflowBoxFit.deferToChild,
          child: child,
        );
      },
    );
  }
}
