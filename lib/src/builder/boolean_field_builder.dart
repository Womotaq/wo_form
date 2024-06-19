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
    var mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    final showAsterisk = input.isRequired &&
        (form.uiSettings.showAsteriskIfRequired ??
            WoFormTheme.of(context)?.showAsteriskIfRequired ??
            true);
    if (showAsterisk && mergedSettings.labelText != null) {
      mergedSettings = mergedSettings.copyWith(
        labelText: '${mergedSettings.labelText ?? ''}*',
      );
    }

    return BlocSelector<WoFormLockCubit, Set<String>, bool>(
      selector: (lockedInputs) => lockedInputs.contains(inputPath),
      builder: (context, inputIsLocked) {
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
                    errorText =
                        context.read<WoFormL10n?>()?.translateError(error);
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
                  onValueChanged: inputIsLocked
                      ? null
                      : (bool? value) => valuesCubit.onValueChanged(
                            inputPath: inputPath,
                            value: value,
                          ),
                );

                return (mergedSettings.widgetBuilder ??
                        WoFormTheme.of(context)?.booleanFieldBuilder ??
                        BooleanField.new)
                    .call(fieldData);
              },
            );
          },
        );
      },
    );
  }
}
