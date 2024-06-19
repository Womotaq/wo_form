import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/example/app.dart';
import 'package:wo_form/wo_form.dart';

class PushPageNodeWidgetBuilder extends StatelessWidget {
  const PushPageNodeWidgetBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final PushPageNodeUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();

    final node = form.getInput(
      path: inputPath,
      values: context.read<WoFormValuesCubit>().state,
    );
    if (node is! PushPageNode) {
      throw ArgumentError(
        'Expected <PushPageNode> at path: "$inputPath", '
        'found: <${node.runtimeType}>',
      );
    }

    final mergedSettings =
        uiSettings?.merge(node.uiSettings) ?? node.uiSettings;

    final woFormL10n = context.read<WoFormL10n?>();

    return BlocSelector<WoFormStatusCubit, WoFormStatus, bool>(
      selector: (status) => status is InvalidValuesStatus,
      builder: (context, showError) {
        return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, String?>(
          // TODO : solve : error doesn't work
          selector: (values) => showError
              ? woFormL10n?.translateError(
                  node.getErrors(values, parentPath: inputPath).firstOrNull,
                )
              : null,
          builder: (context, errorText) {
            final fieldData = WoFieldData(
              inputPath: inputPath,
              input: node,
              value: null,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (_) => context.pushPage(
                RepositoryProvider.value(
                  value: form,
                  child: MultiBlocProvider(
                    providers: [
                      BlocProvider.value(
                        value: context.read<WoFormValuesCubit>(),
                      ),
                      BlocProvider.value(
                        value: context.read<WoFormStatusCubit>(),
                      ),
                      BlocProvider.value(
                        value: context.read<WoFormLockCubit>(),
                      ),
                    ],
                    child: Scaffold(
                      appBar: AppBar(),
                      body: node.input.toWidget(parentPath: inputPath),
                    ),
                  ),
                ),
              ),
            );

            return mergedSettings.widgetBuilder?.call(fieldData) ??
                WoFormTheme.of(context)
                    ?.pushPageNodeWidgetBuilder
                    ?.call(fieldData) ??
                PushPageNodeWidget(data: fieldData);
          },
        );
      },
    );
  }
}
