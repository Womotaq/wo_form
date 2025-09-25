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
    if (widget.data.uiSettings.style == null ||
        widget.data.uiSettings.style == NumInputStyle.selector) {
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
    final min = widget.data.input.minBound;
    final max = widget.data.input.maxBound;

    return FlexField(
      headerFlex: widget.data.uiSettings.headerFlex ?? 10,
      labelText: widget.data.uiSettings.labelText,
      helperText: widget.data.uiSettings.helperText,
      errorText: widget.data.errorText,
      disableMode: widget.data.onValueChanged == null
          ? FlexFieldDisableMode.header
          : FlexFieldDisableMode.none,
      child: widget.data.uiSettings.style == NumInputStyle.slider
          ? Slider(
              padding: EdgeInsets.zero,
              value:
                  (widget.data.value ?? widget.data.input.initialValue ?? min)
                      .toDouble(),
              min: min.toDouble(),
              max: (max ?? min + 1).toDouble(),
              onChanged: widget.data.onValueChanged,
            )
          : NumSelector(
              controller: controller,
              onChanged: widget.data.onValueChanged,
              axis: Axis.horizontal,
              minCount: min,
              maxCount: max,
              unit: widget.data.uiSettings.unit,
            ),
    );
  }
}
