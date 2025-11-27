import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wo_form_example/app.dart';
import 'package:wo_form_example/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // ignore: avoid_catching_errors
  } on UnimplementedError catch (e) {
    // ignore: avoid_print
    print(e.message);
  }

  runApp(const WoFormExamplesApp());
}
