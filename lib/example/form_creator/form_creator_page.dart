import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    const InputsNode(
      id: 'uiSettings',
      uiSettings: InputsNodeWidgetSettings(
        labelText: 'Paramètres généraux',
      ),
      inputs: [
        StringInput(
          id: 'titleText',
          uiSettings: StringFieldSettings(labelText: 'Titre du formulaire'),
        ),
        StringInput(
          id: 'submitText',
          uiSettings: StringFieldSettings(
            labelText: 'Label du bouton de validation',
          ),
        ),
        StringInput(
          id: 'submittedText',
          uiSettings: StringFieldSettings(
            labelText: 'Label du bouton validé',
          ),
        ),
      ],
    ),
    InputsNode(
      id: 'inputs',
      exportType: NodeExportType.list,
      uiSettings: const InputsNodeWidgetSettings(
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
      child: Scaffold(
        // backgroundColor: context.colorScheme.contrastedBackground,
        appBar: AppBar(
          title: const Text('Créer un formulaire'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              ...woFormCreator.inputs.map((e) => e.toWidget(parentPath: '')),
              WoGap.xxxlarge,
              Builder(
                builder: (context) => Row(
                  children: [
                    Flexible(
                      child: BigButton(
                        onPressed: () {
                          final values =
                              context.read<WoFormValuesCubit>().state;
                          Clipboard.setData(
                            ClipboardData(
                              text: jsonEncode(
                                woFormCreator.getSubmittedJson(values),
                              ),
                            ),
                          );
                          snackBarNotify(context, 'Copié');
                        },
                        child: const Text('Copier le json'),
                      ),
                    ),
                    Flexible(
                      child: BlocListener<WoFormStatusCubit, WoFormStatus>(
                        listener: (context, status) {
                          if (status is SubmittedStatus) {
                            final WoForm form;
                            try {
                              form = WoForm.fromJson(
                                woFormCreator.getSubmittedJson(
                                  context.read<WoFormValuesCubit>().state,
                                ),
                              );
                            } catch (e) {
                              snackBarError(context, e.toString());
                              return;
                            }
                            context.pushPage(
                              form.toPage(onSubmitted: showJsonDialog),
                            );
                          }
                        },
                        child: BigButton.filled(
                          onPressed: context.read<WoFormValuesCubit>().submit,
                          leading: const Icon(Icons.visibility_outlined),
                          child: const Text('Prévisualiser'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              WoGap.xxxlarge,
              ExpansionTile(
                title: const Text('JSON'),
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocBuilder<WoFormValuesCubit, Map<String, dynamic>>(
                    builder: (context, values) {
                      return Text(
                        readableJson(woFormCreator.getSubmittedJson(values)),
                      );
                    },
                  ),
                ],
              ),
              WoGap.xxxlarge,
            ],
          ),
        ),
      ),
    );
  }
}
