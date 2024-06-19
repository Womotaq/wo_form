import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/app.dart';
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
    WidgetNode(
      id: 'jsonClipboarder',
      builder: (context) => const JsonClipboarder(),
    ),
  ],
  uiSettings: const WoFormUiSettings(
    titleText: 'Créer un formulaire',
    submitMode: WoFormSubmitMode.standard(
      submitText: 'Prévisualiser',
      submitIcon: Icons.visibility_outlined,
    ),
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
      showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          icon: const Icon(Icons.error),
          content: Text(e.toString()),
        ),
      );
      return;
    }
  },
);

class FormCreatorPage extends StatelessWidget {
  const FormCreatorPage({super.key});

  @override
  Widget build(BuildContext context) => woFormCreator.toPage();
}

class JsonClipboarder extends StatefulWidget {
  const JsonClipboarder({super.key});

  @override
  State<JsonClipboarder> createState() => _JsonClipboarderState();
}

class _JsonClipboarderState extends State<JsonClipboarder> {
  bool copied = false;

  @override
  Widget build(BuildContext context) {
    final values = context.watch<WoFormValuesCubit>().state;

    final form = context.read<WoForm>();
    final woFormL10n = context.read<WoFormL10n>();

    final errorsText = woFormL10n.errors(form.getErrors(values).length);

    return ExpansionTile(
      leading: IconButton(
        icon: copied ? const Icon(Icons.check) : const Icon(Icons.copy),
        onPressed: () {
          final values = context.read<WoFormValuesCubit>().state;
          Clipboard.setData(
            ClipboardData(
              text: jsonEncode(
                woFormCreator.export(values),
              ),
            ),
          );
          setState(() => copied = true);
          Future.delayed(
            const Duration(seconds: 4),
            () => setState(() => copied = false),
          );
        },
      ),
      title: const Text('JSON'),
      subtitle: errorsText == null
          ? null
          : Text(
              errorsText,
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(readableJson(woFormCreator.export(values))),
      ],
    );
  }
}
