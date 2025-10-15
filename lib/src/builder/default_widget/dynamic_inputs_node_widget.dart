import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/wo_form.dart';

class DynamicInputsNodeWidget extends StatelessWidget {
  const DynamicInputsNodeWidget(this.data, {super.key});

  final WoFieldData<DynamicInputsNode, List<WoFormNode>> data;

  @override
  Widget build(BuildContext context) {
    final woFormTheme = WoFormTheme.of(context);

    final addButton =
        (data.input.uiSettings?.addButtonBuilder ??
        woFormTheme?.dynamicInputsNodeAddButtonBuilder ??
        DynamicInputsNodeAddButton.new)(data);
    final addButtonPosition =
        data.input.uiSettings?.addButtonPosition ??
        woFormTheme?.dynamicInputsNodeAddButtonPosition ??
        DynamicInputsNodeAddButtonPosition.header;

    final headerData = WoFormInputHeaderData(
      labelText: data.input.uiSettings?.labelText,
      helperText: data.input.uiSettings?.helperText,
      trailing: addButtonPosition == DynamicInputsNodeAddButtonPosition.header
          ? addButton
          : null,
      shrinkWrap: false,
    );

    final children =
        data.value
            ?.map(
              (node) => DeletableField(
                // This key avoids unnecessary rebuilds
                key: Key('${data.path}/${node.id}'),
                onDelete: data.onValueChanged == null
                    ? null
                    : () {
                        (data.input.uiSettings?.onChildDeletion ??
                                WoFormTheme.of(context)?.onDynamicInputDeletion)
                            ?.call(
                              context,
                              () => data.onValueChanged?.call(data.value ?? []),
                            );
                        onRemoveChoice(node);
                      },
                child: WoFormElementBuilder(
                  path: '${data.path}/${node.id}',
                  key: Key('${data.path}/${node.id}'),
                ),
              ),
            )
            .toList() ??
        [];

    return Column(
      children: [
        (woFormTheme?.inputHeaderBuilder ?? InputHeader.new).call(headerData),
        WoReorderableByGrabListView(
          onReorder: data.onValueChanged == null
              ? null
              : (oldIndex, newIndex) {
                  try {
                    final newValues = List<WoFormNode>.from(
                      data.value ?? [],
                    );
                    newValues.insert(
                      newIndex,
                      newValues.removeAt(oldIndex),
                    );
                    data.onValueChanged?.call(newValues);
                  } catch (_) {}
                },
          reorderable: data.input.uiSettings?.reorderable ?? true,
          oddEvenRowColors:
              data.input.uiSettings?.oddEvenRowColors ??
              data.input.uiSettings?.reorderable ??
              true,
          children: children,
        ),
        if (addButtonPosition == DynamicInputsNodeAddButtonPosition.footer)
          addButton,
      ],
    );
  }

  void onRemoveChoice(WoFormNode input) =>
      data.onValueChanged?.call(List.from(data.value ?? [])..remove(input));
}

class DynamicInputsNodeAddButton extends StatelessWidget {
  const DynamicInputsNodeAddButton(this.data, {super.key});

  final WoFieldData<DynamicInputsNode, List<WoFormNode>> data;

  @override
  Widget build(BuildContext context) {
    final label = (data.input.uiSettings?.addButtonText ?? '') == ''
        ? null
        : Text(data.input.uiSettings?.addButtonText ?? '');
    final onTap = data.onValueChanged == null
        ? null
        : () {
            addTemplate(
              context,
              data.input.templates.first.getChild(),
            );
          };

    switch (data.input.uiSettings?.addButtonPosition) {
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
                openSearchScreen: data.input.uiSettings?.openTemplates,
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
                openSearchScreen: data.input.uiSettings?.openTemplates,
              );
    }
  }

  void addTemplate(BuildContext context, WoFormNode inputFromTemplate) {
    final input = inputFromTemplate.withId(
      id:
          (data.input.uiSettings?.generateId ??
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
