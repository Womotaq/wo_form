import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/form_creator/form_creator_page.dart';
import 'package:wo_form/example/report/report_page.dart';
import 'package:wo_form/wo_form.dart';

class WoFormExamplesApp extends StatelessWidget {
  const WoFormExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WoForm Examples',
      theme: WoTheme.getThemeData(
        brightness: Brightness.light,
        primary: const Color.fromARGB(255, 5, 197, 69),
      ),
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(
      //     // seedColor: const Color.fromARGB(255, 197, 5, 181),
      //     seedColor: Color.fromARGB(255, 5, 197, 69),
      //     // brightness: Brightness.dark,
      //   ),
      // ),
      supportedLocales: FormLocalizations.supportedLocales,
      localizationsDelegates: FormLocalizations.localizationsDelegates,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.contrastedBackground,
      body: WoPadding.allMedium(
        child: Column(
          children: [
            WoGap.xxxlarge,
            WoPadding.allMedium(
              child: Text(
                "Examples d'utilisation du package wo_form",
                style: context.textTheme.titleCard,
              ),
            ),
            WoGap.small,
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const StringInputPage(),
                ),
              ),
              leading: const Icon(Icons.edit_note),
              title: const Text(
                'Créer un formulaire',
                style: TextStyleExt.bold,
              ),
              subtitle: const Text('Formulaire avancé'),
              trailing: const Icon(Icons.chevron_right),
            ),
            ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const ReportPage(),
                ),
              ),
              leading: const Icon(Icons.report),
              title: const Text(
                'Signaler un utilisateur',
                style: TextStyleExt.bold,
              ),
              subtitle: const Text('Formulaire éditable à distance'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
