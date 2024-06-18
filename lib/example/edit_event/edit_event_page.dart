import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
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
      uiSettings: const WoFormUiSettings(
        titleText: "Édition d'un événement",
        submitMode: StandardSubmitMode(
          submitText: 'Enregistrer',
          disableSubmitMode: DisableSubmitButton.whenInitialOrSubmitted,
          buttonPosition: SubmitButtonPosition.appBar,
        ),
      ),
      inputs: [
        StringInput(
          id: 'title',
          defaultValue: event.title,
          isRequired: true,
          uiSettings: const StringInputUiSettings(
            labelText: 'Titre',
          ),
        ),
        StringInput(
          id: 'address',
          defaultValue: event.address,
          uiSettings: const StringInputUiSettings(
            labelText: 'Adresse',
            keyboardType: TextInputType.streetAddress,
            autofillHints: [AutofillHints.addressCity],
          ),
        ),
      ],
      onSubmitting: (values) async {
        final edittedEvent = event.copyWith(
          title: values['/title'] as String,
          address: values['/address'] as String,
        );
        eventsCubit.update(event: edittedEvent);
      },
      onSubmitted: (context) => Navigator.of(context).pop(),
    ).toPage();
  }
}
