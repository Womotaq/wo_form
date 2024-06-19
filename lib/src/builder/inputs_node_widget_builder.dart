import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

    final node = form.getInput(
      path: inputPath,
      values: context.read<WoFormValuesCubit>().state,
    );
    if (node is! InputsNode) {
      throw ArgumentError(
        'Expected <InputsNode> at path: "$inputPath", '
        'found: <${node.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(node.uiSettings) ?? node.uiSettings;

    final fieldData = WoFieldData(
      inputPath: inputPath,
      input: node,
      value: null,
      errorText: null,
      uiSettings: mergedSettings,
      onValueChanged: (_) {},
    );

    return mergedSettings.widgetBuilder?.call(fieldData) ??
        WoFormTheme.of(context)?.inputsNodeWidgetBuilder?.call(fieldData) ??
        InputsNodeWidget(data: fieldData);
  }
}
