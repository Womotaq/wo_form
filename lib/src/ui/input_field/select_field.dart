import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class SelectField<T> extends StatelessWidget {
  const SelectField({
    required this.inputPath,
    this.settings,
    super.key,
  });

  final String inputPath;
  final SelectFieldSettings<T>? settings;

  SelectInput<T> getInput(WoForm form) {
    final input = form.getInput(path: inputPath);
    if (input is! SelectInput<T>) {
      throw ArgumentError(
        'Expected <SelectInput<$T>> at path: "$inputPath", '
        'found: <${input.runtimeType}>',
      );
    }

    return input;
  }

  void onUniqueChoice({
    required WoFormValuesCubit valuesCubit,
    required List<T> selectedValues,
    required T value,
  }) =>
      valuesCubit.onValueChanged(
        inputPath: inputPath,
        value: selectedValues.contains(value) ? <T>[] : [value],
      );

  void onMultipleChoice({
    required WoFormValuesCubit valuesCubit,
    required Iterable<T> selectedValues,
    required T value,
  }) {
    final selectedSet = selectedValues.toSet();
    if (!selectedSet.add(value)) selectedSet.remove(value);
    valuesCubit.onValueChanged(
      inputPath: inputPath,
      value: selectedSet.toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = getInput(form);
    final inputSettings = input.uiSettings;
    final mergedSettings = settings?.merge(inputSettings) ??
        inputSettings ??
        const SelectFieldSettings();

    final valueBuilder = mergedSettings.valueBuilder;

    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, List<T>>(
      selector: (values) {
        final value = values[inputPath];
        if (value is! List<T>?) {
          throw ArgumentError(
            'Expected <List<$T>?> at inputId: "$inputPath", '
            'found: <${value.runtimeType}>',
          );
        }
        return value ?? [];
      },
      builder: (context, selectedValues) {
        if (input.maxCount == 1) {
          return switch (mergedSettings.displayMode) {
            null || SelectFieldDisplayMode.tiles => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (mergedSettings.labelText != null)
                    ListTile(
                      title: Text(mergedSettings.labelText!),
                    ),
                  ...input.availibleValues.map(
                    (value) => ListTile(
                      leading: Radio(
                        value: value,
                        groupValue: selectedValues.firstOrNull,
                        onChanged: (_) => onUniqueChoice(
                          valuesCubit: valuesCubit,
                          selectedValues: selectedValues,
                          value: value,
                        ),
                      ),
                      title:
                          valueBuilder?.call(value) ?? Text(value.toString()),
                      onTap: () => onUniqueChoice(
                        valuesCubit: valuesCubit,
                        selectedValues: selectedValues,
                        value: value,
                      ),
                    ),
                  ),
                ],
              ),
            SelectFieldDisplayMode.selectChip => ListTile(
                title: Text(mergedSettings.labelText ?? ''),
                trailing: SelectChip<T>.uniqueChoice(
                  values: input.availibleValues.whereType(),
                  onSelected: (value) => onUniqueChoice(
                    valuesCubit: valuesCubit,
                    selectedValues: selectedValues,
                    value: value,
                  ),
                  selectedValue: selectedValues.firstOrNull,
                  valueBuilder: valueBuilder,
                ),
              ),
          };
        }

        return ListTile(
          title: Text(mergedSettings.labelText ?? ''),
          trailing: SelectChip<T>.multipleChoices(
            values: input.availibleValues.whereType(),
            onSelected: (value) => onMultipleChoice(
              valuesCubit: valuesCubit,
              selectedValues: selectedValues,
              value: value,
            ),
            selectedValues: selectedValues.whereType(),
            valueBuilder: valueBuilder,
          ),
        );
      },
    );
  }
}

class SelectStringField extends SelectField<String> {
  const SelectStringField({
    required super.inputPath,
    super.settings,
    super.key,
  });

  @override
  SelectInput<String> getInput(WoForm form) {
    final selectStringInput = form.getInput(path: inputPath);
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
      uiSettings: selectStringInput.uiSettings,
      toJsonT: (value) => value,
    );
  }
}
