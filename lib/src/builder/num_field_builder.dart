import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class NumFieldBuilder extends StatelessWidget {
  const NumFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final NumInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = form.getInput(
      path: path,
      values: valuesCubit.state,
    );
    if (input is! NumInput) {
      throw ArgumentError(
        'Expected <NumInput> at path: "$path", '
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

    return BlocSelector<WoFormLockCubit, Set<String>, bool>(
      selector: (lockedInputs) => lockedInputs.contains(path),
      builder: (context, inputIsLocked) {
        return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
          builder: (context, status) {
            return WoFormValueBuilder<num>(
              path: path,
              builder: (context, value) {
                final String? errorText;
                if (status is InvalidValuesStatus) {
                  final error =
                      input.getError(value, parentPath: path.parentPath);
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
                    WoFieldData<NumInput, num, NumInputUiSettings>(
                  path: path,
                  input: input,
                  value: value,
                  errorText: errorText,
                  uiSettings: mergedSettings,
                  onValueChanged: inputIsLocked
                      ? null
                      : (num? value) => valuesCubit.onValueChanged(
                            path: path,
                            value: value,
                          ),
                );

                return (mergedSettings.widgetBuilder ??
                        WoFormTheme.of(context)?.numFieldBuilder ??
                        NumField.new)
                    .call(fieldData);
              },
            );
          },
        );
      },
    );
  }
}
