import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/presentation_cubit.dart';
import 'package:wo_form_example/utils/readable_json.dart';

class FromJsonForm extends WoForm {
  FromJsonForm(BuildContext context, {super.key})
      : super(
          uiSettings: WoFormUiSettings(
            titleText: 'Import de formulaire',
            submitText: 'Ouvrir le formulaire',
            disableSubmitMode: DisableSubmitButton.whenInvalid,
            submitButtonPosition: SubmitButtonPosition.floating,
            presentation: context.read<PresentationCubit>().state,
          ),
          children: const [
            StringInput(
              id: 'json',
              isRequired: true,
              uiSettings: StringInputUiSettings(
                maxLines: 20,
                hintText: 'Copiez ici le formulaire en format json.',
              ),
            ),
          ],
          onSubmitSuccess: (context) {
            final jsonString =
                context.read<WoFormValuesCubit>().state['/json'] as String?;
            if (jsonString == null) return;

            final Map<String, dynamic> json;
            try {
              json = jsonDecode(jsonString) as Map<String, dynamic>;
            } catch (e) {
              showErrorDialog(
                context,
                'Failed to decode json',
                e,
              );
              return;
            }

            final RootNode root;
            try {
              root = RootNode.fromJson(json);
            } catch (e) {
              showErrorDialog(
                context,
                'Failed to build WoForm from json',
                e,
              );
              return;
            }

            context.openForm(
              WoForm.root(
                root: root,
                onSubmitSuccess: showJsonDialog,
              ),
            );
          },
        );
}

void showErrorDialog(
  BuildContext context,
  String title,
  Object error,
) {
  showDialog<void>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(title),
        content: Text(error.toString()),
        actions: [
          FilledButton.tonal(
            onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Fermer'),
          ),
        ],
      );
    },
  );
}
