import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/utils/readable_json.dart';
import 'package:wo_form/wo_form.dart';

class FromJsonPage extends StatelessWidget {
  const FromJsonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      uiSettings: const WoFormUiSettings(
        titleText: 'Import de formulaire',
        submitMode: StandardSubmitMode(
          submitText: 'Ouvrir le formulaire',
          disableSubmitMode: DisableSubmitButton.whenInvalid,
        ),
      ),
      inputs: [
        const StringInput(
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
          snackBarError(
            context,
            'Failed to decode json : $e',
          );
          return;
        }

        final WoForm form;
        try {
          form = WoForm.fromJson(json);
        } catch (e) {
          snackBarError(
            context,
            'Failed to build WoForm from json : $e',
          );
          return;
        }

        context
            .pushPage(form.copyWith(onSubmitSuccess: showJsonDialog).toPage());
      },
    ).toPage();
  }
}
