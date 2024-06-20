import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class DynamicInputsNodeWidgetBuilder extends StatelessWidget {
  const DynamicInputsNodeWidgetBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final DynamicInputsNodeUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final node = form.getInput(
      path: inputPath,
      values: context.read<WoFormValuesCubit>().state,
    );
    if (node is! DynamicInputsNode) {
      throw ArgumentError(
        'Expected <DynamicInputsNode> at path: "$inputPath", '
        'found: <${node.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(node.uiSettings) ?? node.uiSettings;

    return BlocSelector<WoFormLockCubit, Set<String>, bool>(
      selector: (lockedInputs) => lockedInputs.contains(inputPath),
      builder: (context, inputIsLocked) {
        return WoFormValueBuilder<List<WoFormElementMixin>>(
          inputPath: inputPath,
          builder: (context, inputs) {
            final fieldData = WoFieldData(
              inputPath: inputPath,
              input: node,
              value: inputs,
              errorText: null,
              uiSettings: mergedSettings,
              onValueChanged: inputIsLocked
                  ? null
                  : (List<WoFormElementMixin>? newInputs) {
                      valuesCubit.onValueChanged(
                        inputPath: inputPath,
                        value: List<WoFormElementMixin>.unmodifiable(
                          newInputs ?? [],
                        ),
                      );
                    },
            );

            return (mergedSettings.widgetBuilder ??
                    WoFormTheme.of(context)?.dynamicInputsNodeWidgetBuilder ??
                    DynamicInputsNodeWidget.new)
                .call(fieldData);
          },
        );
      },
    );
  }
}
