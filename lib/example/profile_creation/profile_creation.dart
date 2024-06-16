import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/example/utils/regex_pattern.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/wo_form.dart';

class ProfileCreationPage extends StatelessWidget {
  const ProfileCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final form = WoForm(
      uiSettings: const WoFormUiSettings(
        submitMode: PageByPageSubmitMode(
          submitText: 'Enregistrer',
          nextText: 'Suivant',
        ),
      ),
      inputs: [
        const InputsNode(
          id: 'namePage',
          uiSettings: InputsNodeUiSettings(
            labelText: "Comment t'appelles-tu ?",
          ),
          inputs: [
            StringInput(
              id: 'firstName',
              isRequired: true,
              uiSettings: StringInputUiSettings(
                labelText: 'Prénom',
                autofillHints: [AutofillHints.givenName],
              ),
            ),
            StringInput(
              id: 'lastName',
              uiSettings: StringInputUiSettings(
                labelText: 'Nom',
                // submitFormOnFieldSubmitted: true,
                // TODO : next page on submitted
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
          inputs: [
            StringInput(
              id: 'street',
              uiSettings: StringInputUiSettings(
                labelText: 'Rue',
                autofillHints: [AutofillHints.streetAddressLevel1],
              ),
            ),
            StringInput(
              id: 'postalCode',
              uiSettings: StringInputUiSettings(
                labelText: 'Code postal',
                keyboardType: TextInputType.number,
                autofillHints: [AutofillHints.postalCode],
              ),
            ),
            StringInput(
              id: 'city',
              uiSettings: StringInputUiSettings(
                labelText: 'Ville',
                autofillHints: [AutofillHints.addressCity],
              ),
            ),
            StringInput(
              id: 'country',
              defaultValue: 'France',
              uiSettings: StringInputUiSettings(
                labelText: 'Pays',
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
          inputs: [
            StringInput(
              id: 'mail',
              isRequired: true,
              regexPattern: RegexPattern.email.value,
              uiSettings: StringInputUiSettings.email(
                labelText: 'Email',
                invalidRegexMessage: FormLocalizationsFr()
                    .regexPatternUnmatched(RegexPattern.email.name),
              ),
            ),
            const StringInput(
              id: 'phone',
              uiSettings: StringInputUiSettings(
                labelText: 'Numéro de téléphone',
                keyboardType: TextInputType.phone,
                autofillHints: [AutofillHints.familyName],
              ),
            ),
          ],
        ),
      ],
      canQuit: (context) async =>
          context.read<WoFormStatusCubit>().state is InitialStatus ||
                  context.read<WoFormStatusCubit>().state is SubmittedStatus
              ? true
              : await showActionDialog(
                  pageContext: context,
                  title: 'Abandonner les modifications ?',
                  actionText: 'Abandonner les modifications',
                  onAction: () => true,
                  cancelText: "Continuer d'éditer",
                ),
    );
    return form.toPage(onSubmitted: showJsonDialog);
  }
}
