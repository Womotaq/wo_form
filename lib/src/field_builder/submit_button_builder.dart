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

class SubmitButtonBuilder extends StatefulWidget {
  const SubmitButtonBuilder({super.key});

  @override
  State<SubmitButtonBuilder> createState() => _SubmitButtonBuilderState();
}

class _SubmitButtonBuilderState extends State<SubmitButtonBuilder> {
  int pageIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final pageController = context.read<WoFormValuesCubit>().pageController;
    pageController.addListener(
      () => setState(() => pageIndex = pageController.page!.toInt()),
    );
  }

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

    final submitButtonData = SubmitButtonData(
      pageIndex: pageIndex,
      text: pageIndex == form.inputs.length - 1
          ? context.read<WoFormL10n?>()?.submitText
          : context.read<WoFormL10n?>()?.nextText,
      onPressed: disabled
          ? null
          : () {
              FocusScope.of(context).unfocus();
              context.read<WoFormValuesCubit>().submit();
            },
      position: SubmitButtonPosition.bottom,
    );

    return form.uiSettings.submitButtonBuilder?.call(submitButtonData) ??
        WoFormTheme.of(context)?.submitButtonBuilder?.call(submitButtonData) ??
        SubmitButton(data: submitButtonData);
  }
}
