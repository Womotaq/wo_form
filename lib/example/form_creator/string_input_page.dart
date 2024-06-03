import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
// import 'package:wo_form/form_creator/app.dart';
import 'package:wo_form/example/form_creator/string_input_form.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class FormCreatorCubit extends WoFormCubit {
  FormCreatorCubit() : super(stringInputForm);

  @override
  void submit() {
    if (state.isNotValid) return setInvalid();

    setSubmitted();
  }
}

class StringInputPage extends StatelessWidget {
  const StringInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormCreatorCubit(),
      child: Scaffold(
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
