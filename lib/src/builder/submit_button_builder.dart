import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class SubmitButtonBuilder extends StatelessWidget {
  const SubmitButtonBuilder({this.path, this.builder, super.key});

  /// Provide a path if this button can only submit the node at this path.
  final String? path;
  final SubmitButtonBuilderDef? builder;

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();

    final disabled = switch (root.uiSettings.disableSubmitMode) {
      DisableSubmitButton.whenInitialOrSubmitSuccess => context.select(
        (WoFormStatusCubit c) =>
            c.state is InitialStatus || c.state is SubmitSuccessStatus,
      ),
      DisableSubmitButton.whenInvalid => context.select(
        (WoFormValuesCubit c) => c.currentErrors.isNotEmpty,
      ),
      DisableSubmitButton.never => false,
    };

    final formUiSettings = root.uiSettings;

    return WoFormValueSelector<String>(
      selector: (values) => path ?? values.submitPath,
      builder: (context, submitPath) {
        return WoFormValueSelector<bool>(
          selector: (values) {
            final multistepSettings = formUiSettings.multistepSettings;
            if (multistepSettings == null) return false;

            // Probably means submitPath == ''
            if (!submitPath.startsWith('/')) return false;

            // When generating steps, it is impossible to predict
            // when they will end, so we consider they never do.
            if (multistepSettings.generatingSteps) return true;

            final submitStepId = submitPath.substring(1);

            final index = root.children.indexed
                .firstWhereOrNull((data) => data.$2.id == submitStepId)
                ?.$1;
            if (index == null) return false;
            return index != root.children.length - 1;
          },
          builder: (context, isTemporaryStep) {
            final submitButtonData = SubmitButtonData(
              text: isTemporaryStep
                  ? formUiSettings.multistepSettings?.nextText ??
                        context.read<WoFormL10n?>()?.next()
                  : formUiSettings.submitText ??
                        context.read<WoFormL10n?>()?.submit(),
              icon: isTemporaryStep ? null : formUiSettings.submitIcon,
              onPressed: disabled
                  ? null
                  : () => context.read<WoFormValuesCubit>().submit(context),
              position: formUiSettings.submitButtonPosition,
              path: submitPath,
            );

            return (builder ??
                    root.uiSettings.submitButtonBuilder ??
                    WoFormTheme.of(context)?.submitButtonBuilder ??
                    SubmitButton.new)
                .call(submitButtonData);
          },
        );
      },
    );
  }
}
