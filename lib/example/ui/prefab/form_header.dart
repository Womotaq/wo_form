import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';

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

    return WoPadding.horizontalMedium(
      child: Column(
        children: [
          WoGap.medium,
          Text(
            labelText,
            style: context.textTheme.titleCard,
          ),
          WoPadding.horizontalXxlarge(
            child: Divider(color: context.colorScheme.primary),
          ),
          if (helperText.isNotEmpty) ...[
            Text(
              helperText,
              style: Theme.of(context).inputDecorationTheme.helperStyle,
            ),
            WoGap.small,
          ],
          WoGap.large,
        ],
      ),
    );
  }
}
