import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

enum BooleanFieldOnOffType { checkbox, switchButton }

@immutable
class BooleanFieldTheme {
  const BooleanFieldTheme({
    this.onOffType,
    this.onOffPosition,
    this.labelText,
  });

  final BooleanFieldOnOffType? onOffType;
  final ListTileControlAffinity? onOffPosition;
  final String? labelText;

  BooleanFieldTheme merge(BooleanFieldTheme? other) => other == null
      ? this
      : BooleanFieldTheme(
          onOffType: onOffType ?? other.onOffType,
          onOffPosition: onOffPosition ?? other.onOffPosition,
          labelText: labelText ?? other.labelText,
        );
}

class BooleanField<T extends WoFormCubit> extends StatelessWidget {
  const BooleanField({
    required this.input,
    this.theme,
    super.key,
  });

  final BooleanInput Function(WoForm form) input;
  final BooleanFieldTheme? theme;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    final themeFromInput = input(cubit.state).fieldTheme;
    final mergedTheme = (theme?.merge(themeFromInput) ?? themeFromInput) ??
        const BooleanFieldTheme();

    return BlocSelector<T, WoForm, BooleanInput>(
      selector: input,
      builder: (context, input) {
        final onOffType = switch (mergedTheme.onOffType) {
          null || BooleanFieldOnOffType.switchButton => Switch(
              value: input.value,
              onChanged: (value) => cubit.onInputChanged(
                input: input.copyWith(value: value),
              ),
            ),
          BooleanFieldOnOffType.checkbox => Checkbox(
              value: input.value,
              onChanged: (value) => cubit.onInputChanged(
                input: input.copyWith(value: value),
              ),
            ),
        };
        final onOffTypeIsLeading = switch (mergedTheme.onOffPosition) {
          ListTileControlAffinity.leading => true,
          ListTileControlAffinity.trailing => false,
          null || ListTileControlAffinity.platform => switch (
                mergedTheme.onOffType) {
              null || BooleanFieldOnOffType.switchButton => false,
              BooleanFieldOnOffType.checkbox => true,
            }
        };

        return ListTile(
          leading: onOffTypeIsLeading ? onOffType : null,
          title: Text(mergedTheme.labelText ?? ''),
          trailing: onOffTypeIsLeading ? null : onOffType,
          onTap: () => cubit.onInputChanged(
            input: input.copyWith(value: !input.value),
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}
