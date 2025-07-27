import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class SubmitButtonBuilder extends StatelessWidget {
  const SubmitButtonBuilder({this.pageIndex = 0, super.key});

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();

    final disabled = switch (root.uiSettings.submitMode.disableSubmitMode) {
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

    final submitMode = root.uiSettings.submitMode;

    final textIsNext =
        submitMode is PageByPageSubmitMode &&
        context.read<WoFormValuesCubit>().currentSubmitType == SubmitType.step;

    final submitButtonData = SubmitButtonData(
      pageIndex: pageIndex,
      text: textIsNext
          ? submitMode.nextText ?? context.read<WoFormL10n?>()?.next()
          : submitMode.submitText ?? context.read<WoFormL10n?>()?.submit(),
      icon: textIsNext ? null : submitMode.submitIcon,
      onPressed: disabled
          ? null
          : () => context.read<WoFormValuesCubit>().submit(context),
      position: submitMode.buttonPosition,
    );

    return (root.uiSettings.submitButtonBuilder ??
            WoFormTheme.of(context)?.submitButtonBuilder ??
            SubmitButton.new)
        .call(submitButtonData);
  }
}
