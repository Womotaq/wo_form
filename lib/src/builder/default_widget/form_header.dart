import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

/// By default, used by [InputsNodeWidget] and [WoFormPage].
class FormHeader extends StatelessWidget {
  const FormHeader({
    required this.labelText,
    required this.helperText,
    super.key,
  });

  final String labelText;
  final String helperText;

  @override
  Widget build(BuildContext context) {
    if (labelText.isEmpty && helperText.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            labelText,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Divider(color: Theme.of(context).colorScheme.primary),
          ),
          if (helperText.isNotEmpty) ...[
            Text(
              helperText,
              style: Theme.of(context).inputDecorationTheme.helperStyle ??
                  Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: 8),
          ],
        ],
      ),
    );
  }
}
