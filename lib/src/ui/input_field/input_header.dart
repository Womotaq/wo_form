import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';

class InputHeader extends StatelessWidget {
  const InputHeader({
    required this.isRequired,
    required this.labelText,
    required this.helperText,
    required this.errorText,
    super.key,
  });

  final bool isRequired;
  final String labelText;
  final String helperText;
  final String errorText; // TODO : below box ?

  @override
  Widget build(BuildContext context) {
    final labelAsterisked = labelText + (isRequired ? '*' : '');
    final showLabel = labelAsterisked.isNotEmpty && labelText != '*';

    final showSubtitle = helperText.isNotEmpty || errorText.isNotEmpty;

    return WoPadding.horizontalMedium(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showLabel || showSubtitle) WoGap.medium,
          if (showLabel)
            Text(
              labelAsterisked,
              style: context.textTheme.bodyLarge,
            ),
          if (errorText.isNotEmpty)
            Text(
              errorText,
              style: context.textTheme.labelMedium
                  ?.copyWith(color: context.colorScheme.error),
            )
          else if (helperText.isNotEmpty)
            Text(
              helperText,
              style: context.woTheme.infoStyle,
            ),
        ],
      ),
    );
  }
}
