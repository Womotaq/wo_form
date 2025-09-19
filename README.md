![wo_form Powerful. Serializable. Customizable. The next-generation form toolkit.](https://firebasestorage.googleapis.com/v0/b/womotaq-f.appspot.com/o/womotaq%2Fwo_form%2Fwo_form-banner-dark.jpg?alt=media&token=97cf88c5-35cd-4d1e-8418-16bb43b12750)

wo_form is a powerful Dart package that takes the pain out of form creation and management. It provides a clean API for working with forms, rich customization options, and ready-to-use input widgets.

## Features

- **Effortless Serialization** – Convert forms to and from JSON for smooth data handling.
- **Flexible Rendering** – Fully control how forms are displayed, or plug into your existing UI.
- **Rich Widget Library** – Leverage advanced, prebuilt input widgets for common use cases.
- **Seamless Integration** – Drop into new or existing projects without boilerplate.

## Example

See https://github.com/Womotaq/wo_form_example.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';
import 'package:wo_form_example/utils/readable_json.dart';

enum ReportType {
  verbalAbuse,
  cheating,
  fairPlay,
  other;
}

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WoForm(
      uiSettings: const WoFormUiSettings(
        titleText: 'Signaler un utilisateur',
        submitMode: StandardSubmitMode(
          submitText: 'Envoyer',
          disableSubmitMode: DisableSubmitButton.whenInvalid,
          buttonPosition: SubmitButtonPosition.floating,
        ),
      ),
      exportSettings: const ExportSettings(
        metadata: {
          'reporterId': 'me',
          'reportedId': 'him',
        },
      ),
      children: [
        SelectInput<ReportType>(
          id: 'type',
          availibleValues: ReportType.values,
          minCount: 1,
          maxCount: 1,
          uiSettings: SelectInputUiSettings(
            labelText: 'Motif',
            valueBuilder: (type) => Text(
              switch (type) {
                null => 'Sélectionnez un motif',
                ReportType.cheating => 'Triche',
                ReportType.fairPlay => 'Fair play',
                ReportType.verbalAbuse => 'Violence verbale',
                ReportType.other => 'Autre',
              },
            ),
          ),
        ),
        const StringInput(
          id: 'message',
          uiSettings: StringInputUiSettings(
            hintText: 'Dites-en plus !',
            textCapitalization: TextCapitalization.sentences,
            maxLines: 5,
          ),
        ),
        const BooleanInput(
          id: 'block',
          uiSettings: BooleanInputUiSettings(
            labelText: 'Bloquer cette raclure ?',
            controlType: BooleanFieldControlType.checkbox,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        WidgetNode(builder: (_) => const SizedBox(height: 64)),
      ],
      onSubmitting: (root, values) async {
        // Save the values here
      },
      onSubmitSuccess: (context) async {
        // You can pop the context here, or push a new page...
      },
    );
  }
}

```
