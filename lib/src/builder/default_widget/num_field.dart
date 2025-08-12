import 'package:flutter/material.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class NumField extends StatefulWidget {
  const NumField(this.data, {super.key});

  final WoFieldData<NumInput, num?, NumInputUiSettings> data;

  @override
  State<NumField> createState() => _NumFieldState();
}

class _NumFieldState extends State<NumField> {
  TextEditingController? controller;

  @override
  void initState() {
    super.initState();
    if (widget.data.uiSettings.style == NumInputStyle.selector) {
      controller = TextEditingController(
        text: widget.data.value?.toString() ?? '',
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    if (widget.data.uiSettings.style == NumInputStyle.slider) {
      if (widget.data.input.maxBound == null) {
        throw ArgumentError(
          'maxBound is required when using NumInputStyle.slider',
        );
      }
      final value = widget.data.value ?? widget.data.input.initialValue;
      if (value == null) {
        throw ArgumentError(
          'initialValue is required when using NumInputStyle.slider',
        );
      }

      final min = widget.data.input.minBound;
      final max = widget.data.input.maxBound!;

      return FlexField(
        path: widget.data.path,
        labelFlex: widget.data.uiSettings.labelFlex,
        labelText: widget.data.uiSettings.labelText,
        helperText: widget.data.uiSettings.helperText,
        errorText: widget.data.errorText,
        disableMode: widget.data.onValueChanged == null
            ? FlexFieldDisableMode.header
            : FlexFieldDisableMode.none,
        child: Slider(
          padding: EdgeInsets.zero,
          value: value.toDouble(),
          min: widget.data.input.minBound.toDouble(),
          max: widget.data.input.maxBound!.toDouble(),
          divisions: max - min,
          onChanged: widget.data.onValueChanged,
        ),
      );
    }

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
              style:
                  inputDecorationTheme.errorStyle ??
                  theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.error,
                  ),
            )
          : (widget.data.uiSettings.helperText ?? '').isNotEmpty
          ? Text(
              widget.data.uiSettings.helperText ?? '',
              style:
                  inputDecorationTheme.helperStyle ??
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
