import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/ui/prefab/localize_form_error.dart';
import 'package:wo_form/wo_form.dart';

class BooleanField extends StatelessWidget {
  const BooleanField({
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
    final mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<bool>(
          inputPath: inputPath,
          builder: (context, valueNullable) {
            final value = valueNullable ?? false;

            final onOffButton = switch (mergedSettings.onOffType) {
              null || BooleanFieldOnOffType.switchButton => Switch(
                  value: value,
                  onChanged: (value) => valuesCubit.onValueChanged(
                    inputPath: inputPath,
                    value: value,
                  ),
                ),
              BooleanFieldOnOffType.checkbox => Checkbox(
                  value: value,
                  onChanged: (value) => value == null
                      ? null
                      : valuesCubit.onValueChanged(
                          inputPath: inputPath,
                          value: value,
                        ),
                ),
            };

            final onOffIsLeading = switch (mergedSettings.onOffPosition) {
              ListTileControlAffinity.leading => true,
              ListTileControlAffinity.trailing => false,
              null || ListTileControlAffinity.platform => switch (
                    mergedSettings.onOffType) {
                  null || BooleanFieldOnOffType.switchButton => false,
                  BooleanFieldOnOffType.checkbox => true,
                }
            };

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(
                    value,
                    localizeInputError(context.formL10n),
                  );

            return ListTile(
              leading: onOffIsLeading ? onOffButton : null,
              title: Text(
                (mergedSettings.labelText ?? '') +
                    (input.isRequired ? '*' : ''),
              ),
              subtitle: errorText != null
                  ? Text(
                      errorText,
                      style: context.textTheme.labelMedium
                          ?.copyWith(color: context.colorScheme.error),
                    )
                  : (mergedSettings.helperText ?? '').isNotEmpty
                      ? Text(
                          mergedSettings.helperText ?? '',
                          style: context.woTheme.infoStyle,
                        )
                      : null,
              trailing: onOffIsLeading ? null : onOffButton,
              onTap: () => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: !value,
              ),
            );
          },
        );
      },
    );
  }
}

class WoFormTheme {
  const WoFormTheme({
    this.booleanFieldTheme,
  });

  final BooleanFieldTheme? booleanFieldTheme;
}

class BooleanFieldTheme {
  const BooleanFieldTheme({
    this.labelStyle,
    this.helperStyle,
    this.errorStyle,
    this.controlAffinity,
  });

  final TextStyle? labelStyle;
  final TextStyle? helperStyle;
  final TextStyle? errorStyle;
  final ListTileControlAffinity? controlAffinity;
}

class BooeanField2 extends StatelessWidget {
  const BooeanField2.checkBox({
    bool? value,
    String? labelText,
    String? helperText,
    String? errorText,
    BooleanFieldTheme? theme,
    super.key,
  });

  final StringInputUiSettings uiSettings;
  final String? errorText;
  final void Function(bool? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      leading: onOffIsLeading ? onOffButton : null,
      title: Text(
        (uiSettings.labelText ?? '') + (input.isRequired ? '*' : ''),
      ),
      subtitle: errorText != null
          ? Text(
              errorText,
              style: context.textTheme.labelMedium
                  ?.copyWith(color: context.colorScheme.error),
            )
          : (mergedSettings.helperText ?? '').isNotEmpty
              ? Text(
                  mergedSettings.helperText ?? '',
                  style: context.woTheme.infoStyle,
                )
              : null,
      trailing: onOffIsLeading ? null : onOffButton,
      onTap: () => valuesCubit.onValueChanged(
        inputPath: inputPath,
        value: !value,
      ),
    );
  }
}
