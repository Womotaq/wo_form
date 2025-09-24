import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popover/popover.dart';
import 'package:wo_form/src/builder/default_widget/flex_field.dart';
import 'package:wo_form/wo_form.dart';

class SelectField<T> extends StatelessWidget {
  const SelectField(this.data, {super.key});

  final WoFieldData<SelectInput<T>, List<T>, SelectInputUiSettings<T>> data;

  @override
  Widget build(BuildContext context) {
    final woTheme = WoFormTheme.of(context);
    final selectedValues = data.value ?? [];
    final quizSettings = data.input.quizSettings;
    final scoreWidget = quizSettings == null
        ? null
        : (data.uiSettings.scoreBuilder ??
                  woTheme?.scoreBuilder ??
                  ScoreWidget.new)
              .call(score: quizSettings.score);

    switch (data.uiSettings.childrenVisibility) {
      case null:
      case ChildrenVisibility.always:
        final header = Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Opacity(
            opacity: data.onValueChanged == null ? 0.3 : 1,
            child: Builder(
              builder: (context) {
                final headerData = WoFormInputHeaderData(
                  path: data.path,
                  labelText: data.uiSettings.labelText,
                  helperText: data.uiSettings.helperText,
                  errorText: data.errorText,
                  trailing: scoreWidget,
                );

                return (data.uiSettings.headerBuilder ??
                        woTheme?.inputHeaderBuilder ??
                        InputHeader.new)
                    .call(headerData);
              },
            ),
          ),
        );
        return _AlwaysVisibleSelectField(
          data: data,
          onChanged: (value) {
            if (data.input.maxCount == 1) {
              onUniqueChoice(value);
            } else {
              onMultipleChoice(value);
            }
          },
          header: header,
          tileBuilder: data.uiSettings.tileBuilder,
        );
      case ChildrenVisibility.whenAsked:
        if (data.input.maxCount == 1) {
          final selector = SearchField<T>.uniqueChoice(
            values: data.input.availibleValues,
            onSelected: data.onValueChanged == null ? null : onUniqueChoice,
            selectedValue: selectedValues.firstOrNull,
            valueBuilder: data.uiSettings.valueBuilder,
            selectedBuilder: data.uiSettings.selectedBuilder,
            helpValueBuilder: data.uiSettings.helpValueBuilder,
            hintText: data.uiSettings.hintText,
            searcher: data.uiSettings.searcher,
            searchScreenBuilder: data.uiSettings.searchScreenBuilder,
            provider: ({required child}) => RepositoryProvider.value(
              value: context.read<RootNode>(),
              child: MultiBlocProvider(
                providers: [
                  BlocProvider.value(
                    value: context.read<WoFormValuesCubit>(),
                  ),
                  BlocProvider.value(
                    value: context.read<WoFormStatusCubit>(),
                  ),
                  BlocProvider.value(
                    value: context.read<WoFormLockCubit>(),
                  ),
                ],
                child: child,
              ),
            ),
          );

          return FlexField(
            path: data.path,
            labelFlex: data.uiSettings.labelFlex,
            labelText: data.uiSettings.labelText,
            helperText: data.uiSettings.helperText,
            errorText: data.errorText,
            trailing: scoreWidget,
            disableMode: data.onValueChanged == null
                ? FlexFieldDisableMode.header
                : FlexFieldDisableMode.none,
            headerBuilder: data.uiSettings.headerBuilder,
            child: selector,
          );
        } else {
          final headerData = WoFormInputHeaderData(
            path: data.path,
            labelText: data.uiSettings.labelText,
            helperText: data.uiSettings.helperText,
            errorText: data.errorText,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (scoreWidget != null) ...[
                  scoreWidget,
                  const SizedBox(width: 8),
                ],
                SearchField<T>.multipleChoices(
                  values: data.input.availibleValues,
                  onSelected: data.onValueChanged == null
                      ? null
                      : onMultipleChoice,
                  selectedValues: selectedValues,
                  valueBuilder: data.uiSettings.valueBuilder,
                  helpValueBuilder: data.uiSettings.helpValueBuilder,
                  hintText: data.uiSettings.hintText,
                  searcher: data.uiSettings.searcher,
                  searchScreenBuilder: data.uiSettings.searchScreenBuilder,
                  builder: (onPressed) => IconButton.filled(
                    onPressed: onPressed,
                    icon: const Icon(Icons.add),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  provider: ({required child}) => RepositoryProvider.value(
                    value: context.read<RootNode>(),
                    child: MultiBlocProvider(
                      providers: [
                        BlocProvider.value(
                          value: context.read<WoFormValuesCubit>(),
                        ),
                        BlocProvider.value(
                          value: context.read<WoFormStatusCubit>(),
                        ),
                        BlocProvider.value(
                          value: context.read<WoFormLockCubit>(),
                        ),
                      ],
                      child: child,
                    ),
                  ),
                ),
              ],
            ),
            shrinkWrap: false,
          );

          return Opacity(
            opacity: data.onValueChanged == null ? 0.3 : 1,
            child: Column(
              children: [
                (data.uiSettings.headerBuilder ??
                        woTheme?.inputHeaderBuilder ??
                        InputHeader.new)
                    .call(headerData),
                if (selectedValues.isNotEmpty)
                  ListTile(
                    title: Wrap(
                      spacing: 8,
                      children: [
                        ...selectedValues.map(
                          (v) => _MultipleSelectChip(
                            helper: data.uiSettings.helpValueBuilder?.call(v),
                            onDeleted: data.onValueChanged == null
                                ? null
                                : () => onMultipleChoice(v),
                            label:
                                data.uiSettings.valueBuilder?.call(v) ??
                                Text(v.toString()),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          );
        }
    }
  }

  void onUniqueChoice(T value) {
    data.onValueChanged?.call(
      value == null
          ? <T>[]
          : (data.value?.contains(value) ?? false) && (data.input.minCount < 1)
          ? <T>[]
          : [value],
    );
  }

  void onMultipleChoice(T value) {
    final selectedSet = data.value?.toSet() ?? {};
    if (!selectedSet.add(value)) selectedSet.remove(value);
    data.onValueChanged?.call(selectedSet.toList());
  }
}

class _AlwaysVisibleSelectField<T> extends StatelessWidget {
  const _AlwaysVisibleSelectField({
    required this.data,
    required this.onChanged,
    required this.header,
    this.tileBuilder,
  });

  final WoFieldData<SelectInput<T>, List<T>, SelectInputUiSettings<T>> data;
  final void Function(T) onChanged;
  final Widget header;
  final Widget Function(T value, VoidCallback onTap, bool isSelected)?
  tileBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: (data.uiSettings.flex ?? 0) > 0
          ? ListView.builder(
              // TODO : uiSettings.physics
              // physics: const ClampingScrollPhysics(),
              itemCount: data.input.availibleValues.length + 1,
              itemBuilder: (_, index) => index == 0
                  ? header
                  : valueBuilder(data.input.availibleValues[index - 1]),
            )
          : Column(
              children: [
                header,
                ...data.input.availibleValues.map(valueBuilder),
              ],
            ),
    );
  }

  Widget valueBuilder(T value) =>
      tileBuilder?.call(
        value,
        () => onChanged(value),
        data.value?.contains(value) ?? false,
      ) ??
      (data.input.maxCount == 1 ? radioBuilder(value) : checkboxBuilder(value));

  Widget radioBuilder(T value) => RadioGroup(
    groupValue: data.value?.firstOrNull,
    onChanged: (_) => data.onValueChanged == null ? null : onChanged(value),
    child: RadioListTile<T>(
      contentPadding: const EdgeInsets.only(left: 5, right: 16),
      toggleable: true,
      value: value,
      title:
          data.uiSettings.valueBuilder?.call(value) ?? Text(value.toString()),
      subtitle: data.uiSettings.helpValueBuilder?.call(value),
    ),
  );

  Widget checkboxBuilder(T value) => CheckboxListTile(
    contentPadding: const EdgeInsets.only(
      left: 5,
      right: 16,
    ),
    value: data.value?.contains(value) ?? false,
    onChanged: data.onValueChanged == null ? null : (_) => onChanged(value),
    title: data.uiSettings.valueBuilder?.call(value) ?? Text(value.toString()),
    subtitle: data.uiSettings.helpValueBuilder?.call(
      value,
    ),
    controlAffinity: ListTileControlAffinity.leading,
  );
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
      // This key prevents the onDeleted animation to be assignated
      // to the next InputChip.
      key: UniqueKey(),
      label: label,
      onDeleted: onDeleted,
      deleteButtonTooltipMessage: '',
      onPressed: helper == null
          ? null
          : () => showPopover(
              context: context,
              backgroundColor: Theme.of(context).colorScheme.surfaceBright,
              bodyBuilder: (popoverContext) => Padding(
                padding: const EdgeInsets.all(16),
                child: helper,
              ),
            ),
    );
  }
}
