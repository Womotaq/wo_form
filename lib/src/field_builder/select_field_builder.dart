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

  void onUniqueChoice({
    required WoFormValuesCubit valuesCubit,
    required List<T> selectedValues,
    required T value,
  }) =>
      valuesCubit.onValueChanged(
        inputPath: inputPath,
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
      inputPath: inputPath,
      value: selectedSet.toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final form = context.read<WoForm>();
    final valuesCubit = context.read<WoFormValuesCubit>();

    final input = getInput(form, valuesCubit.state);
    final inputSettings = input.uiSettings;
    final mergedSettings = uiSettings?.merge(inputSettings) ??
        inputSettings ??
        const SelectInputUiSettings();

    final valueBuilder = mergedSettings.valueBuilder;

    return BlocBuilder<WoFormStatusCubit, WoFormStatus>(
      builder: (context, status) {
        return WoFormValueBuilder<List<T>>(
          inputPath: inputPath,
          builder: (context, selectedValues_) {
            final selectedValues = selectedValues_ ?? [];

            final title = Text(
              (mergedSettings.labelText ?? '') +
                  (input.minCount > 0 ? '*' : ''),
            );

            final formTheme = Theme.of(context).extension<WoFormTheme>();

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(
                    selectedValues,
                    formTheme?.localizeInputError,
                  );

            final fieldData = WoFieldData<List<T>, SelectInputUiSettings<T>>(
              inputPath: inputPath,
              value: selectedValues,
              errorText: errorText,
              uiSettings: mergedSettings,
              onValueChanged: (List<T>? value) => valuesCubit.onValueChanged(
                inputPath: inputPath,
                value: value,
              ),
            );

            final test = mergedSettings.widgetBuilder?.call(fieldData) ??
                formTheme?.selectFieldBuilder!(fieldData) ??
                SelectField(data: fieldData);

            final subtitle = errorText != null
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
                    : null;

            if (input.maxCount == 1) {
              return switch (mergedSettings.displayMode) {
                null || SelectFieldDisplayMode.tile => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(title: title, subtitle: subtitle),
                      ...input.availibleValues.map(
                        (value) {
                          final subtitle =
                              mergedSettings.helpValueBuilder?.call(value);
                          return ListTile(
                            leading: Radio(
                              toggleable: true,
                              value: value,
                              groupValue: selectedValues.firstOrNull,
                              onChanged: (_) => onUniqueChoice(
                                valuesCubit: valuesCubit,
                                selectedValues: selectedValues,
                                value: value,
                              ),
                            ),
                            title: valueBuilder?.call(value) ??
                                Text(value.toString()),
                            subtitle: subtitle == null
                                ? null
                                : DefaultTextStyle(
                                    style: context.woTheme.infoStyle!,
                                    child: subtitle,
                                  ),
                            onTap: () => onUniqueChoice(
                              valuesCubit: valuesCubit,
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
                        labelText: mergedSettings.labelText ?? '',
                        helperText: mergedSettings.helperText ?? '',
                        errorText: errorText ?? '',
                      ),
                      ListTile(
                        title: SelectChip<T>.uniqueChoice(
                          values: input.availibleValues,
                          onSelected: (value) => onUniqueChoice(
                            valuesCubit: valuesCubit,
                            selectedValues: selectedValues,
                            value: value,
                          ),
                          selectedValue: selectedValues.firstOrNull,
                          valueBuilder: valueBuilder,
                          helpValueBuilder: mergedSettings.helpValueBuilder,
                          searcher: mergedSettings.searcher,
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
                      values: input.availibleValues,
                      onSelected: (value) => onMultipleChoice(
                        valuesCubit: valuesCubit,
                        selectedValues: selectedValues,
                        value: value,
                      ),
                      selectedValues: selectedValues,
                      valueBuilder: valueBuilder,
                      helpValueBuilder: mergedSettings.helpValueBuilder,
                      searcher: mergedSettings.searcher,
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
                              helper: mergedSettings.helpValueBuilder?.call(v),
                              onDeleted: () => onMultipleChoice(
                                valuesCubit: valuesCubit,
                                selectedValues: selectedValues,
                                value: v,
                              ),
                              label:
                                  valueBuilder?.call(v) ?? Text(v.toString()),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              );
            }
          },
        );
      },
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

// class SelectStringFieldBuilder extends SelectFieldBuilder<String> {
//   const SelectStringFieldBuilder({
//     required super.inputPath,
//     super.uiSettings,
//     super.key,
//   });

//   @override
//   SelectInput<String> getInput(WoForm form, Map<String, dynamic> values) {
//     final selectStringInput = form.getInput(path: inputPath, values: values);
//     if (selectStringInput is! SelectStringInput) {
//       throw ArgumentError(
//         'Wrong input at path "$inputPath". '
//         'Expected SelectStringInput, got ${selectStringInput.runtimeType}',
//       );
//     }

//     return SelectInput<String>(
//       id: selectStringInput.id,
//       maxCount: selectStringInput.maxCount,
//       minCount: selectStringInput.minCount,
//       defaultValues: selectStringInput.defaultValue,
//       availibleValues: selectStringInput.availibleValues,
//       uiSettings: selectStringInput.uiSettings,
//       toJsonT: (value) => value,
//     );
//   }
// }

class SelectField<T> extends StatelessWidget {
  const SelectField({required this.data, super.key});

  final WoFieldData<T, SelectInputUiSettings<T>> data;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
