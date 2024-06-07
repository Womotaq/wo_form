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
      appBar: AppBar(title: const Text('WoForm tests')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const StringInputPage(),
                ),
              ),
              child: const Text("Création d'un champ texte"),
            ),
            WoGap.medium,
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const ReportPage(),
                ),
              ),
              child: const Text('Formulaire de signalement'),
            ),
          ],
        ),
      ),
    );
  }
}
