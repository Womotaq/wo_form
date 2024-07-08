import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/edit_event/event.dart';
import 'package:wo_form/example/edit_event/event_page.dart';
import 'package:wo_form/wo_form.dart';

class EditEventPage extends StatelessWidget {
  const EditEventPage({
    required this.event,
    required this.eventsCubit,
    super.key,
  });

  final EventModel event;
  final EventsCubit eventsCubit;

  @override
  Widget build(BuildContext context) {
    return WoForm(
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
      uiSettings: const WoFormUiSettings(
        titleText: "Édition d'un événement",
        submitMode: StandardSubmitMode(
          submitText: 'Enregistrer',
          disableSubmitMode: DisableSubmitButton.whenInitialOrSubmitSuccess,
          buttonPosition: SubmitButtonPosition.appBar,
        ),
      ),
      input: InputsNode(
        id: '#',
        inputs: [
          StringInput(
            id: 'title',
            initialValue: event.title,
            isRequired: true,
            uiSettings: StringInputUiSettings(
              labelText: 'Titre',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          StringInput(
            id: 'address',
            initialValue: event.address,
            uiSettings: const StringInputUiSettings(
              labelText: 'Adresse',
              keyboardType: TextInputType.streetAddress,
              autofillHints: [AutofillHints.addressCity],
            ),
          ),
        ],
      ),
      onSubmitting: (form, values) async {
        final edittedEvent = event.copyWith(
          title: values['/title'] as String,
          address: values['/address'] as String,
        );
        eventsCubit.update(event: edittedEvent);
      },
      onSubmitSuccess: (context) => Navigator.of(context).pop(),
    ).toPage();
  }
}
