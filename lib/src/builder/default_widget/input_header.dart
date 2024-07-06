import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

/// By default, used by [StringField] and [SelectField].
class InputHeader extends StatelessWidget {
  const InputHeader(this.data, {super.key});

  final WoFormInputHeaderData data;

  @override
  Widget build(BuildContext context) {
    final labelText = data.labelText ?? '';
    final helperText = data.helperText ?? '';
    final errorText = data.errorText ?? '';

    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    if (labelText.isEmpty &&
        errorText.isEmpty &&
        helperText.isEmpty &&
        data.trailing == null) {
      return const SizedBox.shrink();
    }

    return ListTile(
      title: Text(labelText),
      subtitle: errorText.isNotEmpty
          ? Text(
              errorText,
              style: inputDecorationTheme.errorStyle ??
                  theme.textTheme.labelMedium
                      ?.copyWith(color: theme.colorScheme.error),
            )
          : helperText.isNotEmpty
              ? Text(
                  helperText,
                  style: inputDecorationTheme.helperStyle ??
                      theme.textTheme.labelMedium,
                )
              : null,
      trailing: data.trailing,
      onTap: data.onTap,
      minTileHeight: data.shrinkWrap ? 0 : null,
      minVerticalPadding: data.shrinkWrap ? 0 : null,
    );
  }
}
