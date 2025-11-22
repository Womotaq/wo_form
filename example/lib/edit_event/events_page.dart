import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/edit_event/edit_event_page.dart';
import 'package:wo_form_example/edit_event/event.dart';

class EventsCubit extends Cubit<List<EventModel>> {
  EventsCubit(super.initialState);

  void update({required EventModel event}) => emit(
        List<EventModel>.from(state)
            .map((e) => e.id == event.id ? event : e)
            .toList(),
      );
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EventsCubit(
        [
          EventModel(
            id: 'ziunvoeifzubuize',
            title: 'Semi-final',
            start: DateTime(2024, 08, 12, 17, 30),
            finish: DateTime(2024, 08, 12, 19, 30),
            address: AddressModel(
              name: 'Champs-Élysées, Paris, France',
              latitude: 48.8696375,
              longitude: 2.3083137,
            ),
          ),
          EventModel(
            id: 'apojfzmomzeofhoe',
            title: 'Final',
            start: DateTime(2025, 09, 12, 17, 30),
            finish: DateTime(2025, 09, 12, 19, 30),
            address: AddressModel(
              name: 'Champs-Élysées, Paris, France',
              latitude: 48.8696375,
              longitude: 2.3083137,
            ),
          ),
        ],
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: BlocBuilder<EventsCubit, List<EventModel>>(
              builder: (context, events) {
                return Column(
                  children: [
                    const SizedBox(width: 8),
                    ...events.map(EventCard.new),
                    const SizedBox(width: 8),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class CreateEventButton extends StatelessWidget {
  const CreateEventButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.add),
    );
  }
}

class EventCard extends StatelessWidget {
  const EventCard(this.event, {super.key});

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.MMMMEEEEd();
    final timeFormat = DateFormat.Hm();

    return Card.outlined(
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(width: 16),
              Text(
                event.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              IconButton(
                onPressed: () => context.openForm(
                  EventForm(context: context, event: event),
                ),
                icon: const Icon(Icons.edit),
              ),
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.calendar_today),
                  title: Text(dateFormat.format(event.start)),
                  trailing: Text(
                    '${timeFormat.format(event.start)}\n'
                    '${timeFormat.format(event.finish)}',
                  ),
                ),
                if (event.address != null)
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: Text(event.address!.name),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
