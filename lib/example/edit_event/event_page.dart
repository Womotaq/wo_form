import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/edit_event/edit_event_page.dart';
import 'package:wo_form/example/edit_event/event.dart';

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
            title: 'Demi-finale',
            start: DateTime(2024, 08, 12, 17, 30),
            address: 'Stade Rennais',
          ),
          EventModel(
            id: 'apojfzmomzeofhoe',
            title: 'Finale',
            start: DateTime(2024, 09, 12, 17, 30),
            address: 'Stade Rennais',
          ),
        ],
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: WoPadding.horizontalSmall(
            child: BlocBuilder<EventsCubit, List<EventModel>>(
              builder: (context, events) {
                return Column(
                  children: [
                    WoGap.small,
                    ...events.map(EventCard.new),
                    WoGap.small,
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

    return FeedCard.outlined(
      title: event.title,
      actions: [
        IconButton(
          onPressed: () => context.pushPage(
            EditEventPage(
              event: event,
              eventsCubit: context.read(),
            ),
          ),
          icon: const Icon(Icons.edit),
        ),
      ],
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.calendar_today),
            title: Text(dateFormat.format(event.start)),
          ),
          if ((event.address ?? '').isNotEmpty)
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text(event.address!),
            ),
        ],
      ),
    );
  }
}
