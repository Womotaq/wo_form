import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/ui/prefab/localize_form_error.dart';
import 'package:wo_form/wo_form.dart';

class BooleanFieldTBR extends StatelessWidget {
  const BooleanFieldTBR({
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

            final onOffButton = switch (mergedSettings.controlType) {
              null || BooleanFieldControlType.switchButton => Switch(
                  value: value,
                  onChanged: (value) => valuesCubit.onValueChanged(
                    inputPath: inputPath,
                    value: value,
                  ),
                ),
              BooleanFieldControlType.checkbox => Checkbox(
                  value: value,
                  onChanged: (value) => value == null
                      ? null
                      : valuesCubit.onValueChanged(
                          inputPath: inputPath,
                          value: value,
                        ),
                ),
            };

            final onOffIsLeading = switch (mergedSettings.controlAffinity) {
              ListTileControlAffinity.leading => true,
              ListTileControlAffinity.trailing => false,
              null || ListTileControlAffinity.platform => switch (
                    mergedSettings.controlType) {
                  null || BooleanFieldControlType.switchButton => false,
                  BooleanFieldControlType.checkbox => true,
                }
            };

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(
                    value,
                    localizeInputError(context.formL10n),
                  );

            final field = WoField<bool, BooleanInputUiSettings>(
              inputPath: inputPath,
              value: value,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (bool? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            // TODO
            final test = mergedSettings.widgetBuilder?.call(field) ??
                Theme.of(context)
                    .extension<WoFormTheme>()
                    ?.booleanFieldBuilder!(field) ??
                BooleanField(field: field);

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
