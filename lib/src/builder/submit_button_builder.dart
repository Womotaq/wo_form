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

    // If multisteping, use nextText :
    //    If submitPath != ''
    //    If !generating steps & atLastStep

    return WoFormValueSelector<String>(
      selector: (values) => path ?? values.submitPath,
      builder: (context, submitPath) => WoFormValueSelector<bool>(
        selector: (values) {
          final multistepSettings = formUiSettings.multistepSettings;
          if (multistepSettings == null) return false;

          // Probably means submitPath == ''
          if (!submitPath.startsWith('/')) return false;

          // With generating steps, it is impossible to predict
          // when the the form ends, so we consider it never does.
          if (multistepSettings.generatingSteps) return true;

          return values.currentStepIndex != root.children.length - 1;
        },
        builder: (context, isTemporarySubmit) {
          final submitButtonData = SubmitButtonData(
            text: isTemporarySubmit
                ? formUiSettings.multistepSettings?.nextText ??
                      context.read<WoFormL10n?>()?.next()
                : formUiSettings.submitText ??
                      context.read<WoFormL10n?>()?.submit(),
            icon: isTemporarySubmit ? null : formUiSettings.submitIcon,
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
      ),
    );
  }
}
