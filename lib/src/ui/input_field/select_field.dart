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

    final input = getInput(form);
    final inputSettings = input.uiSettings;
    final mergedSettings = settings?.merge(inputSettings) ??
        inputSettings ??
        const SelectFieldSettings();

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

            final errorText = status is! InvalidValuesStatus
                ? null
                : input.getInvalidExplanation(selectedValues, context.formL10n);
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
                      if (mergedSettings.labelText != null)
                        ListTile(title: title, subtitle: subtitle),
                      ...input.availibleValues.map(
                        (value) {
                          final subtitle =
                              mergedSettings.helpValueBuilder?.call(value);
                          return ListTile(
                            leading: Radio(
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
                SelectFieldDisplayMode.chip => ListTile(
                    title: title,
                    subtitle: subtitle,
                    trailing: SelectChip<T>.uniqueChoice(
                      values: input.availibleValues,
                      onSelected: (value) => onUniqueChoice(
                        valuesCubit: valuesCubit,
                        selectedValues: selectedValues,
                        value: value,
                      ),
                      selectedValue: selectedValues.firstOrNull,
                      valueBuilder: valueBuilder,
                      helpValueBuilder: mergedSettings.helpValueBuilder,
                    ),
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
                      showArrow: false,
                      previewBuilder: (_) => const Icon(Icons.add),
                    ),
                  ),
                  if (selectedValues.isNotEmpty)
                    ListTile(
                      title: Wrap(
                        spacing: WoSize.small,
                        runSpacing: WoSize.small,
                        children: [
                          ...selectedValues.map(
                            (v) => CardButton.outlined(
                              onPressed: () => onMultipleChoice(
                                valuesCubit: valuesCubit,
                                selectedValues: selectedValues,
                                value: v,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  valueBuilder?.call(v) ?? Text(v.toString()),
                                  WoGap.xsmall,
                                  const Icon(Icons.close, size: WoSize.medium),
                                ],
                              ),
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
