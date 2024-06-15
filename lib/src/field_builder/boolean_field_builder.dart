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
                final translateError = context
                        .read<WoFormInputErrorTranslator?>()
                        ?.translateError ??
                    (error) => error.toString();
                errorText = translateError(error);
              }
            } else {
              errorText = null;
            }

            final fieldData = WoFieldData<bool, BooleanInputUiSettings>(
              inputPath: inputPath,
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

  final WoFieldData<bool, BooleanInputUiSettings> data;

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;

    return buildTile(
      value: data.value ?? false,
      controlAffinity:
          data.uiSettings.controlAffinity ?? ListTileControlAffinity.platform,
      title: Text(data.uiSettings.labelText ?? ''),
      subtitle: data.errorText != null
          ? Text(
              data.errorText!,
              style: TextStyle(color: Theme.of(context).colorScheme.error)
                  .merge(inputDecorationTheme.errorStyle),
            )
          : (data.uiSettings.helperText ?? '').isNotEmpty
              ? Text(
                  data.uiSettings.helperText ?? '',
                  style: inputDecorationTheme.helperStyle,
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
