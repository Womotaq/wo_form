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
    final form = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final node = form.getChild(path: path, values: valuesCubit.state);
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
        return WoFormValueBuilder<List<WoFormNodeMixin>>(
          path: path,
          builder: (context, inputs) {
            final fieldData = WoFieldData(
              path: path,
              input: node,
              value: inputs,
              errorText: null,
              uiSettings: mergedSettings,
              onValueChanged: inputIsLocked
                  ? null
                  : (
                      List<WoFormNodeMixin>? newInputs, {
                      UpdateStatus updateStatus = UpdateStatus.yes,
                    }) {
                      valuesCubit.onValueChanged(
                        path: path,
                        value: List<WoFormNodeMixin>.unmodifiable(
                          newInputs ?? [],
                        ),
                        updateStatus: updateStatus,
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
