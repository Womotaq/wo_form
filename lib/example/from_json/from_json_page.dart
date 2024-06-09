import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/ui/prefab/wo_form_card_page.dart';
import 'package:wo_form/src/ui/prefab/wo_form_screen.dart';
import 'package:wo_form/wo_form.dart';

class FromJsonPage extends StatelessWidget {
  const FromJsonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WoPadding.allMedium(
        child: WoFormScreen(
          form: const WoForm(
            uiSettings: WoFormUiSettings(
              titleText: 'Import de formulaire',
              submitText: 'Ouvrir le formulaire',
              submitMode: WoFormSubmitMode.submitIfValid,
            ),
            inputs: [
              StringInput(
                id: 'json',
                isRequired: true,
                uiSettings: StringFieldSettings(
                  maxLines: 20,
                  hintText: 'Copiez ici le formulaire en format json.',
                ),
              ),
            ],
          ),
          onSubmitted: (context) {
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

            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => WoFormCardPage(form: form),
              ),
            );
          },
        ),
      ),
    );
  }
}
