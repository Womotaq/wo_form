import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/dynamic_form/dynamic_form_page.dart';
import 'package:wo_form_example/edit_event/events_page.dart';
import 'package:wo_form_example/form_creator/form_creator_page.dart';
import 'package:wo_form_example/from_json/from_json_page.dart';
import 'package:wo_form_example/inputs/inputs_form.dart';
import 'package:wo_form_example/interactive_story/interactive_story_page.dart';
import 'package:wo_form_example/medias_form/media_service_impl.dart';
import 'package:wo_form_example/medias_form/medias_form_page.dart';
import 'package:wo_form_example/medias_form/permission_service_impl.dart';
import 'package:wo_form_example/profile_creation/profile_creation.dart';
import 'package:wo_form_example/quiz/quiz_page.dart';
import 'package:wo_form_example/report/report_page.dart';
import 'package:wo_form_example/tests/test_dynamic_inputs_node_form.dart';
import 'package:wo_form_example/tests/test_flex_page.dart';
import 'package:wo_form_example/tests/test_scrollable_page.dart';
import 'package:wo_form_example/tests/test_select_input_form.dart';
import 'package:wo_form_example/themed_form/themed_form_page.dart';
import 'package:wo_form_example/utils/app.dart';
import 'package:wo_form_example/utils/place/place_repository.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/push_page.dart';

class DarkModeCubit extends Cubit<ThemeMode> {
  DarkModeCubit() : super(ThemeMode.system);

  void set(ThemeMode mode) => emit(mode);
  void toggle() =>
      emit(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
}

class WoFormExamplesApp extends StatelessWidget {
  const WoFormExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<PermissionServiceMixin>(
          create: (context) => const PermissionService(),
        ),
        RepositoryProvider<MediaService>(
          create: (context) => MediaServiceImpl(
            permissionService: context.read(),
          ),
        ),
        RepositoryProvider(create: (context) => PlaceRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PresentationCubit()),
          BlocProvider(create: (context) => ShowCustomThemeCubit()),
          BlocProvider(create: (context) => DarkModeCubit()),
        ],
        child: Builder(
          builder: (context) {
            final themeMode = context.watch<DarkModeCubit>().state;
            final useCustomTheme = context.watch<ShowCustomThemeCubit>().state;
            return WoFormTheme(
              data: context.watch<ShowCustomThemeCubit>().state
                  ? ShowCustomThemeCubit.customTheme
                  : WoFormThemeData(
                      onSubmitError: (context, status) => showDialog<void>(
                        context: context,
                        builder: (context) => AlertDialog(
                          icon: const Icon(Icons.error),
                          content: Text(status.error.toString()),
                        ),
                      ),
                    ),
              child: MaterialApp(
                navigatorKey: App.navigatorKey,
                debugShowCheckedModeBanner: false,
                title: 'wo_form Examples',
                theme: getTheme(
                  Brightness.light,
                  useCustomTheme
                      ? const Color.fromARGB(255, 0, 41, 5)
                      : Colors.lightBlue,
                ),
                darkTheme: getTheme(
                  Brightness.dark,
                  useCustomTheme
                      ? const Color.fromARGB(255, 0, 41, 5)
                      : Colors.lightBlue,
                ),
                themeMode: themeMode,
                home: const HomePage(),
              ),
            );
          },
        ),
      ),
    );
  }

  ThemeData getTheme(
    Brightness brightness,
    Color seedColor,
  ) =>
      ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: brightness,
          seedColor: seedColor,
        ),
        inputDecorationTheme:
            const InputDecorationTheme(border: OutlineInputBorder()),
        // scaffoldBackgroundColor: useCustomTheme
        //     ? isDarkMode
        //         ? Colors.black
        //         : Colors.white
        //     : null,
      );
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
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 4),
                width: 32,
                child: Image.asset('assets/icon-alpha.png'),
              ),
              const SizedBox(width: 12),
              Text(
                'wo_form',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 12),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: PubVersionText(
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ),
            ],
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: context.read<DarkModeCubit>().toggle,
              icon: BlocSelector<DarkModeCubit, ThemeMode, bool>(
                selector: (mode) => mode == ThemeMode.dark,
                builder: (context, isDarkMode) => Icon(
                  isDarkMode ? Icons.dark_mode : Icons.light_mode,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Powerful. Serializable. Customizable.\n'
                'The next-generation form toolkit.',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 48),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Exemples d'utilisation",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              // onTap: () => context.openForm(InputsForm(context)),
              onTap: () => context.pushPage(const InputsFormPage()),
              leading: const Icon(Icons.menu),
              title: const Text('Exemples simples'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(ReportForm(context)),
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
              onTap: () => context.openForm(DynamicForm(context)),
              leading: const Icon(Icons.electric_bolt),
              title: const Text('Dynamiser un formulaire'),
              subtitle: const Text("C'est sympa ça"),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(ProfileCreationForm(context)),
              leading: const Icon(Icons.local_shipping),
              title: const Text("Fluidifier l'UX grâce à plusieurs pages"),
              subtitle: const Text('Ex : Formulaire de création de profil'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(QuizForm(context)),
              leading: const Icon(Icons.check_box_outlined),
              title: const Text('Soumettre un questionnaire'),
              subtitle: const Text('Interactif et en plusieurs pages'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(FormCreatorForm(context)),
              leading: const Icon(Icons.edit_note),
              title: const Text('Créer un formulaire en quelques clics...'),
              subtitle: const Text('Via un formulaire'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(FromJsonForm(context)),
              leading: const Icon(Icons.download),
              title: const Text("... et l'importer ailleurs"),
              subtitle: const Text('Via un fichier JSON'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(MediasForm(context)),
              leading: const Icon(Icons.image),
              title: const Text('Upload images'),
              subtitle: const Text('Customizable & easy'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.pushPage(const TestFlexPage()),
              leading: const Icon(Icons.expand),
              title: const Text('Size expansion'),
              subtitle: const Text('Filling the screen'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(TestScrollableForm(context)),
              leading: const Icon(Icons.mouse),
              title: const Text('Scrollable'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(InteractiveStoryForm(context)),
              leading: const Icon(Icons.article),
              title: const Text('Multistep generation'),
              subtitle: const Text("L'histoire dont vous êtes de héros"),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(TestDynamicInputsNodeForm(context)),
              leading: const Icon(Icons.autorenew),
              title: const Text('DynamicInputsNode'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => context.openForm(TestSelectInputForm(context)),
              leading: const Icon(Icons.check_box),
              title: const Text('SelectInput'),
              trailing: const Icon(Icons.chevron_right),
            ),
            const SizedBox(height: 32),
            BlocBuilder<PresentationCubit, WoFormPresentation>(
              builder: (context, presentation) {
                return SwitchListTile(
                  value: presentation == WoFormPresentation.bottomSheet,
                  onChanged: (_) => context.read<PresentationCubit>().toggle(),
                  title: const Text('Ouvrir les formulaires en modales'),
                );
              },
            ),
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

class PubVersionText extends StatelessWidget {
  const PubVersionText({super.key, this.style});

  final TextStyle? style;

  Future<String?> _getLatestPubVersion() async {
    try {
      final response =
          await http.get(Uri.parse('https://pub.dev/api/packages/wo_form'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body) as Map<String, dynamic>;
        final latest = data['latest'] as Map<String, dynamic>;
        return latest['version'] as String;
      }
    } catch (e) {
      // Fallback or error handling
      return null;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(
      future: _getLatestPubVersion(),
      builder: (context, snapshot) => Text(
        snapshot.data ?? '',
        style: style,
      ),
    );
  }
}
