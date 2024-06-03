import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/form_creator/string_input_page.dart';
import 'package:wo_form/example/report/report_page.dart';
import 'package:wo_form/wo_form.dart';

class FormCreatorApp extends StatelessWidget {
  const FormCreatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Creator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.dark,
        ),
        // primarySwatch: Colors.blue,
      ),
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
