import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'node.freezed.dart';
part 'node.g.dart';

mixin WoFormElementMixin {
  String get id;

  Map<String, dynamic> toJson();

  Widget toWidget<T extends WoFormValuesCubit>({required String parentPath});
}

enum NodeExportType { list, map }

@freezed
sealed class WoFormNode with _$WoFormNode, WoFormElementMixin {
  const factory WoFormNode.inputs({
    required String id,
    Map<String, dynamic>? unmodifiableValuesJson,
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
    @Default(NodeExportType.map) NodeExportType exportType,
    @JsonKey(toJson: NodeFieldSettings.staticToJson)
    @Default(NodeFieldSettings())
    NodeFieldSettings uiSettings,
  }) = InputsNode;

  const WoFormNode._();

  factory WoFormNode.fromJson(Map<String, dynamic> json) =>
      _$WoFormNodeFromJson(json);

  // --

  Iterable<WoFormNode> get nodes => inputs.whereType();

  Map<String, dynamic> defaultValues({required String parentPath}) => {
        for (final input in inputs)
          if (input is WoFormNode)
            ...input.defaultValues(parentPath: '$parentPath/$id')
          else if (input is WoFormInputMixin)
            '$parentPath/$id/${input.id}':
                (input as WoFormInputMixin).defaultValue,
      };

  Iterable<WoFormInputError> getErrors(
    Map<String, dynamic> valuesMap, {
    required String parentPath,
  }) =>
      [
        for (final input in inputs)
          if (input is WoFormNode)
            ...input.getErrors(
              valuesMap,
              parentPath: '$parentPath/$id',
            )
          else if (input is WoFormInputMixin)
            (input as WoFormInputMixin).getError(
              valuesMap['$parentPath/$id/${input.id}'],
            ),
      ].whereNotNull();

  /// The path of an input is the ids of it and its parents, separated by the
  /// character '/'.
  ///
  /// Exemple :
  ///
  /// InputsNode(
  ///   id: 'profile',
  ///   inputs: [
  ///     StringInput(
  ///       id: 'name',
  ///       ...
  ///
  /// The path of the input with id 'name' is '/profile/name'.
  /// In a form, the full path might be '/#/profile/name'
  WoFormElementMixin? getInput({required String path}) {
    if (!path.startsWith('/')) {
      throw ArgumentError('An input path must start with character "/".');
    }

    final slashIndex = path.substring(1).indexOf('/');

    if (slashIndex == -1) {
      return inputs.firstWhereOrNull((i) => i.id == path.substring(1));
    }

    return nodes
        .firstWhereOrNull((i) => i.id == path.substring(1, slashIndex + 1))
        ?.getInput(path: path.substring(slashIndex + 1));
  }

  @override
  Widget toWidget<T extends WoFormValuesCubit>({required String parentPath}) =>
      switch (this) {
        WoForm() => throw UnimplementedError(),
        InputsNode() => InputsNodeWidget(inputPath: '$parentPath/$id'),
      };

  dynamic valueToJson(
    Map<String, dynamic> valuesMap, {
    required String parentPath,
  }) =>
      switch (exportType) {
        NodeExportType.list => [
            ...?unmodifiableValuesJson?.values,
            for (final input in inputs)
              if (input is WoFormNode)
                input.valueToJson(
                  valuesMap,
                  parentPath: '$parentPath/$id',
                )
              else if (input is WoFormInputMixin)
                (input as WoFormInputMixin).valueToJson(
                  valuesMap['$parentPath/$id/${input.id}'],
                ),
          ],
        NodeExportType.map => {
            ...?unmodifiableValuesJson,
            for (final input in inputs)
              if (input is WoFormNode)
                input.id: input.valueToJson(
                  valuesMap,
                  parentPath: '$parentPath/$id',
                )
              else if (input is WoFormInputMixin)
                input.id: (input as WoFormInputMixin).valueToJson(
                  valuesMap['$parentPath/$id/${input.id}'],
                ),
          },
      };
}
