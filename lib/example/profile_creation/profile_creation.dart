import 'package:flutter/material.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/src/l10n/arb_gen/form_localizations_fr.dart';
import 'package:wo_form/wo_form.dart';

class ProfileCreationPage extends StatelessWidget {
  const ProfileCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final form = WoForm(
      uiSettings: const WoFormUiSettings(
        submitText: 'Enregistrer',
        displayMode: WoFormDisplayedInPages(
          nextText: 'Suivant',
          backText: 'Retour',
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
                hintText: 'XX XXX',
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
                autofillHints: [AutofillHints.familyName],
              ),
            ),
          ],
        ),
      ],
    );
    return form.toPage(onSubmitted: showJsonDialog);
  }
}
