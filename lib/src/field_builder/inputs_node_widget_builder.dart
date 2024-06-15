import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/ui/prefab/form_header.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidgetBuilder extends StatelessWidget {
  const InputsNodeWidgetBuilder({
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

    final mergedSettings =
        uiSettings?.merge(input.uiSettings) ?? input.uiSettings;

    final fieldData = WoFieldData(
      inputPath: inputPath,
      input: input,
      value: null,
      errorText: null,
      uiSettings: mergedSettings,
      onValueChanged: (_) {},
    );

    return InputsNodeWidget(data: fieldData);
  }
}

class InputsNodeWidget extends StatelessWidget {
  const InputsNodeWidget({required this.data, super.key});

  final WoFieldData<InputsNode, void, InputsNodeUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;

    final inputWidgets = data.input.inputs
        .map((i) => i.toWidget(parentPath: data.inputPath))
        .toList();

    final subtitle = (data.uiSettings.helperText ?? '').isNotEmpty
        ? Text(
            data.uiSettings.helperText ?? '',
            style: inputDecorationTheme.helperStyle,
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
            Padding(
              padding: const EdgeInsets.only(bottom: WoSize.small),
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
