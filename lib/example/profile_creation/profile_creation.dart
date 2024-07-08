import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
          showProgressIndicator: false,
        ),
      ),
      input: InputsNode(
        id: '#',
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
                  hintText: "N'écris pas John stp !!",
                  prefixIcon: Icon(Icons.person),
                  autofocus: true,
                  autofillHints: [AutofillHints.givenName],
                ),
              ),
              StringInput(
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
            inputs: [
              StringInput(
                id: 'street',
                uiSettings: StringInputUiSettings(
                  labelText: 'Rue',
                  prefixIcon: Icon(Icons.signpost),
                  autofocus: true,
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
            inputs: [
              StringInput(
                id: 'mail',
                isRequired: true,
                regexPattern: RegexPattern.email.value,
                uiSettings: StringInputUiSettings.email(
                  labelText: 'Email',
                  prefixIcon: const Icon(Icons.mail),
                  autofocus: true,
                  invalidRegexMessage: FormLocalizationsFr()
                      .regexPatternUnmatched(RegexPattern.email.name),
                ),
              ),
              const StringInput(
                id: 'phone',
                uiSettings: StringInputUiSettings(
                  labelText: 'Numéro de téléphone',
                  prefixIcon: Icon(Icons.phone),
                  keyboardType: TextInputType.phone,
                  autofillHints: [AutofillHints.familyName],
                ),
              ),
            ],
          ),
        ],
      ),
      canQuit: (context) async => context.read<WoFormStatusCubit>().state
                  is InitialStatus ||
              context.read<WoFormStatusCubit>().state is SubmitSuccessStatus
          ? true
          : showDialog<bool>(
              context: context,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: const Text('Abandonner les modifications en cours ?'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(dialogContext).pop(),
                      child: const Text("Continuer d'éditer"),
                    ),
                    FilledButton.tonal(
                      onPressed: () => Navigator.of(dialogContext).pop(true),
                      child: const Text('Abandonner les modifications'),
                    ),
                  ],
                );
              },
            ),
      onSubmitting: (form, values) async {
        if (values['/namePage/firstName'] == 'John') {
          throw ArgumentError("On t'avais dit de ne pas écrire John...");
        }
      },
      onSubmitSuccess: showJsonDialog,
    );
    return form.toPage();
  }
}
