import 'package:flutter/material.dart';
import 'package:wo_form/src/_export.dart';

class SubmitButtonData {
  const SubmitButtonData({
    required this.text,
    required this.onPressed,
    required this.position,
    this.formStatus,
  });

  final String? text;
  final VoidCallback? onPressed;
  final SubmitButtonPosition position;
  final WoFormStatus? formStatus;
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({required this.data, super.key});

  final SubmitButtonData data;

  @override
  Widget build(BuildContext context) {
    final loadingIndicator = data.formStatus is SubmittingStatus
        ? SizedBox.square(
            dimension: 16,
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.onPrimary,
              strokeWidth: 2,
            ),
          )
        : null;

    final text = Text(data.text ?? ''); // TODO : woFormL10n.submit
    final child = loadingIndicator == null
        ? text
        : Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              loadingIndicator,
              const SizedBox(width: 8),
              text,
              const SizedBox(width: 24),
            ],
          );

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return FilledButton(
          onPressed: data.onPressed,
          child: child,
        );
      // TODO : change
      case SubmitButtonPosition.footer:
        return Padding(
          padding: const EdgeInsets.only(top: 32),
          child: ListTile(
            title: FilledButton(
              onPressed: data.onPressed,
              child: child,
            ),
          ),
        );
    }
  }
}
