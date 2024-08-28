import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/app.dart';
import 'package:wo_form/example/form_creator/num_input_node.dart';
import 'package:wo_form/example/form_creator/select_string_input_node.dart';
import 'package:wo_form/example/form_creator/string_input_node.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class FormCreatorPage extends StatelessWidget {
  const FormCreatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      initialStatus: const InvalidValuesStatus(),
      children: [
        const InputsNode(
          id: 'uiSettings',
          uiSettings: InputsNodeUiSettings(
            labelText: 'Paramètres généraux',
            childrenVisibility: ChildrenVisibility.whenAsked,
          ),
          children: [
            StringInput(
              id: 'titleText',
              uiSettings:
                  StringInputUiSettings(labelText: 'Titre du formulaire'),
            ),
            StringInput(
              id: 'submitText',
              uiSettings: StringInputUiSettings(
                labelText: 'Label du bouton de validation',
              ),
            ),
          ],
        ),
        DynamicInputsNode(
          id: 'children',
          exportSettings: const ExportSettings(type: ExportType.list),
          templates: [
            DynamicInputTemplate(
              uiSettings: const DynamicInputUiSettings(
                labelText: 'Choix de texte',
              ),
              child: createSelectStringInputNode(),
            ),
            DynamicInputTemplate(
              uiSettings: const DynamicInputUiSettings(
                labelText: 'Saisie de texte',
              ),
              child: createStringInputNode(),
            ),
            DynamicInputTemplate(
              uiSettings: const DynamicInputUiSettings(
                labelText: 'Saisie de nombre',
              ),
              child: createNumInputNode(),
            ),
          ],
          uiSettings: const DynamicInputsNodeUiSettings(
            labelText: 'Ajouter une saisie',
          ),
        ),
        WidgetNode(
          id: 'jsonClipboarder',
          builder: (_) => const JsonClipboarder(),
        ),
      ],
      uiSettings: WoFormUiSettings(
        titleText: "Création d'un formulaire",
        submitMode: const WoFormSubmitMode.standard(
          buttonPosition: SubmitButtonPosition.appBar,
          disableSubmitMode: DisableSubmitButton.whenInvalid,
        ),
        submitButtonBuilder: (data) => TextButton(
          onPressed: data.onPressed,
          child: const Text('Exporter'),
        ),
        canQuit: (context) async => context.read<WoFormStatusCubit>().state
                    is InitialStatus ||
                context.read<WoFormStatusCubit>().state is SubmitSuccessStatus
            ? true
            : showDialog<bool>(
                context: context,
                builder: (BuildContext dialogContext) {
                  return AlertDialog(
                    title: const Text('Supprimer le formulaire ?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(dialogContext).pop(),
                        child: const Text("Continuer d'éditer"),
                      ),
                      FilledButton.tonal(
                        onPressed: () => Navigator.of(dialogContext).pop(true),
                        child: const Text('Supprimer le formulaire'),
                      ),
                    ],
                  );
                },
              ),
      ),
      onSubmitSuccess: (context) {
        try {
          final root = RootNode.fromJson(
            context.read<RootNode>().exportToMap(
                  values: context.read<WoFormValuesCubit>().state,
                ),
          );

          context.pushPage(
            Hero(
              tag: 'createdForm',
              child: WoForm.root(
                root: root,
                onSubmitSuccess: showJsonDialog,
              ),
            ),
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
  }
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

    final root = context.read<RootNode>();
    final woFormL10n = context.read<WoFormL10n>();

    final errorsText = woFormL10n.errors(
      root.getErrors(values: values).length,
    );

    return Column(
      children: [
        const SizedBox(height: 32),
        InputHeader(
          WoFormInputHeaderData(
            path: '',
            labelText: 'Prévisualisation',
            trailing: IconButton(
              icon: const Icon(Icons.open_in_browser),
              onPressed: context.read<WoFormValuesCubit>().submit,
            ),
            shrinkWrap: false,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Builder(
            builder: (context) {
              RootNode? createdRoot;
              try {
                createdRoot =
                    RootNode.fromJson(root.exportToMap(values: values));
              } catch (_) {}

              return InputDecorator(
                decoration: InputDecoration(
                  helperText: ' ',
                  errorText: createdRoot == null ? ' ' : null,
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.all(8),
                ),
                child: createdRoot != null
                    ? Hero(
                        tag: 'createdForm',
                        child: Material(
                          child: WoForm.root(
                            key: UniqueKey(),
                            root: createdRoot.copyWith(
                              uiSettings: WoFormUiSettings(
                                submitMode: StandardSubmitMode(
                                  scaffoldBuilder: (body) => body,
                                ),
                              ),
                            ),
                            onSubmitSuccess: showJsonDialog,
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          '$errorsText',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                          ),
                        ),
                      ),
              );
            },
          ),
        ),
        ListTile(
          onTap: () {
            Clipboard.setData(
              ClipboardData(
                text: jsonEncode(
                  root.exportToMap(
                    values: context.read<WoFormValuesCubit>().state,
                  ),
                ),
              ),
            );
            setState(() => copied = true);
            Future.delayed(
              const Duration(seconds: 4),
              () => setState(() => copied = false),
            );
          },
          leading: copied ? const Icon(Icons.check) : const Icon(Icons.copy),
          title: const Text(
            'Copier le formulaire',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        ExpansionTile(
          title: const Text(''),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Builder(
              builder: (context) {
                return Text(readableJson(root.exportToMap(values: values)));
              },
            ),
          ],
        ),
      ],
    );
  }
}
