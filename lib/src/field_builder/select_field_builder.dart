import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

class SelectFieldBuilder<T> extends StatelessWidget {
  const SelectFieldBuilder({
    required this.inputPath,
    this.uiSettings,
    super.key,
  });

  final String inputPath;
  final SelectInputUiSettings<T>? uiSettings;

  SelectInput<T> getInput(WoForm form, Map<String, dynamic> values) {
    final input = form.getInput(path: inputPath, values: values);
    if (input is! SelectInput<T>) {
      throw ArgumentError(
        'Expected <SelectInput<$T>> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    return input;
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = getInput(form, valuesCubit.state);
    final mergedSettings = uiSettings?.merge(input.uiSettings) ??
        input.uiSettings ??
        const SelectInputUiSettings();

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<List<T>>(
          inputPath: inputPath,
          builder: (context, selectedValues_) {
            final selectedValues = selectedValues_ ?? [];

            final String? errorText;
            if (status is InvalidValuesStatus) {
              final error = input.getError(selectedValues);
              if (error == null) {
                errorText = null;
              } else {
                errorText = context.read<WoFormL10n?>()?.translateError(error);
              }
            } else {
              errorText = null;
            }

            final fieldData =
                WoFieldData<SelectInput<T>, List<T>, SelectInputUiSettings<T>>(
              inputPath: inputPath,
              input: input,
              value: selectedValues,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (List<T>? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            return mergedSettings.widgetBuilder?.call(fieldData) ??
                WoFormTheme.of(context)?.selectFieldBuilder!(fieldData) ??
                SelectField(data: fieldData);
          },
        );
      },
    );
  }
}

class SelectStringFieldBuilder extends SelectFieldBuilder<String> {
  const SelectStringFieldBuilder({
    required super.inputPath,
    super.uiSettings,
    super.key,
  });

  @override
  SelectInput<String> getInput(WoForm form, Map<String, dynamic> values) {
    final selectStringInput = form.getInput(path: inputPath, values: values);
    if (selectStringInput is! SelectStringInput) {
      throw ArgumentError(
        'Wrong input at path "$inputPath". '
        'Expected SelectStringInput, got ${selectStringInput.runtimeType}',
      );
    }

    return SelectInput<String>(
      id: selectStringInput.id,
      maxCount: selectStringInput.maxCount,
      minCount: selectStringInput.minCount,
      defaultValues: selectStringInput.defaultValue,
      availibleValues: selectStringInput.availibleValues,
      getCustomError: selectStringInput.getCustomError,
      uiSettings: selectStringInput.uiSettings,
      toJsonT: (value) => value,
    );
  }
}
