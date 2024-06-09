import 'package:flutter/material.dart';
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
      initialStatusIsSubmitted: true,
      uiSettings: const WoFormUiSettings(
        titleText: "Édition d'un événement",
        submitText: 'Enregistrer',
        submittedText: 'Enregistré',
        displayMode: WoFormDisplayMode.page,
      ),
      inputs: [
        StringInput(
          id: 'title',
          defaultValue: event.title,
          isRequired: true,
          uiSettings: const StringFieldSettings(
            labelText: 'Titre',
          ),
        ),
        StringInput(
          id: 'address',
          defaultValue: event.address,
          uiSettings: const StringFieldSettings(
            labelText: 'Adresse',
            keyboardType: TextInputType.streetAddress,
            autofillHints: [AutofillHints.addressCity],
          ),
        ),
      ],
    ).toWidget(
      onSubmitting: () async =>
          Future<void>.delayed(const Duration(seconds: 3)),
      onSubmitted: (context) {},
    );
  }
}
