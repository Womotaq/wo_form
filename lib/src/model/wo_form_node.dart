import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_node.freezed.dart';
part 'wo_form_node.g.dart';

mixin WoFormElementMixin {
  String get id;

  Map<String, dynamic> toJson();

  dynamic export({
    required Map<String, dynamic> values,
    required String parentPath,
  });

  Iterable<WoFormInputError> getErrors(
    Map<String, dynamic> values, {
    required String parentPath,
  });

  String? getExportKey({
    required Map<String, dynamic> values,
    required String parentPath,
  });

  /// Return true if this element has data that can be exported.
  ///
  /// Used by ExportType.firstExportable.
  bool isExportable({
    required Map<String, dynamic> values,
    required String parentPath,
  });

  Widget toWidget<T extends WoFormValuesCubit>({required String parentPath});

  Iterable<String> getAllInputPaths({
    required Map<String, dynamic> values,
    required String parentPath,
  });

  static String getAbsolutePath({
    required String parentPath,
    required String inputPath,
  }) {
    if (inputPath.startsWith('/')) return inputPath;
    if (!inputPath.startsWith('.')) {
      throw ArgumentError(
        'An input path must start with character "/" or ".".',
      );
    }

    final relativePath = inputPath.substring(1);

    if (relativePath.startsWith('/')) return '$parentPath$relativePath';
    if (!relativePath.startsWith('./')) {
      throw ArgumentError(
        'An input relative path must start with "./" or "../".',
      );
    }

    // Here, we go looking for the absolute path, by going backward in the tree.

    if (!parentPath.contains('/')) {
      throw ArgumentError('The relative path is backwarding too far.');
    }

    final newParentPath = (parentPath.split('/')..removeLast()).join('/');

    return getAbsolutePath(parentPath: newParentPath, inputPath: relativePath);
  }
}

@freezed
sealed class WoFormNode with _$WoFormNode, WoFormElementMixin {
  const factory WoFormNode.inputs({
    required String id,
    @InputsListConverter() @Default([]) List<WoFormElementMixin> inputs,
    @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
    @Default(InputsNodeUiSettings())
    InputsNodeUiSettings uiSettings,
    @JsonKey(toJson: ExportSettings.staticToJson)
    @Default(ExportSettings())
    ExportSettings exportSettings,
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

  const factory WoFormNode.widget({
    required String id,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Widget Function(BuildContext context)? builder,
  }) = WidgetNode;

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
      case WidgetNode():
        return {};
    }
  }

  @override
  dynamic export({
    required Map<String, dynamic> values,
    required String parentPath,
  }) {
    switch (this) {
      case InputsNode(
          inputs: final inputs,
          exportSettings: final exportSettings,
        ):
        final exportableInputs = inputs.where(
          (i) => i.isExportable(
            values: values,
            parentPath: '$parentPath/$id',
          ),
        );

        return switch (exportSettings.exportType) {
          ExportType.map => {
              ...?exportSettings.exportedMetadata,
              for (final input in exportableInputs)
                input.getExportKey(
                  values: values,
                  parentPath: '$parentPath/$id',
                ): input.export(
                  values: values,
                  parentPath: '$parentPath/$id',
                ),
            },
          ExportType.list => [
              ...?exportSettings.exportedMetadata?.values,
              for (final input in exportableInputs)
                input.export(
                  values: values,
                  parentPath: '$parentPath/$id',
                ),
            ],
          ExportType.firstExportable => exportableInputs.firstOrNull
              ?.export(values: values, parentPath: '$parentPath/$id'),
        };
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(
          id,
          values[WoFormElementMixin.getAbsolutePath(
            parentPath: '$parentPath/$id',
            inputPath: inputPath,
          )],
        );

        return input.export(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode():
      case WidgetNode():
        return null;
    }
  }

  @override
  String? getExportKey({
    required Map<String, dynamic> values,
    required String parentPath,
  }) {
    switch (this) {
      case InputsNode(
          inputs: final inputs,
          exportSettings: final exportSettings,
        ):
        return switch (exportSettings.exportType) {
          ExportType.map || ExportType.list => id,
          ExportType.firstExportable => inputs
              .firstWhereOrNull(
                (i) => i.isExportable(
                  values: values,
                  parentPath: '$parentPath/$id',
                ),
              )
              ?.getExportKey(values: values, parentPath: parentPath)
        };
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(
          id,
          values[WoFormElementMixin.getAbsolutePath(
            parentPath: '$parentPath/$id',
            inputPath: inputPath,
          )],
        );

        return input.getExportKey(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode() || WidgetNode():
        return null;
    }
  }

  @override
  bool isExportable({
    required Map<String, dynamic> values,
    required String parentPath,
  }) {
    switch (this) {
      case InputsNode():
        return true;
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(
          id,
          values[WoFormElementMixin.getAbsolutePath(
            parentPath: '$parentPath/$id',
            inputPath: inputPath,
          )],
        );

        return input.isExportable(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode() || WidgetNode():
        return false;
    }
  }

  @override
  Iterable<String> getAllInputPaths({
    required Map<String, dynamic> values,
    required String parentPath,
  }) {
    switch (this) {
      case InputsNode(inputs: final inputs):
        return [
          '$parentPath/$id',
          for (final input in inputs)
            ...input.getAllInputPaths(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ];
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(
          id,
          values[WoFormElementMixin.getAbsolutePath(
            parentPath: '$parentPath/$id',
            inputPath: inputPath,
          )],
        );

        return [
          '$parentPath/$id',
          ...input.getAllInputPaths(
            values: values,
            parentPath: '$parentPath/$id',
          ),
        ];
      case ValueListenerNode():
      case WidgetNode():
        return ['$parentPath/$id'];
    }
  }

  @override
  Iterable<WoFormInputError> getErrors(
    Map<String, dynamic> values, {
    required String parentPath,
  }) {
    switch (this) {
      case InputsNode(inputs: final inputs):
        return [
          for (final input in inputs)
            ...input.getErrors(
              values,
              parentPath: '$parentPath/$id',
            ),
        ].whereNotNull();
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(
          id,
          values[WoFormElementMixin.getAbsolutePath(
            parentPath: '$parentPath/$id',
            inputPath: inputPath,
          )],
        );

        return input.getErrors(
          values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode():
      case WidgetNode():
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
    Map<String, dynamic>? values,
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
              values: values,
            );
      case ValueBuilderNode(
          inputPath: final inputPath,
          builder: final builder,
        ):
        if (values == null) {
          throw ArgumentError(
            'values must be provided in order to access a dynamic input.',
          );
        }
        final input = builder!(
          id,
          values[WoFormElementMixin.getAbsolutePath(
            parentPath: '$parentPath/$id',
            inputPath: inputPath,
          )],
        );

        if (input.id == path.substring(1)) return input;

        if (input is WoFormNode) {
          return input.getInput(
            path: path.substring(slashIndex + 1),
            parentPath: '$parentPath/$id',
            values: values,
          );
        }

        return null;
      case ValueListenerNode():
      case WidgetNode():
        return null;
    }
  }

  @override
  Widget toWidget<T extends WoFormValuesCubit>({required String parentPath}) =>
      switch (this) {
        InputsNode() => InputsNodeWidgetBuilder(inputPath: '$parentPath/$id'),
        ValueBuilderNode(
          inputPath: final inputPath,
          builder: final builder,
        ) =>
          WoFormValueBuilder<dynamic>(
            inputPath: WoFormElementMixin.getAbsolutePath(
              inputPath: inputPath,
              parentPath: '$parentPath/$id',
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
            inputPath: WoFormElementMixin.getAbsolutePath(
              inputPath: inputPath,
              parentPath: '$parentPath/$id',
            ),
            listenWhen: listenWhen,
            listener: (context, value) => listener!(
              context,
              '$parentPath/$id',
              value,
            ),
            child: const SizedBox.shrink(),
          ),
        WidgetNode(builder: final builder) =>
          builder == null ? const SizedBox.shrink() : Builder(builder: builder)
      };
}
