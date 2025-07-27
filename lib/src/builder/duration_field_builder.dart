import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class DurationFieldBuilder extends StatelessWidget {
  const DurationFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final DurationInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final root = context.read<RootNode>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = root.getChild(path: path, values: valuesCubit.state);
    if (input is! DurationInput) {
      throw ArgumentError(
        'Expected <DurationInput> at path: "$path", '
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
              return WoFormValueBuilder<Duration>(
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
                        DurationInput,
                        Duration,
                        DurationInputUiSettings
                      >(
                        path: path,
                        input: input,
                        value: value,
                        errorText: errorText,
                        uiSettings: mergedSettings,
                        onValueChanged: inputIsLocked
                            ? null
                            : (
                                Duration? value, {
                                UpdateStatus updateStatus = UpdateStatus.yes,
                              }) => valuesCubit.onValueChanged(
                                path: path,
                                value: value,
                                updateStatus: updateStatus,
                              ),
                      );

                  return (mergedSettings.widgetBuilder ??
                          woFormTheme?.durationFieldBuilder ??
                          DurationField.new)
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
