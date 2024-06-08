import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class BooleanField extends StatelessWidget {
  const BooleanField({
    required this.inputPath,
    this.settings,
    super.key,
  });

  final String inputPath;
  final BooleanFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = form.getInput(path: inputPath);
    if (input is! BooleanInput) {
      throw ArgumentError(
        'Expected <BooleanInput> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

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
                : input.getInvalidExplanation(value, context.formL10n);

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
