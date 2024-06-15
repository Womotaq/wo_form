import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/example/ui/input_field/input_header.dart';
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
                final translateError = context
                        .read<WoFormInputErrorTranslator?>()
                        ?.translateError ??
                    (error) => error.toString();
                errorText = translateError(error);
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

class SelectField<T> extends StatelessWidget {
  const SelectField({required this.data, super.key});

  final WoFieldData<SelectInput<T>, List<T>, SelectInputUiSettings<T>> data;

  @override
  Widget build(BuildContext context) {
    final selectedValues = data.value ?? [];

    final inputDecorationTheme = Theme.of(context).inputDecorationTheme;

    // TODO : shpwAsterixWhenRequired : data.input.minCount > 0 ? '*' : ''
    final title = Text(
      data.uiSettings.labelText ?? '',
      style: inputDecorationTheme.labelStyle,
    );

    final subtitle = data.errorText != null
        ? Text(
            data.errorText!,
            style: inputDecorationTheme.errorStyle,
          )
        : (data.uiSettings.helperText ?? '').isNotEmpty
            ? Text(
                data.uiSettings.helperText ?? '',
                style: inputDecorationTheme.helperStyle,
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
  }) =>
      valuesCubit.onValueChanged(
        inputPath: data.inputPath,
        value: value == null
            ? <T>[]
            : selectedValues.contains(value)
                ? <T>[]
                : [value],
      );

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
      backgroundColor: context.colorScheme.cardColor,
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
