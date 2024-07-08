import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/dynamic_input_templates.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_node.freezed.dart';
part 'wo_form_node.g.dart';

mixin WoFormElementMixin {
  String get id;

  static WoFormElementMixin fromJson(Map<String, dynamic> json) {
    try {
      return WoFormInput.fromJson(json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(json);
    }
  }

  static Map<String, dynamic> staticToJson(WoFormElementMixin object) =>
      object.toJson();

  Map<String, dynamic> toJson();

  void export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
  });

  Iterable<String> getAllInputPaths({
    required WoFormValues values,
    required String parentPath,
  });

  Iterable<WoFormInputError> getErrors(
    WoFormValues values, {
    required String parentPath,
  });

  String? getExportKey({
    required WoFormValues values,
    required String parentPath,
  });

  Widget toWidget({required String parentPath, Key? key});

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

    final newParentPath = parentPath.parentPath;

    return getAbsolutePath(parentPath: newParentPath, inputPath: relativePath);
  }

  WoFormElementMixin withId({required String id});
}

mixin WoFormNodeMixin {
  String get id;

  Map<String, dynamic> initialValues({required String parentPath});

  WoFormElementMixin? getInput({
    required String path,
    required String parentPath,
    Map<String, dynamic>? values,
  });
}

@freezed
class DynamicInputTemplate with _$DynamicInputTemplate {
  const factory DynamicInputTemplate({
    @JsonKey(
      fromJson: WoFormElementMixin.fromJson,
      toJson: WoFormElementMixin.staticToJson,
    )
    required WoFormElementMixin input,
    @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
    @Default(DynamicInputUiSettings())
    DynamicInputUiSettings uiSettings,
  }) = _DynamicInputTemplate;

  const DynamicInputTemplate._();

  factory DynamicInputTemplate.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputTemplateFromJson(json);

  static Map<String, dynamic> staticToJson(DynamicInputTemplate object) =>
      object.toJson();
}

@freezed
sealed class WoFormNode with _$WoFormNode, WoFormElementMixin, WoFormNodeMixin {
  const factory WoFormNode.dynamicInputs({
    required String id,
    @DynamicInputTemplatesConverter()
    @Default([])
    List<DynamicInputTemplate> templates,
    @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
    @Default(DynamicInputsNodeUiSettings())
    DynamicInputsNodeUiSettings uiSettings,
    @JsonKey(toJson: ExportSettings.staticToJson)
    @Default(ExportSettings())
    ExportSettings exportSettings,
  }) = DynamicInputsNode;

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
    Object? initialValue,
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

  @override
  Map<String, dynamic> initialValues({required String parentPath}) {
    switch (this) {
      case DynamicInputsNode():
        return {};
      case InputsNode(inputs: final inputs):
        return {
          for (final input in inputs)
            if (input is WoFormNodeMixin)
              ...(input as WoFormNodeMixin)
                  .initialValues(parentPath: '$parentPath/$id')
            else if (input is WoFormInputMixin)
              '$parentPath/$id/${input.id}':
                  (input as WoFormInputMixin).initialValue,
        };
      // case PushPageNode(input: final input):
      //   if (input is WoFormNode) {
      //     return input.initialValues(parentPath: '$parentPath/$id');
      //   } else if (input is WoFormInputMixin) {
      //     return {
      //       '$parentPath/$id/${input.id}':
      //           (input as WoFormInputMixin).initialValue,
      //     };
      //   } else {
      //     throw UnimplementedError(
      //       'Unknown input type : ${input.runtimeType}',
      //     );
      //   }
      case ValueBuilderNode(
          builder: final builder,
          initialValue: final initialValue,
        ):
        final input = builder!(id, initialValue);
        if (input is WoFormNodeMixin) {
          return (input as WoFormNodeMixin)
              .initialValues(parentPath: '$parentPath/$id');
        } else if (input is WoFormInputMixin) {
          return {
            '$parentPath/$id/${input.id}':
                (input as WoFormInputMixin).initialValue,
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
  void export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        final inputs = this is InputsNode
            ? (this as InputsNode).inputs
            : (values['$parentPath/$id'] as List<WoFormElementMixin>?) ?? [];

        switch (exportSettings.type) {
          case ExportType.mergeWithParent:
            final data = Map<String, dynamic>.from(exportSettings.metadata);

            for (final input in inputs) {
              input.export(
                into: data,
                values: values,
                parentPath: '$parentPath/$id',
              );
            }

            if (into is List) {
              into.addAll(data.values);
            } else if (into is Map) {
              into.addAll(data);
            }
          case ExportType.map:
            final data = Map<String, dynamic>.from(exportSettings.metadata);

            for (final input in inputs) {
              input.export(
                into: data,
                values: values,
                parentPath: '$parentPath/$id',
              );
            }

            if (into is List) {
              into.add(data);
            } else if (into is Map) {
              into[getExportKey(values: values, parentPath: parentPath)] = data;
            }
          case ExportType.list:
            final data = List<dynamic>.from(exportSettings.metadata.values);

            for (final input in inputs) {
              input.export(
                into: data,
                values: values,
                parentPath: '$parentPath/$id',
              );
            }

            if (into is List) {
              into.add(data);
            } else if (into is Map) {
              into[getExportKey(values: values, parentPath: parentPath)] = data;
            }
        }
      case ValueBuilderNode(inputPath: final inputPath, builder: final builder):
        final input = builder!(
          id,
          values[WoFormElementMixin.getAbsolutePath(
            parentPath: '$parentPath/$id',
            inputPath: inputPath,
          )],
        );

        input.export(
          into: into,
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode():
      case WidgetNode():
    }
  }

  @override
  Iterable<String> getAllInputPaths({
    required WoFormValues values,
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode():
      case InputsNode():
        final inputs = this is InputsNode
            ? (this as InputsNode).inputs
            : (values['$parentPath/$id'] as List<WoFormElementMixin>?) ?? [];

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
  String? getExportKey({
    required WoFormValues values,
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        return switch (exportSettings.type) {
          ExportType.map || ExportType.list => id,
          ExportType.mergeWithParent => null,
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
  Iterable<WoFormInputError> getErrors(
    WoFormValues values, {
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode():
      case InputsNode():
        final inputs = this is InputsNode
            ? (this as InputsNode).inputs
            : (values['$parentPath/$id'] as List<WoFormElementMixin>?) ?? [];

        return [
          for (final input in inputs)
            ...input.getErrors(
              values,
              parentPath: '$parentPath/$id',
            ),
        ].whereNotNull();
      // case PushPageNode(input: final input):
      //   return input.getErrors(values, parentPath: '$parentPath/$id');
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
  @override
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
      case DynamicInputsNode():
      case InputsNode():
        final inputs = this is InputsNode
            ? (this as InputsNode).inputs
            : (values?['$parentPath/$id'] as List<WoFormElementMixin>?) ?? [];

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
      // case PushPageNode(input: final input):
      //   if (input.id == path.substring(1)) return input;

      //   if (input is WoFormNode) {
      //     return input.getInput(
      //       path: path.substring(slashIndex + 1),
      //       parentPath: '$parentPath/$id',
      //       values: values,
      //     );
      //   }

      //   return null;
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

        if (input is WoFormNodeMixin) {
          return (input as WoFormNodeMixin).getInput(
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
  Widget toWidget({required String parentPath, Key? key}) => switch (this) {
        DynamicInputsNode() => DynamicInputsNodeWidgetBuilder(
            key: key,
            inputPath: '$parentPath/$id',
          ),
        InputsNode() => InputsNodeWidgetBuilder(
            key: key,
            inputPath: '$parentPath/$id',
          ),
        ValueBuilderNode(
          inputPath: final inputPath,
          builder: final builder,
        ) =>
          WoFormValueBuilder<dynamic>(
            key: key,
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
        // PushPageNode() =>
        //   PushPageNodeWidgetBuilder(inputPath: '$parentPath/$id'),
        ValueListenerNode(
          inputPath: final inputPath,
          listenWhen: final listenWhen,
          listener: final listener,
        ) =>
          WoFormValueListener<dynamic>(
            key: key,
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
        WidgetNode(builder: final builder) => builder == null
            ? SizedBox.shrink(key: key)
            : Builder(key: key, builder: builder)
      };

  @override
  WoFormNode withId({required String id}) => copyWith(id: id);
}

@freezed
class FutureNode<T> with _$FutureNode<T>, WoFormElementMixin, WoFormNodeMixin {
  const factory FutureNode({
    required String id,
    required Future<T>? future,
    required WoFormElementMixin Function(
      String parentPath,
      AsyncSnapshot<T?> snapshot,
    ) builder,
    T? initialData,

    /// If true, when the future will be completed, the values of
    /// the children inputs will be reseted to their initialValues.
    @Default(true) bool willResetToInitialValues,
  }) = _FutureNode<T>;

  const FutureNode._();

  @override
  Map<String, dynamic> toJson() => {};

  // --

  @override
  dynamic export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
  }) {
    final snapshot = values['$parentPath/$id'];

    if (snapshot is! AsyncSnapshot<T?>) return null;

    return builder(parentPath, snapshot).export(
      into: into,
      values: values,
      parentPath: '$parentPath/$id',
    );
  }

  @override
  Iterable<String> getAllInputPaths({
    required WoFormValues values,
    required String parentPath,
  }) {
    final snapshot = values['$parentPath/$id'];

    return [
      '$parentPath/$id',
      if (snapshot is AsyncSnapshot<T?>)
        ...builder(parentPath, snapshot).getAllInputPaths(
          values: values,
          parentPath: '$parentPath/$id',
        ),
    ];
  }

  @override
  Iterable<WoFormInputError> getErrors(
    WoFormValues values, {
    required String parentPath,
  }) {
    final snapshot = values['$parentPath/$id'];

    if (snapshot is! AsyncSnapshot<T?>) return [];

    return builder(parentPath, snapshot).getErrors(
      values,
      parentPath: '$parentPath/$id',
    );
  }

  @override
  String? getExportKey({
    required WoFormValues values,
    required String parentPath,
  }) {
    final snapshot = values['$parentPath/$id'];

    if (snapshot is! AsyncSnapshot<T?>) return null;

    return builder(parentPath, snapshot).getExportKey(
      values: values,
      parentPath: '$parentPath/$id',
    );
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
  @override
  WoFormElementMixin? getInput({
    required String path,
    required String parentPath,
    Map<String, dynamic>? values,
  }) {
    if (values == null) {
      throw ArgumentError(
        'values must be provided in order to access a dynamic input.',
      );
    }

    final snapshot = values['$parentPath/$id'];

    if (snapshot is! AsyncSnapshot<T?>) return null;

    final input = builder('$parentPath/$id', snapshot);

    if (input.id == path.substring(1)) return input;

    final slashIndex = path.substring(1).indexOf('/');

    if (input is WoFormNodeMixin) {
      return (input as WoFormNodeMixin).getInput(
        path: path.substring(slashIndex + 1),
        parentPath: '$parentPath/$id',
        values: values,
      );
    }

    return null;
  }

  @override
  Map<String, dynamic> initialValues({
    required String parentPath,
    AsyncSnapshot<T?>? initialSnapshot,
  }) {
    final snapshot = initialSnapshot ??
        AsyncSnapshot.withData(ConnectionState.waiting, initialData);
    final input = builder('$parentPath/$id', snapshot);

    return {
      '$parentPath/$id': snapshot,
      if (input is WoFormNodeMixin)
        ...(input as WoFormNodeMixin)
            .initialValues(parentPath: '$parentPath/$id')
      else if (input is WoFormInputMixin)
        '$parentPath/$id/${input.id}': (input as WoFormInputMixin).initialValue,
    };
  }

  @override
  Widget toWidget({required String parentPath, Key? key}) =>
      FutureNodeBuilder<T>(
        key: key,
        parentPath: parentPath,
        node: this,
      );

  @override
  FutureNode<T> withId({required String id}) => copyWith(id: id);
}

class FutureNodeBuilder<T> extends StatelessWidget {
  const FutureNodeBuilder({
    required this.parentPath,
    required this.node,
    super.key,
  });

  final String parentPath;
  final FutureNode<T> node;

  Future<void> getData(
    void Function(AsyncSnapshot<T?> snapshot) onSnapshotChanged,
  ) async {
    try {
      final data = await node.future;
      onSnapshotChanged(AsyncSnapshot.withData(ConnectionState.done, data));
    } catch (error) {
      onSnapshotChanged(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  @override
  Widget build(BuildContext context) {
    final valuesCubit = context.read<WoFormValuesCubit>();

    final nodePath = '$parentPath/${node.id}';

    getData(
      (snapshot) => valuesCubit.onValueChanged(
        inputPath: nodePath,
        value: snapshot,
      ),
    );

    return WoFormValueBuilder<AsyncSnapshot<T?>>(
      inputPath: nodePath,
      builder: (context, snapshot) {
        final input = node.builder(
          nodePath,
          snapshot ?? const AsyncSnapshot.nothing(),
        );

        if (node.willResetToInitialValues) {
          if (snapshot?.connectionState == ConnectionState.done) {
            final newInitialValues = node.initialValues(
              parentPath: parentPath,
              initialSnapshot: snapshot,
            );

            for (final entry in newInitialValues.entries) {
              valuesCubit.onValueChanged(
                inputPath: entry.key,
                value: entry.value,
              );
            }
          }
        }

        return input.toWidget(
          key: ValueKey(snapshot?.connectionState),
          parentPath: nodePath,
        );
      },
    );
  }
}
