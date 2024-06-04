import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget({
    required this.inputId,
    this.settings,
    super.key,
  });

  final String inputId;
  final MapFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();

    final input = form.getInput(inputId: inputId)! as InputsNode;
    final inputSettings = input.fieldSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (mergedSettings.labelText != null)
          ListTile(
            title: Text(mergedSettings.labelText!),
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.zero,
          ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: input.inputs.map((i) => i.toWidget()).toList(),
          ),
        ),
      ],
    );
  }
}
