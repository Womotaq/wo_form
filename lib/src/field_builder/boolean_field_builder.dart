import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class BooleanFieldBuilder extends StatelessWidget {
  const BooleanFieldBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final BooleanInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = form.getInput(path: inputPath, values: valuesCubit.state);
    if (input is! BooleanInput) {
      throw ArgumentError(
        'Expected <BooleanInput> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<bool>(
          inputPath: inputPath,
          builder: (context, value) {
            final String? errorText;
            if (status is InvalidValuesStatus) {
              final error = input.getError(value);
              if (error == null) {
                errorText = null;
              } else {
                errorText = context.read<WoFormL10n?>()?.translateError(error);
              }
            } else {
              errorText = null;
            }

            final fieldData =
                WoFieldData<BooleanInput, bool, BooleanInputUiSettings>(
              inputPath: inputPath,
              input: input,
              value: value,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (bool? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return mergedSettings.widgetBuilder?.call(fieldData) ??
                WoFormTheme.of(context)?.booleanFieldBuilder?.call(fieldData) ??
                BooleanField(data: fieldData);
          },
        );
      },
    );
  }
}

class BooleanField extends StatelessWidget {
  const BooleanField({required this.data, super.key});

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
    );
  }

  Widget buildTile({
    required bool value,
    required ListTileControlAffinity controlAffinity,
    required Widget title,
    required Widget? subtitle,
  }) =>
      switch (data.uiSettings.controlType) {
        null || BooleanFieldControlType.switchButton => SwitchListTile(
            value: value,
            controlAffinity: controlAffinity,
            title: title,
            subtitle: subtitle,
            onChanged: data.onValueChanged,
          ),
        BooleanFieldControlType.checkbox => CheckboxListTile(
            value: value,
            controlAffinity: controlAffinity,
            title: title,
            subtitle: subtitle,
            onChanged: data.onValueChanged,
          )
      };
}
