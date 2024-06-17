import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';

/// Default submt button. Can be overriden by submitButtonBuilder from
/// [WoFormUiSettings] or using [WoFormTheme].
class SubmitButton extends StatelessWidget {
  const SubmitButton({required this.data, super.key});

  final SubmitButtonData data;

  @override
  Widget build(BuildContext context) {
    final formStatus = context.watch<WoFormStatusCubit>().state;

    final loadingIndicator = formStatus is SubmittingStatus
        ? SizedBox.square(
            dimension: 12,
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.onPrimary,
              strokeWidth: 2,
            ),
          )
        : null;

    final text = Text(
      data.text ?? '',
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: data.onPressed == null
                ? Theme.of(context).disabledColor
                : Theme.of(context).colorScheme.onPrimary,
          ),
    ); // TODO : woFormL10n.submit
    final child = loadingIndicator == null
        ? text
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              loadingIndicator,
              const SizedBox(width: 8),
              text,
              const SizedBox(width: 20),
            ],
          );

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return FilledButton(
          onPressed: data.onPressed,
          child: child,
        );
      // TODO : change
      case SubmitButtonPosition.bottom:
        return Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 16,
            right: 16,
          ),
          child: FilledButton(
            onPressed: data.onPressed,
            child: child,
          ),
        );
    }
  }
}
