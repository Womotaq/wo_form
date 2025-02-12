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

    if (data.input.maxCount == 1) {
      switch (data.uiSettings.childrenVisibility) {
        case null:
        case ChildrenVisibility.always:
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Opacity(
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
              ...data.input.availibleValues.map(
                (value) {
                  final subtitle =
                      data.uiSettings.helpValueBuilder?.call(value);
                  return RadioListTile<T>(
                    contentPadding: const EdgeInsets.only(
                      left: 5,
                      right: 16,
                    ),
                    toggleable: true,
                    value: value,
                    groupValue: data.value?.firstOrNull,
                    onChanged: data.onValueChanged == null
                        ? null
                        : (_) => onUniqueChoice(value),
                    title: data.uiSettings.valueBuilder?.call(value) ??
                        Text(value.toString()),
                    subtitle: subtitle,
                  );
                },
              ),
            ],
          );
        case ChildrenVisibility.whenAsked:
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
      }
    } else {
      return switch (data.uiSettings.childrenVisibility) {
        null || ChildrenVisibility.always => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Opacity(
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
              ...data.input.availibleValues.map(
                (value) {
                  final subtitle =
                      data.uiSettings.helpValueBuilder?.call(value);
                  return CheckboxListTile(
                    contentPadding: const EdgeInsets.only(
                      left: 5,
                      right: 16,
                    ),
                    value: selectedValues.contains(value),
                    onChanged: data.onValueChanged == null
                        ? null
                        : (_) => onMultipleChoice(value),
                    title: data.uiSettings.valueBuilder?.call(value) ??
                        Text(value.toString()),
                    subtitle: subtitle,
                    controlAffinity: ListTileControlAffinity.leading,
                  );
                },
              ),
            ],
          ),
        ChildrenVisibility.whenAsked => Opacity(
            opacity: data.onValueChanged == null ? 0.3 : 1,
            child: Column(
              children: [
                Builder(
                  builder: (context) {
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
                            searchScreenBuilder:
                                data.uiSettings.searchScreenBuilder,
                            builder: (onPressed) => IconButton.filled(
                              onPressed: onPressed,
                              icon: const Icon(Icons.add),
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                            provider: ({required child}) =>
                                RepositoryProvider.value(
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

                    return (data.uiSettings.headerBuilder ??
                            woTheme?.inputHeaderBuilder ??
                            InputHeader.new)
                        .call(headerData);
                  },
                ),
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
                            label: data.uiSettings.valueBuilder?.call(v) ??
                                Text(v.toString()),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
      };
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
