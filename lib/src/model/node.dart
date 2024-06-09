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
    @JsonKey(toJson: InputsNodeWidgetSettings.staticToJson)
    @Default(InputsNodeWidgetSettings())
    InputsNodeWidgetSettings uiSettings,
  }) = InputsNode;

  @Assert('builder != null', 'ValueBuilderNode.builder cannot be null')
  const factory WoFormNode.valueBuilder({
    required String id,
    required String inputPath,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormElementMixin Function(String id, Object? value)? builder,
    Object? defaultValue,
  }) = ValueBuilderNode;

  const WoFormNode._();

  factory WoFormNode.fromJson(Map<String, dynamic> json) =>
      _$WoFormNodeFromJson(json);

  // --

  Map<String, dynamic> defaultValues({required String parentPath}) {
    switch (this) {
      case InputsNode(inputs: final inputs):
        return {
          for (final input in inputs)
            if (input is WoFormNode)
              ...input.defaultValues(parentPath: '$parentPath/$id')
            else if (input is WoFormInputMixin)
              '$parentPath/$id/${input.id}':
                  (input as WoFormInputMixin).defaultValue,
        };
      case ValueBuilderNode(
          builder: final builder,
          defaultValue: final defaultValue,
        ):
        final input = builder!(id, defaultValue);
        if (input is WoFormNode) {
          return input.defaultValues(parentPath: '$parentPath/$id');
        } else if (input is WoFormInputMixin) {
          return {
            '$parentPath/$id/${input.id}':
                (input as WoFormInputMixin).defaultValue,
          };
        } else {
          throw UnimplementedError('Unknown input type : ${input.runtimeType}');
        }
    }
  }

  dynamic exportValues(
    Map<String, dynamic> valuesMap, {
    required String parentPath,
  }) {
    switch (this) {
      case InputsNode(
          unmodifiableValuesJson: final unmodifiableValuesJson,
          inputs: final inputs,
          exportType: final exportType,
        ):
        return switch (exportType) {
          NodeExportType.list => [
              ...?unmodifiableValuesJson?.values,
              for (final input in inputs)
                if (input is WoFormNode)
                  input.exportValues(
                    valuesMap,
                    parentPath: '$parentPath/$id',
                  )
                else if (input is WoFormInputMixin)
                  (input as WoFormInputMixin).exportValue(
                    valuesMap['$parentPath/$id/${input.id}'],
                  ),
            ],
          NodeExportType.map => {
              ...?unmodifiableValuesJson,
              for (final input in inputs)
                if (input is WoFormNode)
                  input.id: input.exportValues(
                    valuesMap,
                    parentPath: '$parentPath/$id',
                  )
                else if (input is WoFormInputMixin)
                  input.id: (input as WoFormInputMixin).exportValue(
                    valuesMap['$parentPath/$id/${input.id}'],
                  ),
            },
        };
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(id, valuesMap[inputPath]);

        if (input is WoFormNode) {
          return input.exportValues(
            valuesMap,
            parentPath: '$parentPath/$id',
          );
        } else if (input is WoFormInputMixin) {
          return (input as WoFormInputMixin).exportValue(
            valuesMap['$parentPath/$id/${input.id}'],
          );
        } else {
          throw UnimplementedError('Unknown input type : ${input.runtimeType}');
        }
    }
  }

  Iterable<WoFormInputError> getErrors(
    Map<String, dynamic> valuesMap, {
    required String parentPath,
  }) {
    switch (this) {
      case InputsNode(inputs: final inputs):
        return [
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
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(id, valuesMap[inputPath]);

        if (input is WoFormNode) {
          return input.getErrors(
            valuesMap,
            parentPath: '$parentPath/$id',
          );
        } else if (input is WoFormInputMixin) {
          return [
            (input as WoFormInputMixin).getError(
              valuesMap['$parentPath/$id/${input.id}'],
            ),
          ].whereNotNull();
        } else {
          throw UnimplementedError('Unknown input type : ${input.runtimeType}');
        }
    }
  }

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
  WoFormElementMixin? getInput({
    required String path,
    Map<String, dynamic>? valuesMap,
  }) {
    if (!path.startsWith('/')) {
      throw ArgumentError('An input path must start with character "/".');
    }

    final slashIndex = path.substring(1).indexOf('/');

    switch (this) {
      case InputsNode(inputs: final inputs):
        if (slashIndex == -1) {
          return inputs.firstWhereOrNull((i) => i.id == path.substring(1));
        }

        return inputs
            .whereType<WoFormNode>()
            .firstWhereOrNull((i) => i.id == path.substring(1, slashIndex + 1))
            ?.getInput(
              path: path.substring(slashIndex + 1),
              valuesMap: valuesMap,
            );
      case ValueBuilderNode(
          inputPath: final inputPath,
          builder: final builder,
        ):
        if (valuesMap == null) {
          throw ArgumentError(
            'valuesMap must be provided in order to access a dynamic input.',
          );
        }
        final input = builder!(id, valuesMap[inputPath]);

        if (input.id == path.substring(1)) return input;

        if (input is WoFormNode) {
          return input.getInput(
            path: path.substring(slashIndex + 1),
            valuesMap: valuesMap,
          );
        }

        return null;
    }
  }

  @override
  Widget toWidget<T extends WoFormValuesCubit>({required String parentPath}) =>
      switch (this) {
        InputsNode() => InputsNodeWidget(inputPath: '$parentPath/$id'),
        ValueBuilderNode(
          inputPath: final inputPath,
          builder: final builder,
        ) =>
          WoFormValueBuilder<dynamic>(
            inputPath: inputPath,
            builder: (context, value) => builder!(id, value).toWidget(
              parentPath: '$parentPath/$id',
            ),
          ),
      };
}
