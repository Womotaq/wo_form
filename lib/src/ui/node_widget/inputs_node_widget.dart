import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/ui/prefab/form_card.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final InputsNodeUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();

    final input = form.getInput(
      path: inputPath,
      values: context.read<WoFormValuesCubit>().state,
    );
    if (input is! InputsNode) {
      throw ArgumentError(
        'Expected <InputsNode> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    final inputWidgets =
        input.inputs.map((i) => i.toWidget(parentPath: inputPath)).toList();

    final subtitle = (mergedSettings.helperText ?? '').isNotEmpty
        ? Text(
            mergedSettings.helperText ?? '',
            style: context.woTheme.infoStyle,
          )
        : null;

    switch (mergedSettings.displayMode) {
      case null:
      case NodeDisplayMode.card:
        return FormCard(
          labelText: mergedSettings.labelText ?? '',
          helperText: mergedSettings.helperText ?? '',
          child: Padding(
            padding: const EdgeInsets.only(bottom: WoSize.small),
            child: Column(children: inputWidgets),
          ),
        );
      case NodeDisplayMode.tile:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (mergedSettings.labelText != null)
              Theme(
                // just to remove borders of ExpansionTile
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  title: Text(
                    mergedSettings.labelText!,
                    style: TextStyleExt.bold,
                  ),
                  subtitle: subtitle,
                  children: inputWidgets,
                ),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (subtitle != null) subtitle,
                  ...inputWidgets,
                ],
              ),
          ],
        );
    }
  }
}
