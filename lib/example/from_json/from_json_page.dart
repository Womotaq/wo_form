import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/form_creator/form_creator_page.dart';
import 'package:wo_form/wo_form.dart';

class FromJsonPage extends StatelessWidget {
  const FromJsonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Importer un formulaire')),
      body: WoPadding.allMedium(
        child: WoFormInitializer(
          form: const WoForm(
            inputs: [StringInput(id: 'json', isRequired: true)],
          ),
          onSubmitting: () {},
          child: Builder(
            builder: (context) => FeedCard(
              title: 'Copiez ici le formulaire en format json.',
              child: Column(
                children: [
                  const StringField(
                    inputPath: '/json',
                    settings: StringFieldSettings(
                      maxLines: 20,
                    ),
                  ),
                  WoGap.medium,
                  WoFormValueBuilder(
                    inputPath: '/json',
                    builder: (context, jsonString) {
                      return FilledFeedCardButton(
                        onPressed:
                            (jsonString is String && jsonString.isNotEmpty)
                                ? () {
                                    final Map<String, dynamic> json;
                                    try {
                                      json = jsonDecode(jsonString)
                                          as Map<String, dynamic>;
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
                                        builder: (_) =>
                                            WoFormPage(initialForm: form),
                                      ),
                                    );
                                  }
                                : null,
                        child: const Text('Ouvrir le formulaire'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
