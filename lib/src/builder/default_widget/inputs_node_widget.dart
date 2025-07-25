import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget(this.data, {super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final node = data.input;

    final woFormTheme = WoFormTheme.of(context);

    return Column(
      children: [
        Builder(
          builder: (context) {
            final headerData = WoFormHeaderData(
              labelText: data.uiSettings.labelText,
              helperText: data.uiSettings.helperText,
            );

            return (data.uiSettings.headerBuilder ??
                    woFormTheme?.headerBuilder ??
                    FormHeader.new)
                .call(headerData);
          },
        ),
        Column(
          spacing: woFormTheme?.verticalSpacing ?? 0,
          children: node.children
              .map((i) => i.toWidget(parentPath: data.path))
              .toList(),
        ),
      ],
    );
  }
}
