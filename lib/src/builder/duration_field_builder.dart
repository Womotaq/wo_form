import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/initial_value_keeper.dart';
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
            builder: (context, error) => WoFormValueBuilder<Duration>(
              path: path,
              builder: (context, value) {
                final errorText = error == null
                    ? null
                    : context.woFormL10n.translateError(error);

                final fieldData = WoFieldData(
                  path: path,
                  input: input,
                  value: value,
                  errorText: errorText,
                  onValueChanged: inputIsLocked
                      ? null
                      : (
                          Duration? value, {
                          UpdateStatus updateStatus = UpdateStatus.yes,
                        }) => context.read<WoFormValuesCubit>().onValueChanged(
                          path: path,
                          value: value,
                          updateStatus: updateStatus,
                        ),
                );

                return (input.uiSettings?.widgetBuilder ??
                        WoFormTheme.of(context)?.durationFieldBuilder ??
                        DurationField.new)
                    .call(fieldData);
              },
            ),
          ),
        ),
      ),
    );
  }

  DurationInput getNode(BuildContext context) {
    final input = context.read<WoFormValuesCubit>().getNode(path: path);
    if (input is! DurationInput) {
      throw ArgumentError(
        'Expected <DurationInput> at path: "$path", '
        'found: <${input.runtimeType}>',
      );
    }

    var mergedSettings =
        uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const DurationInputUiSettings();

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
