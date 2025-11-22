import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/form_creator/num_input_node.dart';
import 'package:wo_form_example/form_creator/select_string_input_node.dart';
import 'package:wo_form_example/form_creator/string_input_node.dart';
import 'package:wo_form_example/utils/discard_changes_dialog.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/push_page.dart';
import 'package:wo_form_example/utils/readable_json.dart';

class FormCreatorForm extends WoForm {
  FormCreatorForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            titleText: "Création d'un formulaire",
            submitButtonPosition: SubmitButtonPosition.appBar,
            disableSubmitMode: DisableSubmitButton.whenInvalid,
            submitButtonBuilder: (data) => TextButton(
              onPressed: data.onPressed,
              child: const Text('Exporter'),
            ),
            canQuit: showDiscardChangesDialogIfWoFormUnsaved,
            showErrors: ShowErrors.always,
            presentation: context.read<PresentationCubit>().state,
          ),
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
          onSubmitSuccess: (context) async {
            try {
              final root = RootNode.fromJson(
                await context.read<RootNode>().exportToMap(
                      values: context.read<WoFormValuesCubit>().state,
                      context: context,
                    ),
              );

              if (context.mounted) {
                final presentation = context.read<PresentationCubit>().state;
                switch (presentation) {
                  case WoFormPresentation.page:
                    await context.pushPage(
                      Hero(
                        tag: 'createdForm',
                        child: WoForm.root(
                          root: root,
                          onSubmitSuccess: showJsonDialog,
                        ),
                      ),
                    );
                  case WoFormPresentation.dialog:
                  case WoFormPresentation.bottomSheet:
                    await context.openForm(
                      WoForm.root(
                        root: root.copyWith(
                          uiSettings:
                              (root.uiSettings ?? const WoFormUiSettings())
                                  .copyWith(presentation: presentation),
                        ),
                        onSubmitSuccess: showJsonDialog,
                      ),
                    );
                }
              }
            } catch (e) {
              if (context.mounted) {
                await showDialog<void>(
                  context: context,
                  builder: (context) => AlertDialog(
                    icon: const Icon(Icons.error),
                    content: Text(e.toString()),
                  ),
                );
              }
              return;
            }
          },
        );
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
    final root = context.read<RootNode>();
    final woFormL10n = context.woFormL10n;
    final scrollController = ScrollController();

    return BlocBuilder<WoFormValuesCubit, WoFormValues>(
      builder: (context, values) {
        final errorsText = woFormL10n
            .errors(root.getErrors(parentPath: '', values: values).length);

        return Column(
          children: [
            const SizedBox(height: 32),
            InputHeader(
              WoFormInputHeaderData(
                labelText: 'Prévisualisation',
                trailing: IconButton(
                  icon: const Icon(Icons.open_in_browser),
                  onPressed: () =>
                      context.read<WoFormValuesCubit>().submit(context),
                ),
                shrinkWrap: false,
              ),
            ),
            InkWell(
              onTap: () => context.read<WoFormValuesCubit>().submit(context),
              child: IgnorePointer(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: FutureBuilder(
                    future: root.exportToMap(
                      values: values,
                      context: context,
                    ),
                    builder: (context, snapshot) {
                      RootNode? createdRoot;
                      try {
                        createdRoot = RootNode.fromJson(snapshot.data!);
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
                                  child: ScrollControllerProvider(
                                    controller: scrollController,
                                    child: WoForm.root(
                                      key: UniqueKey(),
                                      root: createdRoot.copyWith(
                                        uiSettings: (createdRoot.uiSettings ??
                                                const WoFormUiSettings())
                                            .copyWith(
                                          layout: LayoutMethod.shrinkWrap,
                                          quitButtonBuilder: () => null,
                                        ),
                                      ),
                                      onSubmitSuccess: showJsonDialog,
                                    ),
                                  ),
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
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
              ),
            ),
            ListTile(
              onTap: () async {
                await Clipboard.setData(
                  ClipboardData(
                    text: jsonEncode(
                      await root.exportToMap(
                        values: context.read<WoFormValuesCubit>().state,
                        context: context,
                      ),
                    ),
                  ),
                );
                if (!context.mounted) return;
                setState(() => copied = true);
                Future.delayed(
                  const Duration(seconds: 4),
                  () => context.mounted ? setState(() => copied = false) : null,
                );
              },
              leading:
                  copied ? const Icon(Icons.check) : const Icon(Icons.copy),
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
                    return Text(
                      readableJson(
                        root.exportToMap(
                          values: values,
                          context: context,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
