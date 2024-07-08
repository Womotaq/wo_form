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
      exportSettings: const ExportSettings(
        metadata: {
          'reporterId': 'me',
          'reportedId': 'him',
        },
      ),
      uiSettings: const WoFormUiSettings(
        titleText: 'Report a user',
        submitMode: StandardSubmitMode(
          submitText: 'Send',
          disableSubmitMode: DisableSubmitButton.whenInvalid,
        ),
      ),
      inputs: [
        SelectInput<ReportType>(
          id: 'type',
          availibleValues: ReportType.values,
          minCount: 1,
          maxCount: 1,
          uiSettings: SelectInputUiSettings(
            labelText: 'Reason',
            valueBuilder: (type) => Text(
              switch (type) {
                null => 'Select a reason',
                ReportType.cheating => 'Cheating',
                ReportType.fairPlay => 'Fair play',
                ReportType.verbalAbuse => 'Verbal abuse',
                ReportType.other => 'Other',
              },
            ),
          ),
        ),
        const StringInput(
          id: 'message',
          uiSettings: StringInputUiSettings(
            hintText: 'Tell us more !',
            textCapitalization: TextCapitalization.sentences,
            maxLines: 5,
          ),
        ),
        const BooleanInput(
          id: 'block',
          uiSettings: BooleanInputUiSettings(
            labelText: 'Block this user ?',
            controlType: BooleanFieldControlType.checkbox,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
      ],
      onSubmitting: (_, __) async {
        await Future<void>.delayed(const Duration(seconds: 3));
        // Do your stuff here
      },
      onSubmitSuccess: (context) {
        // Close the page here
      },
    ).toPage();
  }
}

```
