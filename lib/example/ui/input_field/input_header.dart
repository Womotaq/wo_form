import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';

// TODO : move
class InputHeader extends StatelessWidget {
  const InputHeader({
    required this.labelText,
    required this.helperText,
    required this.errorText,
    super.key,
  });

  final String labelText;
  final String helperText;
  final String errorText; // TODO : below box ?

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;

    final showSubtitle = helperText.isNotEmpty || errorText.isNotEmpty;

    return WoPadding.horizontalMedium(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (labelText.isNotEmpty || showSubtitle) WoGap.medium,
          if (labelText.isNotEmpty)
            Text(
              labelText,
              style: inputDecorationTheme.labelStyle,
            ),
          if (errorText.isNotEmpty)
            Text(
              errorText,
              style: inputDecorationTheme.errorStyle,
            )
          else if (helperText.isNotEmpty)
            Text(
              helperText,
              style: inputDecorationTheme.helperStyle,
            ),
        ],
      ),
    );
  }
}
