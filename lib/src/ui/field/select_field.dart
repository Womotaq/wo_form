import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class SelectField<T extends WoFormCubit, S> extends StatelessWidget {
  const SelectField({
    required this.getInput,
    this.valueBuilder,
    this.previewBuilder,
    this.settings,
    super.key,
  });

  final SelectInput<S> Function(WoForm form) getInput;
  final Widget Function(S?)? valueBuilder;
  final Widget Function(S?)? previewBuilder;
  final SelectFieldSettings? settings;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<T>();

    final inputSettings = getInput(cubit.state).fieldSettings;
    final mergedSettings = settings?.merge(inputSettings) ?? inputSettings;

    return BlocSelector<T, WoForm, SelectInput<S?>>(
      selector: getInput,
      builder: (context, input) {
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
                        groupValue: input.selectedValues.firstOrNull,
                        onChanged: (value) => value == null
                            ? null
                            : cubit.onInputChanged(
                                input:
                                    input.copyWith(selectedValues: <S>[value]),
                              ),
                      ),
                      title:
                          valueBuilder?.call(value) ?? Text(value.toString()),
                      onTap: () => value == null
                          ? null
                          : cubit.onInputChanged(
                              input: input.copyWith(selectedValues: <S>[value]),
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
                  onSelected: (value) => value == null
                      ? null
                      : cubit.onInputChanged(
                          input: input.copyWith(selectedValues: <S>[value]),
                        ),
                  selectedValue: input.selectedValues.firstOrNull,
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
            onSelected: (value) => cubit.onInputChanged(
              input: input.copyWith(
                selectedValues:
                    ((input.selectedValues).toSet()..add(value)).toList(),
              ),
            ),
            selectedValues: input.selectedValues.whereType(),
            valueBuilder: valueBuilder,
          ),
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

class SelectStringField<T extends WoFormCubit> extends SelectField<T, String> {
  SelectStringField({
    required SelectStringInput Function(WoForm form) getInput,
    super.valueBuilder,
    super.previewBuilder,
    super.settings,
    super.key,
  }) : super(
          getInput: (form) {
            final selectStringInput = getInput(form);
            return SelectInput<String>(
              id: selectStringInput.id,
              selectedValues: selectStringInput.selectedValues,
              availibleValues: selectStringInput.availibleValues,
              maxCount: selectStringInput.maxCount,
              minCount: selectStringInput.minCount,
              fieldSettings: selectStringInput.fieldSettings,
              toJsonT: (value) => value,
            );
          },
        );
}
