# wo_form

`wo_form` is a feature-rich Dart package designed to make form handling easier and more efficient. With `wo_form`, you can seamlessly jsonify and unjsonify forms, gain complete control over form rendering, and utilize a collection of prebuilt advanced widgets for basic inputs.

## Features

- **Jsonify/Unjsonify Forms**: Easily convert your forms to and from JSON for effortless data handling.
- **Customizable Rendering**: Take full control over how your forms are rendered, enabling a highly customizable user experience.
- **Prebuilt Advanced Widgets**: Access a variety of advanced widgets for common input types, saving you time and effort in form creation.
- **Easy Integration**: Quickly integrate `wo_form` into your projects and streamline your form management processes.

## Example

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

Upcoming :

- Better date selection for large screens
