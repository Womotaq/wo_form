import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget({
    required this.inputPath,
    this.settings,
    super.key,
  });

  final String inputPath;
  final MapFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();

    final input = form.getInput(path: inputPath);
    if (input is! InputsNode) {
      throw ArgumentError(
        'Expected <InputsNode> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.fieldSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (mergedSettings.labelText != null)
          ExpansionTile(
            title: Text(mergedSettings.labelText!),
            children: input.inputs
                .map((i) => i.toWidget(parentPath: inputPath))
                .toList(),
          )
        else
          Column(
            children: input.inputs
                .map((i) => i.toWidget(parentPath: inputPath))
                .toList(),
          ),
      ],
    );
  }
}
