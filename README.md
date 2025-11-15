![wo_form Powerful. Serializable. Customizable. The next-generation form toolkit.](https://firebasestorage.googleapis.com/v0/b/womotaq-f.appspot.com/o/womotaq%2Fwo_form%2Fwo_form-banner-dark.jpg?alt=media&token=97cf88c5-35cd-4d1e-8418-16bb43b12750)

wo_form is a powerful Dart package that takes the pain out of form creation and management. It provides a clean API for working with forms, rich customization options, and ready-to-use input widgets.

## Features

- **Effortless Serialization** – Convert forms to and from JSON for smooth data handling.
- **Flexible Rendering** – Fully control how forms are displayed, or plug into your existing UI.
- **Rich Widget Library** – Leverage advanced, prebuilt input widgets for common use cases.
- **Seamless Integration** – Drop into new or existing projects without boilerplate.

## Demo

See live examples here : https://wo-form-examples.womotaq.com
Source code : https://github.com/Womotaq/wo_form_example

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
        titleText: 'Report a player',
        disableSubmitMode: DisableSubmitButton.whenInvalid,
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
            labelText: 'Do you want to block this player ?',
            controlType: BooleanFieldControlType.checkbox,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ),
        WidgetNode(builder: (_) => const SizedBox(height: 64)),
      ],
      onSubmitting: (root, values) async {
        final json = await root.exportToMap(values: values, context: context);

        if (!context.mounted) throw Exception("Context isn't mounted anymore");

        await showDialog<void>(
          context: context,
          builder: (BuildContext dialogContext) {
            return AlertDialog(
              title: const Text('This JSON will be sent.'),
              content: Text(readableJson(json)),
              actions: [
                FilledButton.tonalIcon(
                  onPressed: () => Navigator.of(dialogContext).pop(),
                  label: const Text('Ok'),
                ),
              ],
            );
          },
        );

        return;
      },
    );
  }
}

```

The standard language is english. For customization, provide the L10n at the top of your widget tree :

## Localizations

```dart
WoFormL10nProvider(
  l10n: WoFormL10n.fromLanguageCode(
    languageCode: 'en',

    // Overrides are possible here
    submit: 'Valider',
  ),
  child: MyApp(),
)
```

Notes: built-in languages: `en`, `fr`. For any other language build a `WoFormL10n` and pass it to the provider.
