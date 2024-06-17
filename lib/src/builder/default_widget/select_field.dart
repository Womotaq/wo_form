import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/wo_form.dart';

class SelectField<T> extends StatelessWidget {
  const SelectField({required this.data, super.key});

  final WoFieldData<SelectInput<T>, List<T>, SelectInputUiSettings<T>> data;

  @override
  Widget build(BuildContext context) {
    final selectedValues = data.value ?? [];

    final theme = Theme.of(context);
    final inputDecorationTheme = theme.inputDecorationTheme;

    // TODO : shpwAsterixWhenRequired : data.input.minCount > 0 ? '*' : ''
    final title = Text(
      data.uiSettings.labelText ?? '',
      style: inputDecorationTheme.labelStyle,
    );

    final subtitle = data.errorText != null
        ? Text(
            data.errorText!,
            style: inputDecorationTheme.errorStyle ??
                theme.textTheme.labelMedium
                    ?.copyWith(color: theme.colorScheme.error),
          )
        : (data.uiSettings.helperText ?? '').isNotEmpty
            ? Text(
                data.uiSettings.helperText ?? '',
                style: inputDecorationTheme.helperStyle ??
                    theme.textTheme.labelMedium,
              )
            : null;

    if (data.input.maxCount == 1) {
      return switch (data.uiSettings.displayMode) {
        null || SelectFieldDisplayMode.tile => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(title: title, subtitle: subtitle),
              ...data.input.availibleValues.map(
                (value) {
                  final subtitle =
                      data.uiSettings.helpValueBuilder?.call(value);
                  return ListTile(
                    leading: Radio(
                      toggleable: true,
                      value: value,
                      groupValue: data.value?.firstOrNull,
                      onChanged: (_) => onUniqueChoice(
                        valuesCubit: context.read(),
                        selectedValues: selectedValues,
                        value: value,
                      ),
                    ),
                    title: data.uiSettings.valueBuilder?.call(value) ??
                        Text(value.toString()),
                    subtitle: subtitle,
                    onTap: () => onUniqueChoice(
                      valuesCubit: context.read(),
                      selectedValues: selectedValues,
                      value: value,
                    ),
                  );
                },
              ),
            ],
          ),
        SelectFieldDisplayMode.chip => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputHeader(
                labelText: data.uiSettings.labelText ?? '',
                helperText: data.uiSettings.helperText ?? '',
                errorText: data.errorText ?? '',
              ),
              ListTile(
                title: SelectChip<T>.uniqueChoice(
                  values: data.input.availibleValues,
                  onSelected: (value) => onUniqueChoice(
                    valuesCubit: context.read(),
                    selectedValues: selectedValues,
                    value: value,
                  ),
                  selectedValue: selectedValues.firstOrNull,
                  valueBuilder: data.uiSettings.valueBuilder,
                  helpValueBuilder: data.uiSettings.helpValueBuilder,
                  searcher: data.uiSettings.searcher,
                ),
              ),
            ],
          ),
      };
    } else {
      return Column(
        children: [
          ListTile(
            title: title,
            subtitle: subtitle,
            trailing: SelectChip<T>.multipleChoices(
              values: data.input.availibleValues,
              onSelected: (value) => onMultipleChoice(
                valuesCubit: context.read(),
                selectedValues: selectedValues,
                value: value,
              ),
              selectedValues: selectedValues,
              valueBuilder: data.uiSettings.valueBuilder,
              helpValueBuilder: data.uiSettings.helpValueBuilder,
              searcher: data.uiSettings.searcher,
              builder: (onPressed) => IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.add),
              ),
            ),
          ),
          if (selectedValues.isNotEmpty)
            ListTile(
              title: Wrap(
                spacing: WoSize.small,
                children: [
                  ...selectedValues.map(
                    (v) => _MultipleSelectChip(
                      helper: data.uiSettings.helpValueBuilder?.call(v),
                      onDeleted: () => onMultipleChoice(
                        valuesCubit: context.read(),
                        selectedValues: selectedValues,
                        value: v,
                      ),
                      label: data.uiSettings.valueBuilder?.call(v) ??
                          Text(v.toString()),
                    ),
                  ),
                ],
              ),
            ),
        ],
      );
    }
  }

  void onUniqueChoice({
    required WoFormValuesCubit valuesCubit,
    required List<T> selectedValues,
    required T value,
  }) {
    valuesCubit.onValueChanged(
      inputPath: data.inputPath,
      value: value == null
          ? <T>[]
          : selectedValues.contains(value)
              ? <T>[]
              : [value],
    );
    if (data.uiSettings.submitFormOnSelect) valuesCubit.submit();
  }

  void onMultipleChoice({
    required WoFormValuesCubit valuesCubit,
    required Iterable<T> selectedValues,
    required T value,
  }) {
    final selectedSet = selectedValues.toSet();
    if (!selectedSet.add(value)) selectedSet.remove(value);
    valuesCubit.onValueChanged(
      inputPath: data.inputPath,
      value: selectedSet.toList(),
    );
  }
}

class _MultipleSelectChip extends StatelessWidget {
  const _MultipleSelectChip({
    required this.label,
    this.onDeleted,
    this.helper,
  });

  final Widget label;
  final VoidCallback? onDeleted;
  final Widget? helper;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: label,
      backgroundColor: Theme.of(context).colorScheme.cardColor,
      onDeleted: onDeleted,
      onPressed: helper == null
          ? null
          : () => showInfoPopover(
                context: context,
                builder: (popoverContext, pop) => WoPadding.allMedium(
                  child: helper,
                ),
              ),
    );
  }
}
