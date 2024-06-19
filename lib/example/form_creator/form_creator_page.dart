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
  String generateId() {
    const chars = '0123456789'
        'abcdefghijklmnopqrstuvwxyz'
        'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return List<String>.generate(6, (_) => chars[nextInt(chars.length)]).join();
  }
}

final woFormCreator = WoForm(
  inputs: [
    const InputsNode(
      id: 'uiSettings',
      uiSettings: InputsNodeUiSettings(
        labelText: 'Paramètres généraux',
        displayMode: InputsNodeDisplayMode.tapToExpand,
      ),
      inputs: [
        StringInput(
          id: 'titleText',
          uiSettings: StringInputUiSettings(labelText: 'Titre du formulaire'),
        ),
        StringInput(
          id: 'submitText',
          uiSettings: StringInputUiSettings(
            labelText: 'Label du bouton de validation',
          ),
        ),
      ],
    ),
    InputsNode(
      id: 'inputs',
      exportSettings: const ExportSettings(exportType: ExportType.list),
      inputs: [
        createStringInputNode(id: idGenerator.generateId()),
        createNumInputNode(id: idGenerator.generateId()),
      ],
    ),
  ],
  uiSettings: WoFormUiSettings(
    titleText: 'Créer un formulaire',
    titlePosition: WoFormTitlePosition.appBar,
    submitButtonBuilder: (data) => const Footer(),
  ),
  onSubmitSuccess: (context) {
    try {
      final form = WoForm.fromJson(
        context.read<WoForm>().export(
              context.read<WoFormValuesCubit>().state,
            ) as Map<String, dynamic>,
      );
      context.pushPage(
        form.copyWith(onSubmitSuccess: showJsonDialog).toPage(),
      );
    } catch (e) {
      snackBarError(context, e.toString());
      return;
    }
  },
);

class StringInputPage extends StatelessWidget {
  const StringInputPage({super.key});

  @override
  Widget build(BuildContext context) => woFormCreator.toPage();
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Builder(
          builder: (context) => Row(
            children: [
              Flexible(
                child: BigButton(
                  onPressed: () {
                    final values = context.read<WoFormValuesCubit>().state;
                    Clipboard.setData(
                      ClipboardData(
                        text: jsonEncode(
                          woFormCreator.export(values),
                        ),
                      ),
                    );
                    snackBarNotify(context, 'Copié');
                  },
                  child: const Text('Copier le json'),
                ),
              ),
              Flexible(
                child: BigButton.filled(
                  onPressed: context.read<WoFormValuesCubit>().submit,
                  leading: const Icon(Icons.visibility_outlined),
                  child: const Text('Prévisualiser'),
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
                  readableJson(woFormCreator.export(values)),
                );
              },
            ),
          ],
        ),
        WoGap.xxxlarge,
      ],
    );
  }
}
