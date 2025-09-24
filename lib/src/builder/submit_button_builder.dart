import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class SubmitButtonBuilder extends StatelessWidget {
  const SubmitButtonBuilder({
    this.submitButtonBuilder,
    super.key,
  });

  final SubmitButtonBuilderDef? submitButtonBuilder;

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();

    final disabled = switch (root.uiSettings.disableSubmitMode) {
      DisableSubmitButton.whenInitialOrSubmitSuccess => switch (context
          .watch<WoFormStatusCubit>()
          .state) {
        InitialStatus() || SubmitSuccessStatus() => true,
        _ => false,
      },
      DisableSubmitButton.whenInvalid => context.select(
        (WoFormValuesCubit c) => c.currentErrors.isNotEmpty,
      ),
      DisableSubmitButton.never => false,
    };

    final formUiSettings = root.uiSettings;

    final submitButtonData = SubmitButtonData(
      text: formUiSettings.submitText ?? context.read<WoFormL10n?>()?.submit(),
      icon: formUiSettings.submitIcon,
      onPressed: disabled
          ? null
          : () => context.read<WoFormValuesCubit>().submit(context),
      position: formUiSettings.submitButtonPosition,
      path: context.read<WoFormValuesCubit>().currentPath,
    );

    return (submitButtonBuilder ??
            root.uiSettings.submitButtonBuilder ??
            WoFormTheme.of(context)?.submitButtonBuilder ??
            SubmitButton.new)
        .call(submitButtonData);
  }
}
