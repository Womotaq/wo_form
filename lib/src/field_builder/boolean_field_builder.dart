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
            final formTheme = Theme.of(context).extension<WoFormTheme>();

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(
                    value,
                    formTheme?.localizeInputError,
                  );

            final field = WoField<bool, BooleanInputUiSettings>(
              inputPath: inputPath,
              value: value,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (bool? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return mergedSettings.widgetBuilder?.call(field) ??
                formTheme?.booleanFieldBuilder!(field) ??
                BooleanField(field: field);
          },
        );
      },
    );
  }
}

class BooleanField extends StatelessWidget {
  const BooleanField({required this.field, super.key});

  final WoField<bool, BooleanInputUiSettings> field;

  @override
  Widget build(BuildContext context) {
    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;

    return CheckboxListTile(
      value: field.value,
      controlAffinity:
          field.uiSettings.controlAffinity ?? ListTileControlAffinity.platform,
      title: Text(field.uiSettings.labelText ?? ''),
      subtitle: field.errorText != null
          ? Text(
              field.errorText!,
              style: TextStyle(color: Theme.of(context).colorScheme.error)
                  .merge(inputDecorationTheme.errorStyle),
            )
          : (field.uiSettings.helperText ?? '').isNotEmpty
              ? Text(
                  field.uiSettings.helperText ?? '',
                  style: inputDecorationTheme.helperStyle,
                )
              : null,
      onChanged: field.onValueChanged,
    );
  }
}
