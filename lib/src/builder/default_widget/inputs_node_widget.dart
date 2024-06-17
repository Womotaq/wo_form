import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget({required this.data, super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    final inputWidgets = data.input.inputs
        .map((i) => i.toWidget(parentPath: data.inputPath))
        .toList();

    final subtitle = (data.uiSettings.helperText ?? '').isNotEmpty
        ? Text(
            data.uiSettings.helperText ?? '',
            style:
                inputDecorationTheme.helperStyle ?? theme.textTheme.labelMedium,
          )
        : null;

    switch (data.uiSettings.displayMode) {
      case null:
      case NodeDisplayMode.screenWithHeader:
        return Column(
          children: [
            FormHeader(
              labelText: data.uiSettings.labelText ?? '',
              helperText: data.uiSettings.helperText ?? '',
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Column(children: inputWidgets),
            ),
          ],
        );
      case NodeDisplayMode.expansionTile:
        return Theme(
          // just to remove borders of ExpansionTile
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              data.uiSettings.labelText ?? '',
              style: inputDecorationTheme.labelStyle
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: subtitle,
            children: inputWidgets,
          ),
        );
    }
  }
}
