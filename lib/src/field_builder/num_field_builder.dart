import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
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
          builder: (context, value) {
            final String? errorText;
            if (status is InvalidValuesStatus) {
              final error = input.getError(value);
              if (error == null) {
                errorText = null;
              } else {
                errorText = context.read<WoFormL10n?>()?.translateError(error);
              }
            } else {
              errorText = null;
            }

            final fieldData = WoFieldData<NumInput, num, NumInputUiSettings>(
              inputPath: inputPath,
              input: input,
              value: value,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (num? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return mergedSettings.widgetBuilder?.call(fieldData) ??
                WoFormTheme.of(context)?.numFieldBuilder?.call(fieldData) ??
                NumField(data: fieldData);
          },
        );
      },
    );
  }
}

class NumField extends StatefulWidget {
  const NumField({required this.data, super.key});

  final WoFieldData<NumInput, num?, NumInputUiSettings> data;

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
    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    return ListTile(
      title: Text(
        widget.data.uiSettings.labelText ?? '',
        style: inputDecorationTheme.labelStyle,
      ),
      subtitle: widget.data.errorText != null
          ? Text(
              widget.data.errorText!,
              style: inputDecorationTheme.errorStyle ??
                  theme.textTheme.labelMedium
                      ?.copyWith(color: theme.colorScheme.error),
            )
          : (widget.data.uiSettings.helperText ?? '').isNotEmpty
              ? Text(
                  widget.data.uiSettings.helperText ?? '',
                  style: inputDecorationTheme.helperStyle ??
                      theme.textTheme.labelMedium,
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
