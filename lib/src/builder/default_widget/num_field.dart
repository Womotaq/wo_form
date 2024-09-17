import 'package:flutter/material.dart';
import 'package:wo_form/wo_form.dart';

class NumField extends StatelessWidget {
  const NumField(this.data, {super.key});

  final WoFieldData<NumInput, num?, NumInputUiSettings> data;

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
        data.uiSettings.labelText ?? '',
        style: inputDecorationTheme.labelStyle,
      ),
      subtitle: data.errorText != null
          ? Text(
              data.errorText!,
              style: inputDecorationTheme.errorStyle ??
                  theme.textTheme.labelMedium
                      ?.copyWith(color: theme.colorScheme.error),
            )
          : (data.uiSettings.helperText ?? '').isNotEmpty
              ? Text(
                  data.uiSettings.helperText ?? '',
                  style: inputDecorationTheme.helperStyle ??
                      theme.textTheme.labelMedium,
                )
              : null,
      trailing: NumSelector.withTextController(
        controller: TextEditingController(
          text: data.value?.toString() ?? '',
        ),
        onChanged: data.onValueChanged,
        axis: Axis.horizontal,
        minCount: data.input.minBound,
        maxCount: data.input.maxBound,
        unit: data.uiSettings.unit,
      ),
    );
  }
}
