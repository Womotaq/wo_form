import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/_export.dart';

/// Default submt button. Can be overriden by submitButtonBuilder from
/// [WoFormUiSettings] or using [WoFormTheme].
class SubmitButton extends StatelessWidget {
  const SubmitButton(this.data, {super.key});

  final SubmitButtonData data;

  @override
  Widget build(BuildContext context) {
    final loadingIndicator =
        context.select((WoFormStatusCubit c) => c.state is SubmittingStatus)
            ? SizedBox.square(
                dimension: 12,
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.onPrimary,
                  strokeWidth: 2,
                ),
              )
            : null;

    final text =
        (data.text != null && data.text!.isNotEmpty) || data.icon == null
            ? Text(
                data.text ?? 'Submit',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: data.onPressed == null
                          ? Theme.of(context).disabledColor
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
              )
            : null;

    final child = Stack(
      alignment: Alignment.center,
      children: [
        Opacity(
          opacity: loadingIndicator == null ? 1 : 0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (data.icon != null) Icon(data.icon),
              if (data.icon != null && text != null) const SizedBox(width: 8),
              if (text != null) text,
            ],
          ),
        ),
        if (loadingIndicator != null) loadingIndicator,
      ],
    );

    final button = FilledButton(
      onPressed: data.onPressed,
      child: child,
    );

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return button;
      case SubmitButtonPosition.body:
        return Padding(
          padding: const EdgeInsets.only(
            top: 32,
            left: 16,
            right: 16,
            bottom: 12,
          ),
          child: button,
        );
      case SubmitButtonPosition.bottomBar:
        return Padding(
          padding: const EdgeInsets.all(16),
          child: button,
        );
      case SubmitButtonPosition.floating:
        return text == null
            ? FloatingActionButton(
                backgroundColor: data.onPressed == null
                    ? Theme.of(context).disabledColor
                    : Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                onPressed: data.onPressed,
                child: child,
              )
            : FloatingActionButton.extended(
                backgroundColor: data.onPressed == null
                    ? Theme.of(context).disabledColor
                    : Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                onPressed: data.onPressed,
                label: child,
              );
    }
  }
}
