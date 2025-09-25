import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

/// By default, used by [InputsNodeWidget] and [WoFormPage].
class FormHeader extends StatelessWidget {
  const FormHeader(
    this.data, {
    this.labelStyle,
    super.key,
  });

  FormHeader.fromInputHeaderData(WoFormInputHeaderData data, {super.key})
    : data = WoFormHeaderData(
        labelText: data.labelText,
        helperText: data.helperText,
      ),
      labelStyle = null;

  final WoFormHeaderData data;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    final labelText = data.labelText ?? '';
    final helperText = data.helperText ?? '';

    if (labelText.isEmpty && helperText.isEmpty) return const SizedBox.shrink();

    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 16,
        right: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text(
            labelText,
            style:
                labelStyle ??
                theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Divider(color: theme.colorScheme.primary),
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
