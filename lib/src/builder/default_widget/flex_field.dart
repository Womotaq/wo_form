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
    this.onTap,
    this.shrinkWrap = true,
    this.disableMode = FlexFieldDisableMode.none,
    this.headerBuilder,
    super.key,
  });

  final Widget child;
  final int? headerFlex;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final Widget? trailing;
  final Widget? prefixIcon;
  final VoidCallback? onTap;
  final bool shrinkWrap;
  final FlexFieldDisableMode disableMode;
  final InputHeaderBuilderDef? headerBuilder;

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
                onTap: onTap,
                shrinkWrap: shrinkWrap,
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
          if (headerFlex == null) headerDisabled,
          // ListTile(
          //   contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          //   leading: prefixIcon,
          //   title: child,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            child: Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (prefixIcon != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      right: 16,
                    ),
                    child: prefixIcon,
                  ),
                if (headerFlex != null) ...[
                  Expanded(
                    flex: headerFlex!,
                    child: headerDisabled,
                  ),
                  const SizedBox(width: 16),
                ],
                Expanded(
                  flex: 10,
                  child: child,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
