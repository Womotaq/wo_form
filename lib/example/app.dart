import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/dynamic_form/dynamic_form_page.dart';
import 'package:wo_form/example/edit_event/event_page.dart';
import 'package:wo_form/example/form_creator/form_creator_page.dart';
import 'package:wo_form/example/from_json/from_json_page.dart';
import 'package:wo_form/example/profile_creation/profile_creation.dart';
import 'package:wo_form/example/quiz/quiz_page.dart';
import 'package:wo_form/example/report/report_page.dart';
import 'package:wo_form/wo_form.dart';

class WoFormExamplesApp extends StatelessWidget {
  const WoFormExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WoFormInputErrorTranslator(
        translateError: (WoFormInputError error) => switch (error) {
          EmptyInputError() => 'Ce champ doit être renseigné.',
          InvalidInputError() => 'Cette valeur est invalide.',
          MaxBoundInputError() => 'Au dessus de la limite maximale.',
          MinBoundInputError() => 'En dessous du minimum requis.',
          CustomInputError(message: final message) => message,
        },
      ),
      child: MaterialApp(
        title: 'WoForm Examples',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.amber,
          inputDecorationTheme:
              const InputDecorationTheme(border: OutlineInputBorder()),
        ),
        // TOD : remove
        supportedLocales: FormLocalizations.supportedLocales,
        localizationsDelegates: FormLocalizations.localizationsDelegates,
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          WoGap.xxxlarge,
          WoPadding.allMedium(
            child: Text(
              "Exemples d'utilisation du package wo_form",
              style: context.textTheme.titleCard,
            ),
          ),
          WoGap.small,
          ListTile(
            onTap: () => context.pushPage(const ReportPage()),
            leading: const Icon(Icons.quiz),
            title: const Text(
              'Poser des questions',
              style: TextStyleExt.bold,
            ),
            subtitle: const Text('Ex : Formulaire de signalement'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.pushPage(const EventsPage()),
            leading: const Icon(Icons.edit),
            title: const Text(
              'Éditer un objet',
              style: TextStyleExt.bold,
            ),
            subtitle: const Text('En quelques lignes'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.pushPage(const DynamicFormPage()),
            leading: const Icon(Icons.electric_bolt),
            title: const Text(
              'Dynamiser un formulaire',
              style: TextStyleExt.bold,
            ),
            subtitle: const Text("C'est sympa ça"),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.pushPage(const ProfileCreationPage()),
            leading: const Icon(Icons.local_shipping),
            title: const Text(
              "Fluidifier l'UX grâce à plusieurs pages",
              style: TextStyleExt.bold,
            ),
            subtitle: const Text('Ex : Formulaire de création de profil'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.pushPage(const QuizPage()),
            leading: const Icon(Icons.check_box_outlined),
            title: const Text(
              'Soumettre un questionnaire',
              style: TextStyleExt.bold,
            ),
            subtitle: const Text('Interactif et en plusieurs pages'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.pushPage(const StringInputPage()),
            leading: const Icon(Icons.edit_note),
            title: const Text(
              'Créer un formulaire en quelques clics...',
              style: TextStyleExt.bold,
            ),
            subtitle: const Text('Via un formulaire'),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () => context.pushPage(const FromJsonPage()),
            leading: const Icon(Icons.download),
            title: const Text(
              "... et l'importer ailleurs",
              style: TextStyleExt.bold,
            ),
            subtitle: const Text('Via un fichier JSON'),
            trailing: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
