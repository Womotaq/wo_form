import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class BooleanField extends StatelessWidget {
  const BooleanField(this.data, {super.key});

  final WoFieldData<BooleanInput, bool, BooleanInputUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    return buildTile(
      value: data.value ?? false,
      controlAffinity:
          data.uiSettings.controlAffinity ?? ListTileControlAffinity.platform,
      title: Text(
        data.uiSettings.labelText ?? '',
        style: inputDecorationTheme.labelStyle,
      ),
      subtitle: data.errorText != null
          ? Text(
              data.errorText!,
              style:
                  inputDecorationTheme.errorStyle ??
                  theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.error,
                  ),
            )
          : (data.uiSettings.helperText ?? '').isNotEmpty
          ? Text(
              data.uiSettings.helperText ?? '',
              style:
                  inputDecorationTheme.helperStyle ??
                  theme.textTheme.labelMedium,
            )
          : null,
      secondary: data.uiSettings.secondary,
    );
  }

  Widget buildTile({
    required bool value,
    required ListTileControlAffinity controlAffinity,
    required Widget title,
    required Widget? subtitle,
    required Widget? secondary,
  }) => switch (data.uiSettings.controlType) {
    null || BooleanFieldControlType.switchButton => SwitchListTile(
      contentPadding: EdgeInsets.only(
        left: switch (controlAffinity) {
          ListTileControlAffinity.leading => 12,
          ListTileControlAffinity.platform ||
          ListTileControlAffinity.trailing => 16,
        },
        right: switch (controlAffinity) {
          ListTileControlAffinity.leading => 16,
          ListTileControlAffinity.platform ||
          ListTileControlAffinity.trailing => 12,
        },
      ),
      value: value,
      controlAffinity: controlAffinity,
      title: title,
      subtitle: subtitle,
      secondary: secondary,
      onChanged: data.onValueChanged,
    ),
    BooleanFieldControlType.checkbox => CheckboxListTile(
      contentPadding: EdgeInsets.only(
        left: switch (controlAffinity) {
          ListTileControlAffinity.leading => 6,
          ListTileControlAffinity.platform ||
          ListTileControlAffinity.trailing => 16,
        },
        right: switch (controlAffinity) {
          ListTileControlAffinity.leading => 16,
          ListTileControlAffinity.platform ||
          ListTileControlAffinity.trailing => 6,
        },
      ),
      value: value,
      controlAffinity: controlAffinity,
      title: title,
      subtitle: subtitle,
      secondary: secondary,
      onChanged: data.onValueChanged,
    ),
  };
}
