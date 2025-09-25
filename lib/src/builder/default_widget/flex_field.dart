import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

enum FlexFieldDisableMode { none, header, all }

class FlexField extends StatelessWidget {
  const FlexField({
    required this.child,
    required this.headerFlex,
    this.labelText,
    this.helperText,
    this.errorText,
    this.trailing,
    this.prefixIcon,
    this.onTapHeader,
    this.shrinkWrapHeader = true,
    this.disableMode = FlexFieldDisableMode.none,
    this.headerBuilder,
    super.key,
  });

  final Widget child;

  /// If null or O, header will be placed above the field.
  /// Else, header and selector will be in a the same row.
  /// If -1, the field will take as much space as he wants
  /// (might not work with all fields).
  /// Else, the field will be wrapped in a Flexible with a flex value of 10,
  /// and the header with a flex value of [headerFlex].
  final int? headerFlex;

  // --- HEADER ---
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final Widget? trailing;
  final VoidCallback? onTapHeader;
  final bool shrinkWrapHeader;
  final InputHeaderBuilderDef? headerBuilder;

  final Widget? prefixIcon;
  final FlexFieldDisableMode disableMode;

  @override
  Widget build(BuildContext context) {
    final header =
        (headerBuilder ??
                WoFormTheme.of(context)?.inputHeaderBuilder ??
                InputHeader.new)
            .call(
              WoFormInputHeaderData(
                labelText: labelText,
                helperText: helperText,
                errorText: errorText,
                trailing: trailing,
                onTap: onTapHeader,
                shrinkWrap: shrinkWrapHeader,
              ),
            );

    final headerDisabled = disableMode == FlexFieldDisableMode.header
        ? Opacity(opacity: 0.3, child: header)
        : header;

    return Opacity(
      opacity: disableMode == FlexFieldDisableMode.all ? 0.3 : 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          if (headerFlex == null || headerFlex == 0)
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: headerDisabled,
            ),
          Flex(
            direction: Axis.horizontal,
            // This sticks the prefixIcon to the top
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (prefixIcon != null)
                Padding(
                  padding: EdgeInsets.only(
                    top:
                        (Theme.of(
                              context,
                            ).inputDecorationTheme.contentPadding?.vertical ??
                            32) /
                        2,
                    left: 16,
                  ),
                  child: prefixIcon,
                ),
              Expanded(
                child: Row(
                  // This keeps the header & the child centered
                  children: [
                    if (headerFlex != null && headerFlex != 0)
                      Expanded(
                        flex: headerFlex == -1 ? 1 : headerFlex!,
                        child: headerDisabled,
                      ),
                    const SizedBox(width: 16),
                    Expanded(
                      flex: headerFlex == -1 ? 0 : 10,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: child,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
