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
