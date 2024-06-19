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

    switch (mergedSettings.displayMode) {
      case null:
      case InputsNodeDisplayMode.expanded:
        final fieldData = WoFieldData(
          inputPath: inputPath,
          input: node,
          value: null,
          errorText: null,
          uiSettings: mergedSettings,
          onValueChanged: (_) {},
        );

        return (mergedSettings.widgetBuilder ??
                WoFormTheme.of(context)?.inputsNodeWidgetBuilder ??
                InputsNodeWidget.new)
            .call(fieldData);
      case InputsNodeDisplayMode.tapToExpand:
        final woFormL10n = context.read<WoFormL10n?>();

        return BlocSelector<WoFormStatusCubit, WoFormStatus, bool>(
          selector: (status) {
            return status is InvalidValuesStatus;
          },
          builder: (context, showError) {
            return BlocSelector<WoFormValuesCubit, Map<String, dynamic>,
                String?>(
              selector: (values) {
                return woFormL10n?.errors(
                  node
                      .getErrors(
                        values,
                        parentPath:
                            (inputPath.split('/')..removeLast()).join('/'),
                      )
                      .length,
                );
              },
              builder: (context, errorText) {
                final expanderData = WoFieldData(
                  inputPath: inputPath,
                  input: node,
                  value: null,
                  errorText: showError ? errorText : null,
                  uiSettings: mergedSettings,
                  onValueChanged: (_) {},
                );

                return (mergedSettings.expanderBuilder ??
                        WoFormTheme.of(context)?.inputsNodeExpanderBuilder ??
                        InputsNodeExpander.new)
                    .call(expanderData);
              },
            );
          },
        );
    }
  }
}
