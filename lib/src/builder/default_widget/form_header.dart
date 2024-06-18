import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

/// By default, used by [InputsNodeWidget] and [WoFormPage].
class FormHeader extends StatelessWidget {
  const FormHeader({required this.data, super.key});

  final WoFormHeaderData data;

  @override
  Widget build(BuildContext context) {
    final labelText = data.labelText ?? '';
    final helperText = data.helperText ?? '';

    if (labelText.isEmpty && helperText.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text(
            labelText,
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Divider(color: Theme.of(context).colorScheme.primary),
          if (helperText.isNotEmpty) ...[
            Text(helperText),
            const SizedBox(height: 8),
          ],
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
