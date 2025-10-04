import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class DynamicInputsNodeWidgetBuilder extends StatelessWidget {
  const DynamicInputsNodeWidgetBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final DynamicInputsNodeUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final node = context.read<WoFormValuesCubit>().getNode(path: path);
    if (node is! DynamicInputsNode) {
      throw ArgumentError(
        'Expected <DynamicInputsNode> at path: "$path", '
        'found: <${node.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(node.uiSettings) ?? node.uiSettings;

    return BlocSelector<WoFormLockCubit, Set<String>, bool>(
      selector: (lockedInputs) => lockedInputs.contains(path),
      builder: (context, inputIsLocked) {
        return WoFormValueBuilder<List<WoFormNode>>(
          path: path,
          builder: (context, inputs) {
            final fieldData = WoFieldData(
              path: path,
              input: node,
              value: inputs,
              uiSettings: mergedSettings,
              onValueChanged: inputIsLocked
                  ? null
                  : (
                      List<WoFormNode>? newInputs, {
                      UpdateStatus updateStatus = UpdateStatus.yes,
                    }) => context.read<WoFormValuesCubit>().onValueChanged(
                      path: path,
                      value: List<WoFormNode>.unmodifiable(newInputs ?? []),
                      updateStatus: updateStatus,
                    ),
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
