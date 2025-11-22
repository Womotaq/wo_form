import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/edit_event/event.dart';
import 'package:wo_form_example/edit_event/events_page.dart';
import 'package:wo_form_example/utils/discard_changes_dialog.dart';
import 'package:wo_form_example/utils/place/address_suggestion_settings.dart';
import 'package:wo_form_example/utils/place/place_repository.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';

class EventForm extends WoForm {
  factory EventForm({
    required BuildContext context,
    required EventModel event,
  }) =>
      EventForm._(
        context: context,
        event: event,
        eventsCubit: context.read(),
        rootKey: RootKey(),
      );

  EventForm._({
    required BuildContext context,
    required EventModel event,
    required EventsCubit eventsCubit,
    required RootKey rootKey,
  }) : super(
          rootKey: rootKey,
          uiSettings: WoFormUiSettings(
            submitText: 'Save',
            submitButtonPosition: SubmitButtonPosition.appBar,
            disableSubmitMode: DisableSubmitButton.whenInitialOrSubmitSuccess,
            canQuit: showDiscardChangesDialogIfWoFormUnsaved,
            presentation: context.read<PresentationCubit>().state,
          ),
          children: [
            WidgetNode(builder: (_) => const SizedBox(height: 32)),
            StringInput(
              id: 'title',
              initialValue: event.title,
              isRequired: true,
              uiSettings: StringInputUiSettings(
                labelText: 'Title',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            StringInput<String>(
              id: 'address',
              initialValue: event.address?.name,
              suggestionsSettings: addressSuggestionsSettings(context),
              uiSettings: const StringInputUiSettings(
                labelText: 'Address',
                action: StringFieldAction.clear,
              ),
            ),
            WidgetNode(builder: (_) => const SizedBox(height: 32)),
            DateTimeInput(
              id: 'start',
              isRequired: true,
              initialValue: FixedDateTime(date: event.start),
              uiSettings: const DateTimeInputUiSettings(
                dateFormat: 'E, MMM d, y',
                prefixIcon: Icon(Icons.calendar_month),
              ),
            ),
            DateTimeInput(
              id: 'finish',
              isRequired: true,
              initialValue: FixedDateTime(date: event.finish),
              getCustomError: (value, path) {
                if (value == null) return EmptyInputError(path: path);
                final start = rootKey.values?['/start'];
                if (start is! DateTime) return null;

                if (value.isBefore(start)) {
                  return CustomInputError(
                    path: path,
                    message: 'The finish date must be after the start date.',
                  );
                }

                return null;
              },
              uiSettings: const DateTimeInputUiSettings(
                dateFormat: 'E, MMM d, y',
                prefixIcon: Icon(Icons.calendar_month),
              ),
            ),
          ],
          onSubmitting: (form, values) async {
            final addressName = values['/address'] as String?;
            AddressModel? address;
            if (addressName == event.address?.name) {
              address = event.address;
            } else if (addressName == null) {
              address = null;
            } else {
              final placeRepo = context.read<PlaceRepository>();
              final details = await placeRepo
                  .getPlacePredictions(addressName)
                  .then((response) => response.predictions.firstOrNull?.placeId)
                  .then((placeId) async => placeId == null
                      ? null
                      : await placeRepo.getPlaceDetails(placeId))
                  .then((response) => response?.result);

              final latitude = details?.latitude;
              final longitude = details?.longitude;
              if (latitude == null || longitude == null) {
                throw const CustomInputError(
                  path: '/address',
                  message: "Couldn't find coordinates for this address.",
                );
              }
              address = AddressModel(
                name: addressName,
                latitude: latitude,
                longitude: longitude,
              );
            }

            final edittedEvent = event.copyWith(
              title: values['/title'] as String,
              address: address,
              start: values['/start'] as DateTime,
              finish: values['/finish'] as DateTime,
            );
            eventsCubit.update(event: edittedEvent);
            return;
          },
          // onSubmitSuccess: showJsonDialog,
          onSubmitSuccess: (context) => Navigator.of(context).pop(),
        );
}
