import 'package:flutter/material.dart';

class InputHeader extends StatelessWidget {
  const InputHeader({
    required this.labelText,
    required this.helperText,
    required this.errorText,
    super.key,
  });

  final String labelText;
  final String helperText;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    if (labelText.isEmpty && errorText.isEmpty && helperText.isEmpty) {
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
      minTileHeight: 0,
      minVerticalPadding: 0,
    );
  }
}
