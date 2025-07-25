import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class NumField extends StatefulWidget {
  const NumField(this.data, {super.key});

  final WoFieldData<NumInput, num?, NumInputUiSettings> data;

  @override
  State<NumField> createState() => _NumFieldState();
}

class _NumFieldState extends State<NumField> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(
      text: widget.data.value?.toString() ?? '',
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 16,
        right: 4,
      ),
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
        controller: controller,
        onChanged: widget.data.onValueChanged,
        axis: Axis.horizontal,
        minCount: widget.data.input.minBound,
        maxCount: widget.data.input.maxBound,
        unit: widget.data.uiSettings.unit,
      ),
    );
  }
}
