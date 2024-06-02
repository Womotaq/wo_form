import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        title: const Text('Screen A'),
      ),
      floatingActionButton: WoFormStatusListener<FormCreatorCubit>(
        listener: (context, status) {
          if (status == WoFormStatus.submitted) {
            Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (context) => const ScreenB()),
            );
          }
        },
        child: IconButton(
          icon: const Icon(Icons.check),
          onPressed: context.read<FormCreatorCubit>().submit,
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            minimumSize: const Size(64, 64),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(builder: (context) => const ScreenB()),
            );
          },
          child: const Text('Go to Screen B'),
        ),
      ),
    );
  }
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
