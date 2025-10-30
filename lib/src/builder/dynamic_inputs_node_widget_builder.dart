import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/initial_value_keeper.dart';
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
    final node = getNode(context);

    return InitialValueKeeper(
      initialValue: node.initialChildren,
      path: path,
      child: BlocSelector<WoFormLockCubit, Set<String>, bool>(
        selector: (lockedInputs) => lockedInputs.contains(path),
        builder: (context, inputIsLocked) => WoFormErrorBuilder(
          path: path,
          builder: (context, error) => WoFormValueBuilder<List<WoFormNode>>(
            path: path,
            builder: (context, children) {
              final errorText = error == null
                  ? null
                  : context.woFormL10n.translateError(error);

              final fieldData = WoFieldData(
                path: path,
                input: node,
                value: children,
                errorText: errorText,
                onValueChanged: inputIsLocked
                    ? null
                    : (
                        List<WoFormNode>? newChildren, {
                        UpdateStatus updateStatus = UpdateStatus.yes,
                      }) => context.read<WoFormValuesCubit>().onValueChanged(
                        path: path,
                        value: List<WoFormNode>.unmodifiable(newChildren ?? []),
                        updateStatus: updateStatus,
                      ),
              );

              return (node.uiSettings?.widgetBuilder ??
                      WoFormTheme.of(context)?.dynamicInputsNodeWidgetBuilder ??
                      DynamicInputsNodeWidget.new)
                  .call(fieldData);
            },
          ),
        ),
      ),
    );
  }

  DynamicInputsNode getNode(BuildContext context) {
    final input = context.read<WoFormValuesCubit>().getNode(path: path);
    if (input is! DynamicInputsNode) {
      throw ArgumentError(
        'Expected <DynamicInputsNode> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const DynamicInputsNodeUiSettings();

    return input.copyWith(uiSettings: mergedSettings);
  }
}
