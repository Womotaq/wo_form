import 'package:flutter/material.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class ProfileCreationPage extends StatelessWidget {
  const ProfileCreationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final form = WoForm(
      uiSettings: const WoFormUiSettings(
        submitText: 'Enregistrer',
        displayMode: WoFormDisplayMode.page,
      ),
      inputs: [
        const InputsNode(
          id: 'namePage',
          uiSettings: InputsNodeWidgetSettings(
            labelText: "Comment t'appelles-tu ?",
          ),
          inputs: [
            StringInput(
              id: 'firstName',
              isRequired: true,
              uiSettings: StringFieldSettings(
                labelText: 'Prénom',
                autofillHints: [AutofillHints.givenName],
              ),
            ),
            StringInput(
              id: 'lastName',
              uiSettings: StringFieldSettings(
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
          uiSettings: InputsNodeWidgetSettings(
            labelText: 'Où habites-tu ?',
          ),
          inputs: [
            StringInput(
              id: 'street',
              uiSettings: StringFieldSettings(
                labelText: 'Rue',
                autofillHints: [AutofillHints.streetAddressLevel1],
              ),
            ),
            StringInput(
              id: 'postalCode',
              uiSettings: StringFieldSettings(
                labelText: 'Code postal',
                hintText: 'XX XXX',
                autofillHints: [AutofillHints.postalCode],
              ),
            ),
            StringInput(
              id: 'postalCode',
              uiSettings: StringFieldSettings(
                labelText: 'Ville',
                autofillHints: [AutofillHints.addressCity],
              ),
            ),
            StringInput(
              id: 'country',
              uiSettings: StringFieldSettings(
                labelText: 'Pays',
                autofillHints: [AutofillHints.countryName],
              ),
            ),
          ],
        ),
        InputsNode(
          id: 'contactPage',
          uiSettings: const InputsNodeWidgetSettings(
            labelText: 'Comment te contacter ?',
          ),
          inputs: [
            StringInput(
              id: 'mail',
              isRequired: true,
              regexPattern: RegexPattern.email.value,
              uiSettings: StringFieldSettings.email(
                labelText: 'Email',
              ),
            ),
            const StringInput(
              id: 'phone',
              uiSettings: StringFieldSettings(
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
