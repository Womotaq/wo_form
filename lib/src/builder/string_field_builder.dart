import 'package:flutter/material.dart' hide FocusManager;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/initial_value_keeper.dart';
import 'package:wo_form/wo_form.dart';

class StringFieldBuilder<T extends Object?> extends StatelessWidget {
  const StringFieldBuilder({
    required this.path,
    this.uiSettings,
    super.key,
  });

  final String path;
  final StringInputUiSettings<T>? uiSettings;

  @override
  Widget build(BuildContext context) {
    final input = getNode(context);

    return InitialValueKeeper(
      initialValue: input.initialValue,
      path: path,
      child: WoFormNodeFocusManager(
        path: path,
        child: BlocSelector<WoFormLockCubit, Set<String>, bool>(
          selector: (lockedInputs) => lockedInputs.contains(path),
          builder: (context, inputIsLocked) => WoFormErrorBuilder(
            path: path,
            builder: (context, error) => WoFormValueBuilder<String>(
              path: path,
              builder: (context, value) {
                String? errorText;
                Widget? errorWidget;
                if (error != null) {
                  if (input.uiSettings?.errorBuilder != null) {
                    errorWidget = input.uiSettings!.errorBuilder!(error);
                  } else {
                    errorText = context.woFormL10n.translateError(error);
                  }
                }

                final fieldData = WoFieldData(
                  path: path,
                  input: input,
                  value: value,
                  errorText: errorText,
                  errorWidget: errorWidget,
                  onValueChanged: inputIsLocked
                      ? null
                      : (
                          String? value, {
                          UpdateStatus updateStatus = UpdateStatus
                              .yesWithoutErrorUpdateIfPathNotVisited,
                        }) => context.read<WoFormValuesCubit>().onValueChanged(
                          path: path,
                          value: value,
                          updateStatus: updateStatus,
                        ),
                );

                return (input.uiSettings?.widgetBuilder ??
                        WoFormTheme.of(context)?.stringFieldBuilder ??
                        StringField.fromData)
                    .call(fieldData);
              },
            ),
          ),
        ),
      ),
    );
  }

  StringInput<T> getNode(BuildContext context) {
    final input = context.read<WoFormValuesCubit>().getNode(path: path);
    if (input is! StringInput<T>) {
      throw ArgumentError(
        'Expected <StringInput<$T>> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    var mergedSettings =
        uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const StringInputUiSettings();

    final showAsterisk =
        input.isRequired &&
        (WoFormTheme.of(context)?.showAsteriskIfRequired ?? true);
    if (showAsterisk && mergedSettings.labelText != null) {
      mergedSettings = mergedSettings.copyWith(
        labelText: '${mergedSettings.labelText} *',
      );
    }

    return input.copyWith(uiSettings: mergedSettings);
  }
}
