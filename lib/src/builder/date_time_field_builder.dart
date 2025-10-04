import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class DateTimeFieldBuilder extends StatelessWidget {
  const DateTimeFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final DateTimeInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final input = context.read<WoFormValuesCubit>().getNode(path: path);
    if (input is! DateTimeInput) {
      throw ArgumentError(
        'Expected <DateTimeInput> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    var mergedSettings =
        uiSettings?.merge(inputSettings) ??
        inputSettings ??
        const DateTimeInputUiSettings();
    final woFormTheme = WoFormTheme.of(context);

    final showAsterisk =
        input.isRequired && (woFormTheme?.showAsteriskIfRequired ?? true);
    if (showAsterisk && mergedSettings.labelText != null) {
      mergedSettings = mergedSettings.copyWith(
        labelText: '${mergedSettings.labelText} *',
      );
    }

    return WoFormNodeFocusManager(
      path: path,
      child: BlocSelector<WoFormLockCubit, Set<String>, bool>(
        selector: (lockedInputs) => lockedInputs.contains(path),
        builder: (context, inputIsLocked) {
          return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
            builder: (context, status) {
              return WoFormValueBuilder<DateTime>(
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
                      WoFieldData<
                        DateTimeInput,
                        DateTime,
                        DateTimeInputUiSettings
                      >(
                        path: path,
                        input: input,
                        value: value,
                        errorText: errorText,
                        uiSettings: mergedSettings,
                        onValueChanged: inputIsLocked
                            ? null
                            : (
                                DateTime? value, {
                                UpdateStatus updateStatus = UpdateStatus.yes,
                              }) => context
                                  .read<WoFormValuesCubit>()
                                  .onValueChanged(
                                    path: path,
                                    value: value,
                                    updateStatus: updateStatus,
                                  ),
                      );

                  return (mergedSettings.widgetBuilder ??
                          woFormTheme?.dateTimeFieldBuilder ??
                          DateTimeField.new)
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
