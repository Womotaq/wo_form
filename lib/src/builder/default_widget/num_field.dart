import 'package:flutter/material.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class NumField extends StatefulWidget {
  const NumField({required this.data, super.key});

  final WoFieldData<NumInput, num?, NumInputUiSettings> data;

  @override
  State<NumField> createState() => _NumFieldState();
}

class _NumFieldState extends State<NumField> {
  final countController = TextEditingController();

  @override
  void initState() {
    super.initState();

    countController.text = widget.data.value?.toString() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    return ListTile(
      title: Text(
        widget.data.uiSettings.labelText ?? '',
        style: inputDecorationTheme.labelStyle,
      ),
      subtitle: widget.data.errorText != null
          ? Text(
              widget.data.errorText!,
              style: inputDecorationTheme.errorStyle ??
                  theme.textTheme.labelMedium
                      ?.copyWith(color: theme.colorScheme.error),
            )
          : (widget.data.uiSettings.helperText ?? '').isNotEmpty
              ? Text(
                  widget.data.uiSettings.helperText ?? '',
                  style: inputDecorationTheme.helperStyle ??
                      theme.textTheme.labelMedium,
                )
              : null,
      trailing: NumSelector(
        controller: countController,
        onChanged: widget.data.onValueChanged,
        axis: Axis.horizontal,
      ),
    );
  }
}
