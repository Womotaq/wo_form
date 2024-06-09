import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/ui/prefab/localize_form_error.dart';
import 'package:wo_form/wo_form.dart';

class NumField extends StatefulWidget {
  const NumField({
    required this.inputPath,
    this.settings,
    super.key,
  });

  final String inputPath;
  final NumFieldSettings? settings;

  @override
  State<NumField> createState() => _NumFieldState();
}

class _NumFieldState extends State<NumField> {
  final countController = TextEditingController();

  @override
  void initState() {
    super.initState();

    countController.text =
        context.read<WoFormValuesCubit>().state[widget.inputPath]?.toString() ??
            '';
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = form.getInput(
      path: widget.inputPath,
      valuesMap: valuesCubit.state,
    );
    if (input is! NumInput) {
      throw ArgumentError(
        'Expected <NumInput> at path: "${widget.inputPath}", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings =
        widget.settings?.merge(inputSettings) ?? inputSettings;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<num>(
          inputPath: widget.inputPath,
          builder: (context, count) {
            final countText = count?.toString() ?? '';
            if (countController.text != countText) {
              countController
                ..text = countText
                // This always brings the cursor to the last position possible.
                // By default, when the text changes, it is selected.
                ..selection = TextSelection.collapsed(
                  offset: countController.text.length,
                );
            }

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(
                    count,
                    localizeInputError(context.formL10n),
                  );

            return ListTile(
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
              trailing: NumSelector(
                controller: countController,
                onChanged: (value) async => valuesCubit.onValueChanged(
                  inputPath: widget.inputPath,
                  value: value,
                ),
                axis: Axis.horizontal,
              ),
            );
          },
        );
      },
    );
  }
}
