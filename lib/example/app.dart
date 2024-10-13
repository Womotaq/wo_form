import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/dynamic_form/dynamic_form_page.dart';
import 'package:wo_form/example/edit_event/event_page.dart';
import 'package:wo_form/example/form_creator/form_creator_page.dart';
import 'package:wo_form/example/from_json/from_json_page.dart';
import 'package:wo_form/example/profile_creation/profile_creation.dart';
import 'package:wo_form/example/quiz/quiz_page.dart';
import 'package:wo_form/example/report/report_page.dart';
import 'package:wo_form/example/themed_form/themed_form_page.dart';
import 'package:wo_form/wo_form.dart';

class DarkModeCubit extends Cubit<bool> {
  DarkModeCubit() : super(true);

  void toggle() => emit(!state);
}

class WoFormExamplesApp extends StatelessWidget {
  const WoFormExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ShowCustomThemeCubit()),
        BlocProvider(create: (context) => DarkModeCubit()),
      ],
      child: RepositoryProvider(
        create: (context) => WoFormL10n(
          submit: () => 'Envoyer',
          next: () => 'Suivant',
          translateError: (WoFormInputError? error) => switch (error) {
            EmptyInputError() => 'Ce champ doit être renseigné.',
            InvalidInputError() => 'Cette valeur est invalide.',
            MaxBoundInputError() => 'Au dessus de la limite maximale.',
            MinBoundInputError() => 'En dessous du minimum requis.',
            CustomInputError(message: final message) => message,
            null => null,
          },
          errors: (count) {
            if (count == 0) return null;
            if (count == 1) return '1 erreur';
            return '$count erreurs';
          },
        ),
        child: Builder(
          builder: (context) {
            final isDarkMode = context.watch<DarkModeCubit>().state;
            final useCustomTheme = context.watch<ShowCustomThemeCubit>().state;
            return WoFormTheme(
              data: context.watch<ShowCustomThemeCubit>().state
                  ? ShowCustomThemeCubit.customTheme
                  : const WoFormThemeData(defaultPhoneCoutry: IsoCode.FR),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'WoForm Examples',
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                    brightness: isDarkMode ? Brightness.dark : Brightness.light,
                    seedColor: useCustomTheme
                        ? const Color.fromARGB(255, 0, 41, 5)
                        : Colors.lightBlue,
                  ),
                  inputDecorationTheme:
                      const InputDecorationTheme(border: OutlineInputBorder()),
                  scaffoldBackgroundColor: useCustomTheme
                      ? isDarkMode
                          ? Colors.black
                          : Colors.white
                      : null,
                ),
                home: Scaffold(
                  appBar: AppBar(
                    actions: [
                      IconButton(
                        onPressed: context.read<DarkModeCubit>().toggle,
                        icon: BlocBuilder<DarkModeCubit, bool>(
                          builder: (context, isDarkMode) {
                            return Icon(
                              isDarkMode ? Icons.dark_mode : Icons.light_mode,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  body: const HomePage(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      data: ListTileThemeData(
        titleTextStyle: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Exemples d'utilisation du package wo_form",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              onTap: () => context.pushPage(const ReportPage()),
              leading: const Icon(Icons.quiz),
              title: const Text('Poser des questions'),
              subtitle: const Text('Ex : Formulaire de signalement'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.pushPage(const EventsPage()),
              leading: const Icon(Icons.edit),
              title: const Text('Éditer un objet'),
              subtitle: const Text('En quelques lignes'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.pushPage(const DynamicFormPage()),
              leading: const Icon(Icons.electric_bolt),
              title: const Text('Dynamiser un formulaire'),
              subtitle: const Text("C'est sympa ça"),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.pushPage(const ProfileCreationPage()),
              leading: const Icon(Icons.local_shipping),
              title: const Text("Fluidifier l'UX grâce à plusieurs pages"),
              subtitle: const Text('Ex : Formulaire de création de profil'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.pushPage(const QuizPage()),
              leading: const Icon(Icons.check_box_outlined),
              title: const Text('Soumettre un questionnaire'),
              subtitle: const Text('Interactif et en plusieurs pages'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.pushPage(const FormCreatorPage()),
              leading: const Icon(Icons.edit_note),
              title: const Text('Créer un formulaire en quelques clics...'),
              subtitle: const Text('Via un formulaire'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.pushPage(const FromJsonPage()),
              leading: const Icon(Icons.download),
              title: const Text("... et l'importer ailleurs"),
              subtitle: const Text('Via un fichier JSON'),
              trailing: const Icon(Icons.chevron_right),
            ),
            const SizedBox(height: 32),
            BlocBuilder<ShowCustomThemeCubit, bool>(
              builder: (context, showCustomTheme) {
                return SwitchListTile(
                  value: showCustomTheme,
                  onChanged: context.read<ShowCustomThemeCubit>().set,
                  title: const Text('Tester avec un thème custom'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

extension BuildContextExt on BuildContext {
  void pushPage(Widget page) => Navigator.push(
        this,
        MaterialPageRoute<void>(builder: (_) => page),
      );
}
