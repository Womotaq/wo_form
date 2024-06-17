import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class StringFieldBuilder extends StatelessWidget {
  const StringFieldBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final StringInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();

    final form = context.read<WoForm>();
    final input = form.getInput(
      path: inputPath,
      values: context.read<WoFormValuesCubit>().state,
    );
    if (input is! StringInput) {
      throw ArgumentError(
        'Expected <StringInput> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    var mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    final showAsterisk = input.isRequired &&
        (form.uiSettings.showAsteriskIfRequired ??
            WoFormTheme.of(context)?.showAsteriskIfRequired ??
            true);
    if (showAsterisk && mergedSettings.labelText != null) {
      mergedSettings = mergedSettings.copyWith(
        labelText: '${mergedSettings.labelText}*',
      );
    }

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<String>(
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
                WoFieldData<StringInput, String, StringInputUiSettings>(
              inputPath: inputPath,
              input: input,
              value: value,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (String? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return mergedSettings.widgetBuilder?.call(fieldData) ??
                WoFormTheme.of(context)?.stringFieldBuilder?.call(fieldData) ??
                StringField(data: fieldData);
          },
        );
      },
    );
  }
}
