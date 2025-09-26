import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wo_form/wo_form.dart';

extension RandomX on Random {
  String _generateUid({int length = 6}) {
    const chars =
        '0123456789'
        'abcdefghijklmnopqrstuvwxyz'
        'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return List<String>.generate(
      length,
      (_) => chars[nextInt(chars.length)],
    ).join();
  }
}

class DynamicInputsNodeWidget extends StatelessWidget {
  const DynamicInputsNodeWidget(this.data, {super.key});

  final WoFieldData<
    DynamicInputsNode,
    List<WoFormNodeMixin>,
    DynamicInputsNodeUiSettings
  >
  data;

  @override
  Widget build(BuildContext context) {
    void onAddChoice(WoFormNodeMixin inputFromTemplate) {
      final input = inputFromTemplate.withId(
        id:
            (data.uiSettings.generateId ??
                    WoFormTheme.of(context)?.generateId ??
                    Random()._generateUid)
                .call(),
      );

      data.onValueChanged?.call(List.from(data.value ?? [])..add(input));

      final form = context.read<RootNode>();
      final valuesCubit = context.read<WoFormValuesCubit>();
      final values = valuesCubit.state;
      for (final path in input.getAllInputPaths(
        values: values,
        parentPath: data.path,
      )) {
        final input = form.getChild(path: path, values: values);
        if (input is WoFormInputMixin) {
          valuesCubit.onValueChanged(
            path: path,
            value: input!.getInitialValues(parentPath: '').values.firstOrNull,
          );
        }
      }
    }

    final addButton = data.input.templates.length == 1
        ? IconButton.filled(
            onPressed: data.onValueChanged == null
                ? null
                : () {
                    // Maybe this line is outdated 😜
                    Focus.maybeOf(context)?.unfocus();
                    onAddChoice(data.input.templates.first.getChild());
                  },
            icon: const Icon(Icons.add),
            color: Theme.of(context).colorScheme.onPrimary,
          )
        : SearchField<DynamicInputTemplate>.multipleChoices(
            values: data.input.templates,
            onSelected: data.onValueChanged == null
                ? null
                : (template) => onAddChoice(template.getChild()),
            valueBuilder: (template) =>
                Text(template?.uiSettings.labelText ?? ''),
            helpValueBuilder: (template) =>
                (template.uiSettings.helperText ?? '').isEmpty
                ? null
                : Text(template.uiSettings.helperText ?? ''),
            builder: (onPressed) => IconButton.filled(
              onPressed: onPressed,
              icon: const Icon(Icons.add),
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          );

    final headerData = WoFormInputHeaderData(
      labelText: data.uiSettings.labelText,
      helperText: data.uiSettings.helperText,
      trailing: addButton,
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
                    final newValues = List<WoFormNodeMixin>.from(
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
      ],
    );
  }

  void onRemoveChoice(WoFormNodeMixin input) =>
      data.onValueChanged?.call(List.from(data.value ?? [])..remove(input));
}
