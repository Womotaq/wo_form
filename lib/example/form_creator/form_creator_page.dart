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
  inputs: [
    InputsNode(
      id: 'inputs',
      exportType: NodeExportType.list,
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
        backgroundColor: context.colorScheme.contrastedBackground,
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
                        builder: (_) => ScreenB(
                          form: WoForm.fromJson(
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
                        backgroundColor:
                            context.colorScheme.primary,
                        foregroundColor:
                            context.colorScheme.onPrimary,
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

class ScreenB extends StatelessWidget {
  const ScreenB({
    required this.form,
    super.key,
  });

  final WoForm form;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utilisation du champ texte'),
      ),
      body: Center(
        child: WoFormInitializer(
          form: form,
          onSubmitting: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ...form.inputs.map((e) => e.toWidget(parentPath: '')),
                WoGap.xxxlarge,
                const Text('Json :'),
                WoGap.medium,
                BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
                  builder: (context, values) {
                    return Text(
                      readableJson(
                        form.valueToJson(values),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
