import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class InputsNodeWidgetBuilder extends StatelessWidget {
  const InputsNodeWidgetBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final InputsNodeUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final node = getNode(context);

    return Builder(
      builder: (context) {
        switch (node.uiSettings?.childrenVisibility) {
          case null:
          case ChildrenVisibility.always:
            final fieldData = WoFieldData(
              path: path,
              input: node,
              value: null,
              onValueChanged:
                  (
                    _, {
                    UpdateStatus updateStatus = UpdateStatus.yes,
                  }) {},
            );

            return (node.uiSettings?.widgetBuilder ??
                    WoFormTheme.of(context)?.inputsNodeWidgetBuilder ??
                    InputsNodeWidget.new)
                .call(fieldData);
          case ChildrenVisibility.whenAsked:
            final woFormL10n = context.read<WoFormL10n?>();

            return BlocSelector<
              WoFormStatusCubit,
              WoFormStatus,
              List<WoFormInputError>
            >(
              selector: (status) =>
                  status is InProgressStatus ? status.errors : [],
              builder: (context, errors) {
                final nErrors = errors
                    .where((error) => error.path.startsWith(path))
                    .length;
                final errorText = nErrors > 0
                    ? woFormL10n?.errors(nErrors)
                    : null;

                final expanderData = WoFieldData(
                  path: path,
                  input: node,
                  value: null,
                  errorText: errorText,
                  onValueChanged:
                      (
                        _, {
                        UpdateStatus updateStatus = UpdateStatus.yes,
                      }) {},
                );

                return (node.uiSettings?.expanderBuilder ??
                        WoFormTheme.of(context)?.inputsNodeExpanderBuilder ??
                        InputsNodeExpander.new)
                    .call(expanderData);
              },
            );
        }
      },
    );
  }

  InputsNode getNode(BuildContext context) {
    final input = context.read<WoFormValuesCubit>().getNode(path: path);
    if (input is! InputsNode) {
      throw ArgumentError(
        'Expected <InputsNode> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const InputsNodeUiSettings();

    return input.copyWith(uiSettings: mergedSettings);
  }
}
