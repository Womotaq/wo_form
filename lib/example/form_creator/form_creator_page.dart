import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/form_creator/num_input_node.dart';
import 'package:wo_form/example/form_creator/string_input_node.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

final idGenerator = Random();

extension RandomX on Random {
  String generateId() => nextDouble().toString().substring(2);
}

final woFormCreator = WoForm(
  unmodifiableValuesJson: {
    'uiSettings': {
      'title': 'Profil',
    },
  },
  inputs: [
    InputsNode(
      id: 'inputs',
      exportType: NodeExportType.list,
      uiSettings: const NodeWidgetSettings(
        displayMode: NodeDisplayMode.tile,
      ),
      inputs: [
        createStringInputNode(id: idGenerator.generateId()),
        createNumInputNode(id: idGenerator.generateId()),
      ],
    ),
  ],
);

class StringInputPage extends StatelessWidget {
  const StringInputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoFormInitializer(
      form: woFormCreator,
      onSubmitting: () {},
      child: Scaffold(
        // backgroundColor: context.colorScheme.contrastedBackground,
        appBar: AppBar(
          title: const Text("Création d'un champ texte"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              ...woFormCreator.inputs.map((e) => e.toWidget(parentPath: '')),
              WoGap.xxxlarge,
              ExpansionTile(
                title: const Text('JSON'),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
                    builder: (context, values) {
                      return Text(
                        readableJson(woFormCreator.valueToJson(values)),
                      );
                    },
                  ),
                ],
              ),
              WoGap.xxxlarge,
              BlocListener<WoFormStatusCubit, WoFormStatus>(
                listener: (context, status) {
                  if (status is SubmittedStatus) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (_) => CreatedFormPage(
                          initialForm: WoForm.fromJson(
                            woFormCreator.valueToJson(
                              context.read<WoFormValuesCubit>().state,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                },
                child: Builder(
                  builder: (context) {
                    return IconButton(
                      icon: const Icon(Icons.check),
                      onPressed: context.read<WoFormValuesCubit>().submit,
                      style: IconButton.styleFrom(
                        backgroundColor: context.colorScheme.primary,
                        foregroundColor: context.colorScheme.onPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        minimumSize: const Size(64, 64),
                      ),
                    );
                  },
                ),
              ),
              WoGap.xxxlarge,
            ],
          ),
        ),
      ),
    );
  }
}

class CreatedFormPage extends StatelessWidget {
  const CreatedFormPage({
    required this.initialForm,
    super.key,
  });

  final WoForm initialForm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utilisation du champ texte'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: initialForm.toWidget(
          onSubmitting: () {},
          onSubmitted: (form, values) => showDialog<AlertDialog>(
            context: context,
            builder: (dialogContext) {
              return AlertDialog(
                icon: const Icon(Icons.data_array),
                title: const Text('JSON'),
                content: Text(
                  readableJson(form.valueToJson(values)),
                      ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(dialogContext).pop();
                      context.read<WoFormStatusCubit>().setIdle();
                    },
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
