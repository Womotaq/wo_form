import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_atomic_design/package_atomic_design.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/src/utils/to_absolute_path.dart';
import 'package:wo_form/wo_form.dart';

part 'node.freezed.dart';
part 'node.g.dart';

mixin WoFormElementMixin {
  String get id;

  Map<String, dynamic> toJson();

  dynamic getSubmittedJson({
    required Map<String, dynamic> valuesMap, // TODO : rename as values
    required String parentPath,
  });

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
    @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
    @Default(InputsNodeUiSettings())
    InputsNodeUiSettings uiSettings,
  }) = InputsNode;

  @Assert('builder != null', 'ValueBuilderNode.builder cannot be null')
  const factory WoFormNode.valueBuilder({
    required String id,
    required String inputPath,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormElementMixin Function(String id, Object? value)? builder,
    Object? defaultValue,
  }) = ValueBuilderNode;

  @Assert('listener != null', 'ValueListenerNode.listener cannot be null')
  const factory WoFormNode.valueListener({
    required String id,
    required String inputPath,
    @JsonKey(includeToJson: false, includeFromJson: false)
    bool Function(Object? previous, Object? current)? listenWhen,
    @JsonKey(includeToJson: false, includeFromJson: false)
    void Function(BuildContext context, String parentPath, Object? value)?
        listener,
  }) = ValueListenerNode;

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
      case ValueListenerNode():
        return {};
    }
  }

  @override
  dynamic getSubmittedJson({
    required Map<String, dynamic> valuesMap,
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
                input.getSubmittedJson(
                  valuesMap: valuesMap,
                  parentPath: '$parentPath/$id',
                ),
            ],
          NodeExportType.map => {
              ...?unmodifiableValuesJson,
              for (final input in inputs)
                input.id: input.getSubmittedJson(
                  valuesMap: valuesMap,
                  parentPath: '$parentPath/$id',
                ),
            },
        };
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(
          id,
          valuesMap[toAbsolutePath(
            parentPath: parentPath,
            inputPath: inputPath,
          )],
        );

        return input.getSubmittedJson(
          valuesMap: valuesMap,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode():
        return null;
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
        final input = builder!(
          id,
          valuesMap[toAbsolutePath(
            parentPath: parentPath,
            inputPath: inputPath,
          )],
        );

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
      case ValueListenerNode():
        return [];
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
  WoFormElementMixin? getInput({
    required String path,
    required String parentPath,
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
              parentPath: '$parentPath/$id',
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
        final input = builder!(
          id,
          valuesMap[toAbsolutePath(
            parentPath: parentPath,
            inputPath: inputPath,
          )],
        );

        if (input.id == path.substring(1)) return input;

        if (input is WoFormNode) {
          return input.getInput(
            path: path.substring(slashIndex + 1),
            parentPath: '$parentPath/$id',
            valuesMap: valuesMap,
          );
        }

        return null;
      case ValueListenerNode():
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
            inputPath: toAbsolutePath(
              inputPath: inputPath,
              parentPath: parentPath,
            ),
            builder: (context, value) {
              final input = builder!(id, value);
              return input.toWidget(
                parentPath: '$parentPath/$id',
              );
            },
          ),
        ValueListenerNode(
          inputPath: final inputPath,
          listenWhen: final listenWhen,
          listener: final listener,
        ) =>
          WoFormValueListener<dynamic>(
            inputPath: toAbsolutePath(
              inputPath: inputPath,
              parentPath: '$parentPath/$id',
            ),
            listenWhen: listenWhen,
            listener: (context, value) => listener!(
              context,
              '$parentPath/$id',
              value,
            ),
            child: WoGap.zero,
          ),
      };
}
