import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

enum FlexFieldDisableMode { none, header, all }

class FlexField extends StatelessWidget {
  const FlexField({
    required this.path,
    required this.child,
    required this.labelFlex,
    this.labelText,
    this.helperText,
    this.errorText,
    this.trailing,
    this.onTap,
    this.shrinkWrap = true,
    this.disableMode = FlexFieldDisableMode.none,
    this.headerBuilder,
    super.key,
  });

  final String path;
  final Widget child;
  final int? labelFlex;
  final String? labelText;
  final String? helperText;
  final String? errorText;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool shrinkWrap;
  final FlexFieldDisableMode disableMode;
  final InputHeaderBuilderDef? headerBuilder;

  @override
  Widget build(BuildContext context) {
    final header = (headerBuilder ??
            WoFormTheme.of(context)?.inputHeaderBuilder ??
            InputHeader.new)
        .call(
      WoFormInputHeaderData(
        path: path,
        labelText: labelText,
        helperText: helperText,
        errorText: errorText,
        trailing: trailing,
        onTap: onTap,
        shrinkWrap: shrinkWrap,
      ),
    );

    final headerDisabled = disableMode == FlexFieldDisableMode.header
        ? Opacity(
            opacity: 0.3,
            child: header,
          )
        : header;

    return Opacity(
      opacity: disableMode == FlexFieldDisableMode.all ? 0.3 : 1,
      child: labelFlex == null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerDisabled,
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  title: child,
                ),
              ],
            )
          : ListTile(
              contentPadding: EdgeInsets.zero,
              title: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: labelFlex!,
                    child: headerDisabled,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 10,
                    child: child,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
            ),
    );
  }
}
