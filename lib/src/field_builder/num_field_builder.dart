import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/ui/prefab/localize_form_error.dart';
import 'package:wo_form/wo_form.dart';

class NumFieldBuilder extends StatelessWidget {
  const NumFieldBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final NumInputUiSettings? uiSettings;

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = form.getInput(
      path: inputPath,
      values: valuesCubit.state,
    );
    if (input is! NumInput) {
      throw ArgumentError(
        'Expected <NumInput> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    final inputSettings = input.uiSettings;
    final mergedSettings = uiSettings?.merge(inputSettings) ?? inputSettings;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<num>(
          inputPath: inputPath,
          builder: (context, count) {
            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(
                    count,
                    localizeInputError(context.formL10n),
                  );

            final fieldData = WoFieldData<num, NumInputUiSettings>(
              inputPath: inputPath,
              value: count,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (num? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return NumField(data: fieldData);
          },
        );
      },
    );
  }
}

class NumField extends StatefulWidget {
  const NumField({required this.data, super.key});

  final WoFieldData<num?, NumInputUiSettings> data;

  @override
  State<NumField> createState() => _NumFieldState();
}

class _NumFieldState extends State<NumField> {
  final countController = TextEditingController();

  @override
  void initState() {
    super.initState();

    countController.text = widget.data.value?.toString() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.data.uiSettings.labelText ?? ''),
      subtitle: widget.data.errorText != null
          ? Text(
              widget.data.errorText!,
              style: context.textTheme.labelMedium
                  ?.copyWith(color: context.colorScheme.error),
            )
          : (widget.data.uiSettings.helperText ?? '').isNotEmpty
              ? Text(
                  widget.data.uiSettings.helperText ?? '',
                  style: context.woTheme.infoStyle,
                )
              : null,
      trailing: NumSelector(
        controller: countController,
        onChanged: widget.data.onValueChanged,
        axis: Axis.horizontal,
      ),
    );
  }
}
