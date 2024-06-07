import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, bool>(
      selector: (values) {
        final value = values[inputPath];
        if (value is! bool?) {
          throw ArgumentError(
            'Expected <bool?> at inputId: "$inputPath", '
            'found: <${value.runtimeType}>',
          );
        }
        return value ?? false;
      },
      builder: (context, value) {
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

        return ListTile(
          leading: onOffIsLeading ? onOffButton : null,
          title: Text(mergedSettings.labelText ?? ''),
          trailing: onOffIsLeading ? null : onOffButton,
          onTap: () => valuesCubit.onValueChanged(
            inputPath: inputPath,
            value: !value,
          ),
        );
      },
    );
  }
}
