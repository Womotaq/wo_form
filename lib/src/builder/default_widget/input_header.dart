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

    final subtitleWidget = errorText.isNotEmpty
        ? Text(
            errorText,
            style:
                inputDecorationTheme.errorStyle ??
                theme.textTheme.labelMedium?.copyWith(
                  color: theme.colorScheme.error,
                ),
          )
        : helperText.isNotEmpty
        ? Text(
            helperText,
            style:
                inputDecorationTheme.helperStyle ?? theme.textTheme.labelMedium,
          )
        : null;

    // If there's truly nothing to show beyond the main child or its layout hints, shrink.
    if (labelText.isEmpty &&
        errorText.isEmpty &&
        helperText.isEmpty &&
        data.trailing == null) {
      return const SizedBox.shrink();
    }

    return InkWell(
      onTap: data.onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: data.shrinkWrap
              ? 0
              : theme.listTileTheme.minVerticalPadding ?? 4,
        ),
        child: Row(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align subtitle/trailing at top
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: data.shrinkWrap ? 0 : 56,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (labelText.isNotEmpty)
                      Text(
                        labelText,
                        style:
                            theme.inputDecorationTheme.labelStyle ??
                            theme.textTheme.bodyLarge,
                      ),
                    if (subtitleWidget != null) subtitleWidget,
                  ],
                ),
              ),
            ),
            if (data.trailing != null)
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: data.trailing,
              ),
          ],
        ),
      ),
    );
  }
}
