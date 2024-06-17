import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class SubmitButtonData {
  const SubmitButtonData({
    required this.pageIndex,
    required this.text,
    required this.onPressed,
    required this.position,
  });

  final int pageIndex;
  final String? text;
  final VoidCallback? onPressed;
  final SubmitButtonPosition position;

  SubmitButtonData copyWith({
    String? text,
    SubmitButtonPosition? position,
  }) =>
      SubmitButtonData(
        pageIndex: pageIndex,
        text: text ?? this.text,
        onPressed: onPressed,
        position: position ?? this.position,
      );
}

class SubmitButtonBuilder extends StatelessWidget {
  const SubmitButtonBuilder({this.pageIndex = 0, super.key});

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();

    final disabled = switch (form.uiSettings.submitMode.disableSubmitMode) {
      DisableSubmitButton.whenInitialOrSubmitted => switch (
            context.watch<WoFormStatusCubit>().state) {
          InitialStatus() || SubmittedStatus() => true,
          _ => false,
        },
      DisableSubmitButton.whenInvalid => context.select(
          (WoFormValuesCubit c) => form.getErrors(c.state).isNotEmpty,
        ),
      DisableSubmitButton.never => false,
    };

    final submitMode = form.uiSettings.submitMode;

    final submitButtonData = SubmitButtonData(
      pageIndex: pageIndex,
      text: submitMode is PageByPageSubmitMode &&
              pageIndex < form.inputs.length - 1
          ? submitMode.nextText ?? context.read<WoFormL10n?>()?.next
          : submitMode.submitText ?? context.read<WoFormL10n?>()?.submit,
      onPressed: disabled
          ? null
          : () {
              FocusScope.of(context).unfocus();
              context.read<WoFormValuesCubit>().submit();
            },
      position: submitMode is StandardSubmitMode
          ? submitMode.buttonPosition
          : SubmitButtonPosition.bottom,
    );

    return form.uiSettings.submitButtonBuilder?.call(submitButtonData) ??
        WoFormTheme.of(context)?.submitButtonBuilder?.call(submitButtonData) ??
        SubmitButton(data: submitButtonData);
  }
}
