import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';

class FormCard extends StatelessWidget {
  const FormCard({
    required this.labelText,
    required this.helperText,
    required this.child,
    super.key,
  });

  final String labelText;
  final String helperText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        WoPadding.horizontalMedium(
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
                Text(helperText, style: context.woTheme.infoStyle),
                WoGap.small,
              ],
              WoGap.small,
            ],
          ),
        ),
        WoGap.medium,
        child,
      ],
    );
  }
}
