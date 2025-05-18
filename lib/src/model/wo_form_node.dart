import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/dynamic_input_templates.dart';
import 'package:wo_form/src/model/json_converter/input.dart';
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

  Future<void> export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
    required BuildContext context,
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

  WoFormNodeMixin withId({required String id});
}

@freezed
abstract class DynamicInputTemplate with _$DynamicInputTemplate {
  @Assert(
    '(child == null) != (childBuilder == null)',
    'One of child or childBuilder must be specified',
  )
  factory DynamicInputTemplate({
    @InputNullableConverter() WoFormNodeMixin? child,
    @JsonKey(includeToJson: false, includeFromJson: false)
    WoFormNodeMixin Function()? childBuilder,
    @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
    @Default(DynamicInputUiSettings())
    DynamicInputUiSettings uiSettings,
  }) = _DynamicInputTemplate;

  const DynamicInputTemplate._();

  factory DynamicInputTemplate.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputTemplateFromJson(json);

  static Map<String, dynamic> staticToJson(DynamicInputTemplate object) =>
      object.toJson();

  WoFormNodeMixin getChild() => child == null ? childBuilder!() : child!;
}

@freezed
sealed class WoFormNode with _$WoFormNode, WoFormNodeMixin {
  const factory WoFormNode.conditionnal({
    required String id,
    @JsonKey(toJson: Condition.staticToJson) required Condition condition,
    @InputConverter() required WoFormNodeMixin child,
    @Default(false) bool conditionIsInitiallyMet,
  }) = ConditionnalNode;

  const factory WoFormNode.dynamicInputs({
    required String id,
    @DynamicInputTemplatesConverter()
    @Default([])
    List<DynamicInputTemplate> templates,
    @InputsListConverter() List<WoFormNodeMixin>? initialChildren,
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
  Future<void> export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
    required BuildContext context,
  }) async {
    switch (this) {
      case ConditionnalNode(condition: final condition, child: final child):
        if (values.meet(condition)) {
          await child.export(
            into: into,
            values: values,
            parentPath: '$parentPath/$id',
            context: context,
          );
        }
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNodeMixin>?) ?? [];

        switch (exportSettings.type) {
          case ExportType.mergeWithParent:
            final data = Map<String, dynamic>.from(exportSettings.metadata);

            for (final child in children) {
              await child.export(
                into: data,
                values: values,
                parentPath: '$parentPath/$id',
                context: context,
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
              await child.export(
                into: data,
                values: values,
                parentPath: '$parentPath/$id',
                context: context,
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
              await child.export(
                into: data,
                values: values,
                parentPath: '$parentPath/$id',
                context: context,
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
                    values.getValue(
                      (this as ValueBuilderNode).path,
                      parentPath: '$parentPath/$id',
                    ),
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values.getValue(
                          path,
                          parentPath: '$parentPath/$id',
                        ),
                    },
                  );

        await child.export(
          into: into,
          values: values,
          parentPath: '$parentPath/$id',
          context: context,
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
      case ConditionnalNode(condition: final condition, child: final child):
        return [
          '$parentPath/$id',
          if (values.meet(condition))
            ...child.getAllInputPaths(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ];
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
                    values.getValue(
                      (this as ValueBuilderNode).path,
                      parentPath: '$parentPath/$id',
                    ),
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values.getValue(
                          path,
                          parentPath: '$parentPath/$id',
                        ),
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
      case ConditionnalNode(condition: final condition, child: final child):
        if (!values.meet(condition)) return null;

        // if the path ends at the child of this node
        if (secondSlashIndex == -1) {
          return (child.id == path.substring(1)) ? child : null;
        }

        return child.getChild(
          path: path.substring(secondSlashIndex + 1),
          parentPath: '$parentPath/$id',
          values: values,
        );
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
                    values.getValue(
                      (this as ValueBuilderNode).path,
                      parentPath: '$parentPath/$id',
                    ),
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values.getValue(
                          path,
                          parentPath: '$parentPath/$id',
                        ),
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
      case ConditionnalNode(condition: final condition, child: final child):
        if (!values.meet(condition)) return [];

        return child.getErrors(
          values: values,
          parentPath: '$parentPath/$id',
        );
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
        ].nonNulls;
      case PathBuilderNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = this is PathBuilderNode
            ? (this as PathBuilderNode).builder!('$parentPath/$id')
            : this is ValueBuilderNode
                ? (this as ValueBuilderNode).builder!(
                    values.getValue(
                      (this as ValueBuilderNode).path,
                      parentPath: '$parentPath/$id',
                    ),
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values.getValue(
                          path,
                          parentPath: '$parentPath/$id',
                        ),
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
      case ConditionnalNode(condition: final condition, child: final child):
        if (!values.meet(condition)) return null;

        return child.getExportKey(
          values: values,
          parentPath: '$parentPath/$id',
        );
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
                    values.getValue(
                      (this as ValueBuilderNode).path,
                      parentPath: '$parentPath/$id',
                    ),
                  )
                : (this as ValuesBuilderNode).builder!(
                    {
                      for (final path in (this as ValuesBuilderNode).paths)
                        path: values.getValue(
                          path,
                          parentPath: '$parentPath/$id',
                        ),
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
      case ConditionnalNode(
          conditionIsInitiallyMet: final conditionIsInitiallyMet,
          child: final child,
        ):
        if (!conditionIsInitiallyMet) return {};

        return child.getInitialValues(parentPath: '$parentPath/$id');
      case DynamicInputsNode(initialChildren: final initialChildren):
        return {
          '$parentPath/$id': initialChildren,
          if (initialChildren != null)
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
        ConditionnalNode() => ConditionnalNodeBuilder(
            key: key,
            path: '$parentPath/$id',
          ),
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
            path: WoFormValuesX.getAbsolutePath(
              path: path,
              parentPath: '$parentPath/$id',
            ),
            builder: (context, value) =>
                builder!(value).toWidget(parentPath: '$parentPath/$id'),
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
            path: WoFormValuesX.getAbsolutePath(
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
abstract class FutureNode<T> with _$FutureNode<T>, WoFormNodeMixin {
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
  Future<dynamic> export({
    required dynamic into,
    required WoFormValues values,
    required String parentPath,
    required BuildContext context,
  }) async {
    final snapshot = values['$parentPath/$id'];

    if (snapshot is! AsyncSnapshot<T?>) return null;

    return builder(parentPath, snapshot).export(
      into: into,
      values: values,
      parentPath: '$parentPath/$id',
      context: context,
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
abstract class RootNode with _$RootNode, WoFormNodeMixin {
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

  Future<Map<String, dynamic>> exportToMap({
    required WoFormValues values,

    /// context allows access to services, like MediaService
    required BuildContext context,
  }) async {
    final map = Map<String, dynamic>.from(exportSettings.metadata);
    // ignore: deprecated_member_use_from_same_package
    await export(
      into: map,
      values: values,
      context: context,
    );
    return map;
  }

  @override
  @Deprecated('Use exportToMap instead.')
  Future<void> export({
    required dynamic into,
    required WoFormValues values,
    required BuildContext context,
    String parentPath = '',
  }) async {
    final data = Map<String, dynamic>.from(exportSettings.metadata);

    for (final child in children) {
      await child.export(
        into: data,
        values: values,
        parentPath: parentPath,
        context: context,
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
    ].nonNulls;
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
