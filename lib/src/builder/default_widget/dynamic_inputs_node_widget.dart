import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class DynamicInputsNodeWidget extends StatelessWidget {
  const DynamicInputsNodeWidget(this.data, {super.key});

  final WoFieldData<
    DynamicInputsNode,
    List<WoFormElement>,
    DynamicInputsNodeUiSettings
  >
  data;

  @override
  Widget build(BuildContext context) {
    final addButton =
        (data.uiSettings.addButtonBuilder ?? DynamicInputsNodeAddButton.new)(
          data,
        );
    final addButtonPosition =
        data.uiSettings.addButtonPosition ??
        DynamicInputsNodeAddButtonPosition.header;

    final headerData = WoFormInputHeaderData(
      labelText: data.uiSettings.labelText,
      helperText: data.uiSettings.helperText,
      trailing: addButtonPosition == DynamicInputsNodeAddButtonPosition.header
          ? addButton
          : null,
      shrinkWrap: false,
    );

    final children =
        data.value
            ?.map(
              (e) => DeletableField(
                // This key avoids unnecessary rebuilds
                key: Key('${data.path}/${e.id}'),
                onDelete: data.onValueChanged == null
                    ? null
                    : () {
                        (data.uiSettings.onChildDeletion ??
                                WoFormTheme.of(context)?.onDynamicInputDeletion)
                            ?.call(
                              () => data.onValueChanged?.call(data.value ?? []),
                            );
                        onRemoveChoice(e);
                      },
                child: WoFormElementBuilder(
                  path: '${data.path}/${e.id}',
                  key: Key('${data.path}/${e.id}'),
                ),
              ),
            )
            .toList() ??
        [];

    return Column(
      children: [
        (WoFormTheme.of(context)?.inputHeaderBuilder ?? InputHeader.new).call(
          headerData,
        ),
        WoReorderableByGrabListView(
          onReorder: data.onValueChanged == null
              ? null
              : (oldIndex, newIndex) {
                  try {
                    final newValues = List<WoFormElement>.from(
                      data.value ?? [],
                    );
                    newValues.insert(
                      newIndex,
                      newValues.removeAt(oldIndex),
                    );
                    data.onValueChanged?.call(newValues);
                  } catch (_) {}
                },
          reorderable: data.uiSettings.reorderable ?? true,
          oddEvenRowColors:
              data.uiSettings.oddEvenRowColors ??
              data.uiSettings.reorderable ??
              true,
          children: children,
        ),
        if (addButtonPosition == DynamicInputsNodeAddButtonPosition.footer)
          addButton,
      ],
    );
  }

  void onRemoveChoice(WoFormElement input) =>
      data.onValueChanged?.call(List.from(data.value ?? [])..remove(input));
}

class DynamicInputsNodeAddButton extends StatelessWidget {
  const DynamicInputsNodeAddButton(this.data, {super.key});

  final WoFieldData<
    DynamicInputsNode,
    List<WoFormElement>,
    DynamicInputsNodeUiSettings
  >
  data;

  @override
  Widget build(BuildContext context) {
    final label = (data.uiSettings.addButtonText ?? '') == ''
        ? null
        : Text(data.uiSettings.addButtonText ?? '');
    final onTap = data.onValueChanged == null
        ? null
        : () {
            addTemplate(
              context,
              data.input.templates.first.getChild(),
            );
          };

    switch (data.uiSettings.addButtonPosition) {
      case null:
      case DynamicInputsNodeAddButtonPosition.header:
        Widget headerBuiler(VoidCallback? onPressed) => label == null
            ? IconButton.filled(
                onPressed: onPressed,
                icon: const Icon(Icons.add),
                color: Theme.of(context).colorScheme.onPrimary,
              )
            : FilledButton.icon(
                onPressed: onPressed,
                label: label,
                icon: const Icon(Icons.add),
              );

        return data.input.templates.length == 1
            ? headerBuiler(onTap)
            : SearchField<DynamicInputTemplate>.multipleChoices(
                values: data.input.templates,
                onSelected: data.onValueChanged == null
                    ? null
                    : (template) => addTemplate(context, template.getChild()),
                valueBuilder: (template) => Row(
                  children: [
                    if (template?.uiSettings.prefixIcon != null) ...[
                      ?template?.uiSettings.prefixIcon,
                      const SizedBox(width: 16),
                    ],
                    Expanded(
                      child: Text(template?.uiSettings.labelText ?? ''),
                    ),
                  ],
                ),
                helpValueBuilder: (template) =>
                    (template.uiSettings.helperText ?? '').isEmpty
                    ? null
                    : Text(template.uiSettings.helperText ?? ''),
                builder: headerBuiler,
                searchScreenLayout: LayoutMethod.shrinkWrap,
                openSearchScreen: data.uiSettings.openTemplates,
              );
      case DynamicInputsNodeAddButtonPosition.footer:
        Widget footerBuilder(VoidCallback? onPressed) => ListTile(
          leading: const Icon(Icons.add),
          title: label,
          onTap: onPressed,
        );

        return data.input.templates.length == 1
            ? footerBuilder(onTap)
            : SearchField<DynamicInputTemplate>.multipleChoices(
                values: data.input.templates,
                onSelected: data.onValueChanged == null
                    ? null
                    : (template) => addTemplate(context, template.getChild()),
                valueBuilder: (template) => Row(
                  children: [
                    if (template?.uiSettings.prefixIcon != null) ...[
                      ?template?.uiSettings.prefixIcon,
                      const SizedBox(width: 16),
                    ],
                    Expanded(
                      child: Text(template?.uiSettings.labelText ?? ''),
                    ),
                  ],
                ),
                helpValueBuilder: (template) =>
                    (template.uiSettings.helperText ?? '').isEmpty
                    ? null
                    : Text(template.uiSettings.helperText ?? ''),
                builder: footerBuilder,
                searchScreenLayout: LayoutMethod.shrinkWrap,
                openSearchScreen: data.uiSettings.openTemplates,
              );
    }
  }

  void addTemplate(BuildContext context, WoFormElement inputFromTemplate) {
    final input = inputFromTemplate.withId(
      id:
          (data.uiSettings.generateId ??
                  WoFormTheme.of(context)?.generateId ??
                  generateUid)
              .call(),
    );

    data.onValueChanged?.call(List.from(data.value ?? [])..add(input));

    context.read<WoFormValuesCubit>().onValuesChanged(
      input.getInitialValues(parentPath: data.path),
    );
  }
}
