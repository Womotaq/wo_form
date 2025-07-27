import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class BooleanFieldBuilder extends StatelessWidget {
  const BooleanFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final BooleanInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = root.getChild(path: path, values: valuesCubit.state);
    if (input is! BooleanInput) {
      throw ArgumentError(
        'Expected <BooleanInput> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    var mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;
    final woFormTheme = WoFormTheme.of(context);

    final showAsterisk =
        input.isRequired && (woFormTheme?.showAsteriskIfRequired ?? true);
    if (showAsterisk && mergedSettings.labelText != null) {
      mergedSettings = mergedSettings.copyWith(
        labelText: '${mergedSettings.labelText ?? ''} *',
      );
    }

    return WoFormNodeFocusManager(
      path: path,
      child: BlocSelector<WoFormLockCubit, Set<String>, bool>(
        selector: (lockedInputs) => lockedInputs.contains(path),
        builder: (context, inputIsLocked) {
          return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
            builder: (context, status) {
              return WoFormValueBuilder<bool>(
                path: path,
                builder: (context, value) {
                  final String? errorText;
                  if (status is InProgressStatus) {
                    final error = status.getError(path: path);
                    if (error == null) {
                      errorText = null;
                    } else {
                      errorText = context.read<WoFormL10n?>()?.translateError(
                        error,
                      );
                    }
                  } else {
                    errorText = null;
                  }

                  final fieldData =
                      WoFieldData<BooleanInput, bool, BooleanInputUiSettings>(
                        path: path,
                        input: input,
                        value: value,
                        errorText: errorText,
                        uiSettings: mergedSettings,
                        onValueChanged: inputIsLocked
                            ? null
                            : (
                                bool? value, {
                                UpdateStatus updateStatus = UpdateStatus.yes,
                              }) {
                                valuesCubit.onValueChanged(
                                  path: path,
                                  value: value,
                                  updateStatus: updateStatus,
                                );

                                input.onValueChanged?.call(value);

                                FocusScope.of(context).unfocus();
                              },
                      );

                  return (mergedSettings.widgetBuilder ??
                          woFormTheme?.booleanFieldBuilder ??
                          BooleanField.new)
                      .call(fieldData);
                },
              );
            },
          );
        },
      ),
    );
  }
}
