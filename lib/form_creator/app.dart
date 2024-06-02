import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/form_creator/string_input_form.dart';
import 'package:wo_form/wo_form.dart';

class FormCreatorApp extends StatelessWidget {
  const FormCreatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormCreatorCubit(),
      child: MaterialApp(
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
        home: const ScreenA(),
      ),
    );
  }
}

class FormCreatorCubit extends WoFormCubit {
  FormCreatorCubit() : super(stringInputForm);

  @override
  void submit() {
    if (state.isNotValid) return setInvalid();

    setSubmitted();
  }
}

class WoFormStatusListener<T extends WoFormCubit> extends StatelessWidget {
  const WoFormStatusListener({
    required this.listener,
    required this.child,
    super.key,
  });

  final void Function(BuildContext context, WoFormStatus status) listener;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<T, WoForm>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, form) => listener(context, form.status),
      child: child,
    );
  }
}

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Création d'un champ texte"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<FormCreatorCubit, WoForm>(
          builder: (context, form) {
            return ListView(
              children: [
                ...form.inputs.map((i) => i.toField<FormCreatorCubit>()),
                WoGap.xxxlarge,
                const Text('Json :'),
                WoGap.medium,
                Text(readableJson(form.valuesToJson())),
                WoGap.xxxlarge,
                WoFormStatusListener<FormCreatorCubit>(
                  listener: (context, status) {
                    if (status == WoFormStatus.submitted) {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const ScreenB(),
                        ),
                      );
                    }
                  },
                  child: IconButton(
                    icon: const Icon(Icons.check),
                    onPressed: context.read<FormCreatorCubit>().submit,
                    style: IconButton.styleFrom(
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: const Size(64, 64),
                    ),
                  ),
                ),
                WoGap.xxxlarge,
              ],
            );
          },
        ),
      ),
    );
  }
}

String readableJson(Map<String, dynamic> json, {int indentStep = 4}) {
  final buffer = StringBuffer();
  var indent = 0;

  for (final char in json.toString().characters) {
    if (char == '}') {
      indent -= indentStep;
      buffer.write('\n${' ' * indent}');
    }
    buffer.write(char);
    if (char == '{') {
      indent += indentStep;
      buffer.write('\n${' ' * indent}');
    } else if (char == ',') {
      buffer.write('\n${' ' * indent}');
    }
  }

  return buffer.toString();
}

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: const Center(
        child: Text('Welcome to Screen B'),
      ),
    );
  }
}
