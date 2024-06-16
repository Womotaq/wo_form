import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
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
        ? Padding(
            padding: const EdgeInsets.only(right: WoSize.xsmall),
            child: SizedBox.square(
              dimension: WoSize.medium,
              child: CircularProgressIndicator(
                color: context.colorScheme.onPrimary,
                strokeWidth: 2,
              ),
            ),
          )
        : null;

    switch (data.position) {
      case SubmitButtonPosition.appBar:
        return FilledButton.icon(
          onPressed: data.onPressed,
          icon: loadingIndicator,
          label: Text(data.text ?? ''), // TODO : woFormL10n.submit
        );
      // TODO : change
      case SubmitButtonPosition.footer:
        return BigButton.filled(
          onPressed: data.onPressed,
          leading: loadingIndicator,
          child: Text(data.text ?? ''), // TODO : woFormL10n.submit
        );
    }
  }
}
