import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class SelectField<S> extends StatelessWidget {
  const SelectField({
    required this.inputId,
    this.valueBuilder,
    this.previewBuilder,
    this.settings,
    super.key,
  });

  final String inputId;
  final Widget Function(S?)? valueBuilder;
  final Widget Function(S?)? previewBuilder;
  final SelectFieldSettings? settings;

  SelectInput<S> getInput(WoForm form) =>
      form.getInput(inputId: inputId)! as SelectInput<S>;

  void onUniqueChoice({
    required WoFormValuesCubit valuesCubit,
    required List<S> selectedValues,
    required S value,
  }) =>
      value == null
          ? null
          : valuesCubit.onValueChanged(
              inputId: inputId,
              value: selectedValues.contains(value) ? <S>[] : [value],
            );

  void onMultipleChoice({
    required WoFormValuesCubit valuesCubit,
    required Iterable<S> selectedValues,
    required S value,
  }) {
    final selectedSet = selectedValues.toSet();
    if (!selectedSet.add(value)) selectedSet.remove(value);
    valuesCubit.onValueChanged(
      inputId: inputId,
      value: selectedSet.toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = getInput(form);
    final inputSettings = input.fieldSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

    return BlocSelector<WoFormValuesCubit, Map<String, dynamic>, List<S>>(
      selector: (values) => (values[inputId] as List<S>?) ?? [],
      builder: (context, selectedValues) {
        if (input.maxCount == 1) {
          return switch (mergedSettings.displayMode) {
            null || SelectFieldDisplayMode.tiles => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (mergedSettings.labelText != null)
                    ListTile(
                      title: Text(mergedSettings.labelText!),
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
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
                      visualDensity: VisualDensity.compact,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
            SelectFieldDisplayMode.selectChip => ListTile(
                title: Text(mergedSettings.labelText ?? ''),
                trailing: SelectChip<S>.uniqueChoice(
                  values: input.availibleValues.whereType(),
                  onSelected: (value) => onUniqueChoice(
                    valuesCubit: valuesCubit,
                    selectedValues: selectedValues,
                    value: value,
                  ),
                  selectedValue: selectedValues.firstOrNull,
                  valueBuilder: valueBuilder,
                  previewBuilder: previewBuilder,
                ),
                visualDensity: VisualDensity.compact,
                contentPadding: EdgeInsets.zero,
              ),
          };
        }

        return ListTile(
          title: Text(mergedSettings.labelText ?? ''),
          trailing: SelectChip<S>.multipleChoices(
            values: input.availibleValues.whereType(),
            onSelected: (value) => onMultipleChoice(
              valuesCubit: valuesCubit,
              selectedValues: selectedValues,
              value: value,
            ),
            selectedValues: selectedValues.whereType(),
            valueBuilder: valueBuilder,
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

class SelectStringField extends SelectField<String> {
  const SelectStringField({
    required super.inputId,
    super.valueBuilder,
    super.previewBuilder,
    super.settings,
    super.key,
  });

  @override
  SelectInput<String> getInput(WoForm form) {
    final selectStringInput =
        form.getInput(inputId: inputId)! as SelectStringInput;
    return SelectInput<String>(
      id: selectStringInput.id,
      maxCount: selectStringInput.maxCount,
      minCount: selectStringInput.minCount,
      defaultValues: selectStringInput.defaultValue,
      availibleValues: selectStringInput.availibleValues,
      fieldSettings: selectStringInput.fieldSettings,
      toJsonT: (value) => value,
    );
  }
}
