import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class NumFieldBuilder extends StatelessWidget {
  const NumFieldBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final NumInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = form.getInput(
      path: inputPath,
      values: valuesCubit.state,
    );
    if (input is! NumInput) {
      throw ArgumentError(
        'Expected <NumInput> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<num>(
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

            final fieldData = WoFieldData<NumInput, num, NumInputUiSettings>(
              inputPath: inputPath,
              input: input,
              value: value,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (num? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return mergedSettings.widgetBuilder?.call(fieldData) ??
                WoFormTheme.of(context)?.numFieldBuilder?.call(fieldData) ??
                NumField(data: fieldData);
          },
        );
      },
    );
  }
}
