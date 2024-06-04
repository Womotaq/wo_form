import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class BooleanField extends StatelessWidget {
  const BooleanField({
    required this.inputId,
    this.settings,
    super.key,
  });

  final String inputId;
  final BooleanFieldSettings? settings;

  BooleanInput getInput(WoForm form) {
    try {
      return form.getInput(inputId: inputId)! as BooleanInput;
    } catch (e) {
      // TODO
      print(e);
      print(e.runtimeType);
      throw ArgumentError('No input found for id: $inputId');
    }
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final inputSettings = getInput(form).fieldSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, bool>(
      selector: (values) {
        final value = values[inputId];
        try {
          return (value as bool?) ?? false;
        } catch (e) {
          // TODO
          print(e);
          print(e.runtimeType);
          throw ArgumentError(
            'Expected a boolean at inputId $inputId, '
            'found: <${value.runtimeType}>$value',
          );
        }
      },
      builder: (context, value) {
        final onOffType = switch (mergedSettings.onOffType) {
          null || BooleanFieldOnOffType.switchButton => Switch(
              value: value,
              onChanged: (value) => valuesCubit.onValueChanged(
                inputId: inputId,
                value: value,
              ),
            ),
          BooleanFieldOnOffType.checkbox => Checkbox(
              value: value,
              onChanged: (value) => value == null
                  ? null
                  : valuesCubit.onValueChanged(
                      inputId: inputId,
                      value: value,
                    ),
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
          onTap: () => valuesCubit.onValueChanged(
            inputId: inputId,
            value: !value,
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}
