import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class BooleanField<T extends WoFormCubit> extends StatelessWidget {
  const BooleanField({
    required this.input,
    this.settings,
    super.key,
  });

  final BooleanInput Function(WoForm form) input;
  final BooleanFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    final themeFromInput = input(cubit.state).fieldSettings;
    final mergedSettings = settings?.merge(themeFromInput) ?? themeFromInput;

    return BlocSelector<T, WoForm, BooleanInput>(
      selector: input,
      builder: (context, input) {
        final onOffType = switch (mergedSettings.onOffType) {
          null || BooleanFieldOnOffType.switchButton => Switch(
              value: input.value ?? false,
              onChanged: (value) => cubit.onInputChanged(
                input: input.copyWith(value: value),
              ),
            ),
          BooleanFieldOnOffType.checkbox => Checkbox(
              value: input.value,
              onChanged: (value) => value == null
                  ? null
                  : cubit.onInputChanged(input: input.copyWith(value: value)),
            ),
        };
        final onOffTypeIsLeading = switch (mergedSettings.onOffPosition) {
          ListTileControlAffinity.leading => true,
          ListTileControlAffinity.trailing => false,
          null || ListTileControlAffinity.platform => switch (
                mergedSettings.onOffType) {
              null || BooleanFieldOnOffType.switchButton => false,
              BooleanFieldOnOffType.checkbox => true,
            }
        };

        return ListTile(
          leading: onOffTypeIsLeading ? onOffType : null,
          title: Text(mergedSettings.labelText ?? ''),
          trailing: onOffTypeIsLeading ? null : onOffType,
          onTap: () => cubit.onInputChanged(
            input: input.copyWith(value: !(input.value ?? false)),
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}
