import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class StringFieldBuilder extends StatelessWidget {
  const StringFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final StringInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();

    final form = context.read<WoForm>();
    final input = form.getInput(
      path: path,
      values: context.read<WoFormValuesCubit>().state,
    );
    if (input is! StringInput) {
      throw ArgumentError(
        'Expected <StringInput> at path: "$path", '
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
            return WoFormValueBuilder<String>(
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
                    WoFieldData<StringInput, String, StringInputUiSettings>(
                  path: path,
                  input: input,
                  value: value,
                  errorText: errorText,
                  uiSettings: mergedSettings,
                  onValueChanged: inputIsLocked
                      ? null
                      : (String? value) => valuesCubit.onValueChanged(
                            path: path,
                            value: value,
                          ),
                );

                return (mergedSettings.widgetBuilder ??
                        WoFormTheme.of(context)?.stringFieldBuilder ??
                        StringField.new)
                    .call(fieldData);
              },
            );
          },
        );
      },
    );
  }
}
