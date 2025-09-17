import 'package:flutter/material.dart' hide FocusManager;
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

    final root = context.read<RootNode>();
    final input = root.getChild(path: path, values: valuesCubit.state);
    if (input is! StringInput) {
      throw ArgumentError(
        'Expected <StringInput> at path: "$path", '
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
              return WoFormValueBuilder<String>(
                path: path,
                builder: (context, value) {
                  String? errorText;
                  Widget? errorWidget;
                  if (status is InProgressStatus) {
                    final error = status.getError(path: path);
                    if (error != null) {
                      if (mergedSettings.errorBuilder != null) {
                        errorWidget = mergedSettings.errorBuilder!(error);
                      } else {
                        errorText = context.read<WoFormL10n?>()?.translateError(
                          error,
                        );
                      }
                    }
                  }

                  final fieldData =
                      WoFieldData<StringInput, String, StringInputUiSettings>(
                        path: path,
                        input: input,
                        value: value,
                        errorText: errorText,
                        errorWidget: errorWidget,
                        uiSettings: mergedSettings,
                        onValueChanged: inputIsLocked
                            ? null
                            : (
                                String? value, {
                                UpdateStatus updateStatus = UpdateStatus
                                    .yesWithoutErrorUpdateIfPathNotVisited,
                              }) => valuesCubit.onValueChanged(
                                path: path,
                                value: value,
                                updateStatus: updateStatus,
                              ),
                      );

                  return (mergedSettings.widgetBuilder ??
                          woFormTheme?.stringFieldBuilder ??
                          StringField.new)
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
