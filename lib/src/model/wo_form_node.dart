import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/dynamic_input_templates.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_node.freezed.dart';
part 'wo_form_node.g.dart';

mixin WoFormNodeMixin {
  String get id;

  static WoFormNodeMixin fromJson(Map<String, dynamic> json) {
    try {
      return WoFormInput.fromJson(json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(json);
    }
  }

  static Map<String, dynamic> staticToJson(WoFormNodeMixin object) =>
      object.toJson();

  Map<String, dynamic> toJson();

  // --

  void export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
  });

  Iterable<String> getAllInputPaths({
    required WoFormValues values,
    required String parentPath,
  });

  WoFormNodeMixin? getChild({
    required String path,
    required String parentPath,
    required Map<String, dynamic> values,
  });

  Iterable<WoFormInputError> getErrors({
    required WoFormValues values,
    required String parentPath,
    bool recursive = true,
  });

  String? getExportKey({
    required WoFormValues values,
    required String parentPath,
  });

  Map<String, dynamic> getInitialValues({required String parentPath});

  Widget toWidget({required String parentPath, Key? key});

  static String getAbsolutePath({
    required String parentPath,
    required String path,
  }) {
    if (path.startsWith('/')) return path;
    if (!path.startsWith('.')) {
      throw ArgumentError(
        'An input path must start with character "/" or ".".',
      );
    }

    final relativePath = path.substring(1);

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

    return getAbsolutePath(parentPath: newParentPath, path: relativePath);
  }

  WoFormNodeMixin withId({required String id});
}

@freezed
class DynamicInputTemplate with _$DynamicInputTemplate {
  const factory DynamicInputTemplate({
    @JsonKey(
      fromJson: WoFormNodeMixin.fromJson,
      toJson: WoFormNodeMixin.staticToJson,
    )
    required WoFormNodeMixin child,
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
sealed class WoFormNode with _$WoFormNode, WoFormNodeMixin {
  const factory WoFormNode.dynamicInputs({
    required String id,
    @DynamicInputTemplatesConverter()
    @Default([])
    List<DynamicInputTemplate> templates,
    @InputsListConverter() @Default([]) List<WoFormNodeMixin> initialChildren,
    @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
    @Default(DynamicInputsNodeUiSettings())
    DynamicInputsNodeUiSettings uiSettings,
    @JsonKey(toJson: ExportSettings.staticToJson)
    @Default(ExportSettings())
    ExportSettings exportSettings,
  }) = DynamicInputsNode;

  const factory WoFormNode.inputs({
    required String id,
    @InputsListConverter() @Default([]) List<WoFormNodeMixin> children,
    @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
    @Default(InputsNodeUiSettings())
    InputsNodeUiSettings uiSettings,
    @JsonKey(toJson: ExportSettings.staticToJson)
    @Default(ExportSettings())
    ExportSettings exportSettings,
  }) = InputsNode;

  @Assert('builder != null', 'PathBuilderNode.builder cannot be null')
  const factory WoFormNode.pathBuilder({
    required String id,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormNodeMixin Function(String path)? builder,
  }) = PathBuilderNode;

  @Assert('builder != null', 'ValueBuilderNode.builder cannot be null')
  const factory WoFormNode.valueBuilder({
    required String id,
    required String path,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormNodeMixin Function(Object? value)? builder,
    Object? initialValue,
  }) = ValueBuilderNode;

  @Assert('builder != null', 'ValuesBuilderNode.builder cannot be null')
  const factory WoFormNode.valuesBuilder({
    required String id,
    required List<String> paths,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormNodeMixin Function(Map<String, Object?> values)? builder,
    Map<String, Object?>? initialValues,
  }) = ValuesBuilderNode;

  @Assert('listener != null', 'ValueListenerNode.listener cannot be null')
  const factory WoFormNode.valueListener({
    required String path,
    @Default('ValueListenerNode') String id,
    @JsonKey(includeToJson: false, includeFromJson: false)
    bool Function(Object? previous, Object? current)? listenWhen,
    @JsonKey(includeToJson: false, includeFromJson: false)
    void Function(BuildContext context, String parentPath, Object? value)?
        listener,
  }) = ValueListenerNode;

  const factory WoFormNode.widget({
    @Default('WidgetNode') String id,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Widget Function(BuildContext context)? builder,
  }) = WidgetNode;

  const WoFormNode._();

  factory WoFormNode.fromJson(Map<String, dynamic> json) =>
      _$WoFormNodeFromJson(json);

  // --

  @override
  void export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNodeMixin>?) ?? [];

        switch (exportSettings.type) {
          case ExportType.mergeWithParent:
            final data = Map<String, dynamic>.from(exportSettings.metadata);

            for (final child in children) {
              child.export(
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

            for (final child in children) {
              child.export(
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

            for (final child in children) {
              child.export(
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
      case PathBuilderNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = this is PathBuilderNode
            ? (this as PathBuilderNode).builder!('$parentPath/$id')
            : this is ValueBuilderNode
                ? (this as ValueBuilderNode).builder!(
                    values[WoFormNodeMixin.getAbsolutePath(
                      parentPath: '$parentPath/$id',
                      path: (this as ValueBuilderNode).path,
                    )],
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values[WoFormNodeMixin.getAbsolutePath(
                          parentPath: '$parentPath/$id',
                          path: path,
                        )],
                    },
                  );

        child.export(
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
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNodeMixin>?) ?? [];

        return [
          '$parentPath/$id',
          for (final child in children)
            ...child.getAllInputPaths(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ];
      case PathBuilderNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = this is PathBuilderNode
            ? (this as PathBuilderNode).builder!('$parentPath/$id')
            : this is ValueBuilderNode
                ? (this as ValueBuilderNode).builder!(
                    values[WoFormNodeMixin.getAbsolutePath(
                      parentPath: '$parentPath/$id',
                      path: (this as ValueBuilderNode).path,
                    )],
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values[WoFormNodeMixin.getAbsolutePath(
                          parentPath: '$parentPath/$id',
                          path: path,
                        )],
                    },
                  );

        return [
          '$parentPath/$id',
          ...child.getAllInputPaths(
            values: values,
            parentPath: '$parentPath/$id',
          ),
        ];
      case ValueListenerNode():
      case WidgetNode():
        return ['$parentPath/$id'];
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
  WoFormNodeMixin? getChild({
    required String path,
    required String parentPath,
    required Map<String, dynamic> values,
  }) {
    if (!path.startsWith('/')) {
      throw ArgumentError('An input path must start with character "/".');
    }

    final secondSlashIndex = path.substring(1).indexOf('/');

    switch (this) {
      case DynamicInputsNode():
      case InputsNode():
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNodeMixin>?) ?? [];

        // if the path ends at the children of this node
        if (secondSlashIndex == -1) {
          return children.firstWhereOrNull((i) => i.id == path.substring(1));
        }

        return children
            .firstWhereOrNull(
              (i) => i.id == path.substring(1, secondSlashIndex + 1),
            )
            ?.getChild(
              path: path.substring(secondSlashIndex + 1),
              parentPath: '$parentPath/$id',
              values: values,
            );
      case PathBuilderNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = this is PathBuilderNode
            ? (this as PathBuilderNode).builder!('$parentPath/$id')
            : this is ValueBuilderNode
                ? (this as ValueBuilderNode).builder!(
                    values[WoFormNodeMixin.getAbsolutePath(
                      parentPath: '$parentPath/$id',
                      path: (this as ValueBuilderNode).path,
                    )],
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values[WoFormNodeMixin.getAbsolutePath(
                          parentPath: '$parentPath/$id',
                          path: path,
                        )],
                    },
                  );

        // if the path ends at the child of this node
        if (secondSlashIndex == -1) {
          return (child.id == path.substring(1)) ? child : null;
        }

        return child.getChild(
          path: path.substring(secondSlashIndex + 1),
          parentPath: '$parentPath/$id',
          values: values,
        );
      case ValueListenerNode():
      case WidgetNode():
        return null;
    }
  }

  @override
  Iterable<WoFormInputError> getErrors({
    required WoFormValues values,
    required String parentPath,
    bool recursive = true,
  }) {
    if (!recursive) return [];

    switch (this) {
      case DynamicInputsNode():
      case InputsNode():
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNodeMixin>?) ?? [];

        return [
          for (final child in children)
            ...child.getErrors(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ].whereNotNull();
      case PathBuilderNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = this is PathBuilderNode
            ? (this as PathBuilderNode).builder!('$parentPath/$id')
            : this is ValueBuilderNode
                ? (this as ValueBuilderNode).builder!(
                    values[WoFormNodeMixin.getAbsolutePath(
                      parentPath: '$parentPath/$id',
                      path: (this as ValueBuilderNode).path,
                    )],
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values[WoFormNodeMixin.getAbsolutePath(
                          parentPath: '$parentPath/$id',
                          path: path,
                        )],
                    },
                  );

        return child.getErrors(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode():
      case WidgetNode():
        return [];
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
      case PathBuilderNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = this is PathBuilderNode
            ? (this as PathBuilderNode).builder!('$parentPath/$id')
            : this is ValueBuilderNode
                ? (this as ValueBuilderNode).builder!(
                    values[WoFormNodeMixin.getAbsolutePath(
                      parentPath: '$parentPath/$id',
                      path: (this as ValueBuilderNode).path,
                    )],
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values[WoFormNodeMixin.getAbsolutePath(
                          parentPath: '$parentPath/$id',
                          path: path,
                        )],
                    },
                  );

        return child.getExportKey(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode() || WidgetNode():
        return null;
    }
  }

  @override
  Map<String, dynamic> getInitialValues({required String parentPath}) {
    switch (this) {
      case DynamicInputsNode(initialChildren: final initialChildren):
        return {
          '$parentPath/$id': initialChildren,
          for (final child in initialChildren)
            ...child.getInitialValues(parentPath: '$parentPath/$id'),
        };
      case InputsNode(children: final children):
        return {
          for (final child in children)
            ...child.getInitialValues(parentPath: '$parentPath/$id'),
        };
      case PathBuilderNode(builder: final builder):
        final child = builder!('$parentPath/$id');
        return child.getInitialValues(parentPath: '$parentPath/$id');
      case ValueBuilderNode(
          builder: final builder,
          initialValue: final initialValue,
        ):
        final child = builder!(initialValue);
        return child.getInitialValues(parentPath: '$parentPath/$id');
      case ValuesBuilderNode(
          builder: final builder,
          initialValues: final initialValues,
        ):
        final child = builder!(initialValues ?? {});
        return child.getInitialValues(parentPath: '$parentPath/$id');
      case ValueListenerNode():
      case WidgetNode():
        return {};
    }
  }

  @override
  Widget toWidget({required String parentPath, Key? key}) => switch (this) {
        DynamicInputsNode() => DynamicInputsNodeWidgetBuilder(
            key: key,
            path: '$parentPath/$id',
          ),
        InputsNode() => InputsNodeWidgetBuilder(
            key: key,
            path: '$parentPath/$id',
          ),
        PathBuilderNode(builder: final builder) =>
          builder!('$parentPath/$id').toWidget(parentPath: '$parentPath/$id'),
        ValueBuilderNode(
          path: final path,
          builder: final builder,
        ) =>
          WoFormValueBuilder<dynamic>(
            key: key,
            path: WoFormNodeMixin.getAbsolutePath(
              path: path,
              parentPath: '$parentPath/$id',
            ),
            builder: (context, value) {
              final child = builder!(value);
              return child.toWidget(
                parentPath: '$parentPath/$id',
              );
            },
          ),
        ValuesBuilderNode(
          paths: final paths,
          builder: final builder,
        ) =>
          WoFormValuesBuilder(
            key: key,
            paths: paths,
            builder: (context, values) =>
                builder!(values).toWidget(parentPath: '$parentPath/$id'),
          ),
        ValueListenerNode(
          path: final path,
          listenWhen: final listenWhen,
          listener: final listener,
        ) =>
          WoFormValueListener<dynamic>(
            key: key,
            path: WoFormNodeMixin.getAbsolutePath(
              path: path,
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
            : Builder(key: key, builder: builder),
      };

  @override
  WoFormNode withId({required String id}) => copyWith(id: id);
}

@freezed
class FutureNode<T> with _$FutureNode<T>, WoFormNodeMixin {
  const factory FutureNode({
    required String id,
    required Future<T>? future,
    required WoFormNodeMixin Function(
      String parentPath,
      AsyncSnapshot<T?> snapshot,
    ) builder,
    T? initialData,

    /// If true, when the future will be completed, the values of
    /// the children inputs will be reseted to their getInitialValues.
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
  Iterable<WoFormInputError> getErrors({
    required WoFormValues values,
    required String parentPath,
    bool recursive = true,
  }) {
    if (!recursive) return [];

    final snapshot = values['$parentPath/$id'];

    if (snapshot is! AsyncSnapshot<T?>) return [];

    return builder(parentPath, snapshot).getErrors(
      values: values,
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
  WoFormNodeMixin? getChild({
    required String path,
    required String parentPath,
    required Map<String, dynamic> values,
  }) {
    final snapshot = values['$parentPath/$id'];

    if (snapshot is! AsyncSnapshot<T?>) return null;

    final child = builder('$parentPath/$id', snapshot);

    final secondSlashIndex = path.substring(1).indexOf('/');

    // if the path ends at the child of this node
    if (secondSlashIndex == -1) {
      return (child.id == path.substring(1)) ? child : null;
    }

    return child.getChild(
      path: path.substring(secondSlashIndex + 1),
      parentPath: '$parentPath/$id',
      values: values,
    );
  }

  @override
  Map<String, dynamic> getInitialValues({
    required String parentPath,
    AsyncSnapshot<T?>? initialSnapshot,
  }) {
    final snapshot = initialSnapshot ??
        AsyncSnapshot.withData(ConnectionState.waiting, initialData);
    final child = builder('$parentPath/$id', snapshot);

    return {
      '$parentPath/$id': snapshot,
      ...child.getInitialValues(parentPath: '$parentPath/$id'),
    };
  }

  @override
  Widget toWidget({required String parentPath, Key? key}) =>
      FutureNodeBuilder<T>(
        key: key,
        parentPath: parentPath,
        child: this,
      );

  @override
  FutureNode<T> withId({required String id}) => copyWith(id: id);
}

@freezed
class RootNode with _$RootNode, WoFormNodeMixin {
  const factory RootNode({
    @Default('#') String id,
    @InputsListConverter() @Default([]) List<WoFormNodeMixin> children,
    @JsonKey(toJson: WoFormUiSettings.staticToJson)
    @Default(WoFormUiSettings())
    WoFormUiSettings uiSettings,
    @JsonKey(toJson: ExportSettings.staticToJson)
    @Default(ExportSettings())
    ExportSettings exportSettings,
  }) = _RootNode;

  const RootNode._();

  factory RootNode.fromJson(Map<String, dynamic> json) =>
      _$RootNodeFromJson(json);

  // --

  Map<String, dynamic> exportToMap({required WoFormValues values}) {
    final map = Map<String, dynamic>.from(exportSettings.metadata);
    // ignore: deprecated_member_use_from_same_package
    export(
      into: map,
      values: values,
    );
    return map;
  }

  @override
  @Deprecated('Use exportToMap instead.')
  void export({
    required dynamic into,
    required WoFormValues values,
    String parentPath = '',
  }) {
    final data = Map<String, dynamic>.from(exportSettings.metadata);

    for (final child in children) {
      child.export(
        into: data,
        values: values,
        parentPath: parentPath,
      );
    }

    if (into is List) {
      into.addAll(data.values);
    } else if (into is Map) {
      into.addAll(data);
    }
  }

  @override
  Iterable<String> getAllInputPaths({
    required WoFormValues values,
    String parentPath = '',
  }) =>
      [
        parentPath,
        for (final child in children)
          ...child.getAllInputPaths(
            values: values,
            parentPath: parentPath,
          ),
      ];

  @override
  Iterable<WoFormInputError> getErrors({
    required WoFormValues values,
    String parentPath = '',
    bool recursive = true,
  }) {
    if (!recursive) return [];

    return [
      for (final child in children)
        ...child.getErrors(
          values: values,
          parentPath: parentPath,
        ),
    ].whereNotNull();
  }

  @override
  String? getExportKey({
    required WoFormValues values,
    String parentPath = '',
  }) =>
      null;

  @override
  WoFormNodeMixin? getChild({
    required String path,
    required Map<String, dynamic> values,
    String parentPath = '',
  }) {
    if (!path.startsWith('/')) {
      throw ArgumentError(
        'An input path must start with character "/" : $path',
      );
    }

    final secondSlashIndex = path.substring(1).indexOf('/');

    // if the path ends at the children of this node
    if (secondSlashIndex == -1) {
      return children.firstWhereOrNull((i) => i.id == path.substring(1));
    }

    final firstPathId = path.substring(1, secondSlashIndex + 1);

    return children
        .firstWhereOrNull(
          (
            child,
          ) =>
              child.id == firstPathId,
        )
        ?.getChild(
          path: path.substring(secondSlashIndex + 1),
          parentPath: parentPath,
          values: values,
        );
  }

  @override
  Map<String, dynamic> getInitialValues({String parentPath = ''}) => {
        for (final child in children)
          ...child.getInitialValues(parentPath: parentPath),
      };

  @override
  Widget toWidget({String parentPath = '', Key? key}) => WoFormPage(key: key);

  @override
  RootNode withId({required String id}) => copyWith(id: id);
}
