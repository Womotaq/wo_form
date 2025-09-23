import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/input.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_node.freezed.dart';
part 'wo_form_node.g.dart';

mixin WoFormNodeMixin {
  String get id;

  static WoFormNodeMixin fromJson(Json json) {
    try {
      return WoFormInput.fromJson(json);
    } on CheckedFromJsonException {
      return WoFormNode.fromJson(json);
    }
  }

  Json toJson();

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
    required WoFormValues values,
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

  Json getInitialValues({required String parentPath});

  Widget toWidget({required String parentPath, Key? key});

  WoFormNodeMixin withId({required String id});

  /// Used when OFormUiSettings.scrollable is false
  int? flex(BuildContext context) => null;
}

@freezed
abstract class DynamicInputTemplate with _$DynamicInputTemplate {
  @Assert(
    '(child == null) != (childBuilder == null)',
    'One of child or childBuilder must be specified',
  )
  factory DynamicInputTemplate({
    @InputNullableConverter() WoFormNodeMixin? child,
    @notSerializable WoFormNodeMixin Function()? childBuilder,
    @Default(DynamicInputUiSettings()) DynamicInputUiSettings uiSettings,
  }) = _DynamicInputTemplate;

  const DynamicInputTemplate._();

  factory DynamicInputTemplate.fromJson(Json json) =>
      _$DynamicInputTemplateFromJson(json);

  WoFormNodeMixin getChild() => child == null ? childBuilder!() : child!;
}

@freezed
sealed class WoFormNode with _$WoFormNode, WoFormNodeMixin {
  const factory WoFormNode.conditionnal({
    required String id,
    required Condition condition,
    @InputConverter() required WoFormNodeMixin child,
    @Default(false) bool conditionIsInitiallyMet,
    @Default(true) bool clearChildrenWhenHidden,
    @Default(InputUiSettings()) InputUiSettings uiSettings,
  }) = ConditionnalNode;

  const factory WoFormNode.dynamicInputs({
    required String id,
    // @DynamicInputTemplatesConverter()
    @Default([]) List<DynamicInputTemplate> templates,
    @InputsListConverter() List<WoFormNodeMixin>? initialChildren,
    @Default(DynamicInputsNodeUiSettings())
    DynamicInputsNodeUiSettings uiSettings,
    @Default(ExportSettings()) ExportSettings exportSettings,
  }) = DynamicInputsNode;

  const factory WoFormNode.empty({
    @Default('EmptyNode') String id,
  }) = EmptyNode;

  const factory WoFormNode.inputs({
    required String id,
    @InputsListConverter() @Default([]) List<WoFormNodeMixin> children,
    @Default(InputsNodeUiSettings()) InputsNodeUiSettings uiSettings,
    @Default(ExportSettings()) ExportSettings exportSettings,
  }) = InputsNode;

  @Assert('builder != null', 'PathBuilderNode.builder cannot be null')
  const factory WoFormNode.pathBuilder({
    required String id,
    @notSerializable WoFormNodeMixin Function(String path)? builder,
  }) = PathBuilderNode;

  @Assert('selector != null', 'SelectorNode.selector cannot be null')
  @Assert('builder != null', 'SelectorNode.builder cannot be null')
  const factory WoFormNode.selector({
    required String id,
    @notSerializable Object? Function(WoFormValues values)? selector,
    @notSerializable WoFormNodeMixin Function(Object? value)? builder,
    Object? initialValue,
    @Default(InputUiSettings()) InputUiSettings uiSettings,
  }) = SelectorNode;

  @Assert('builder != null', 'ValueBuilderNode.builder cannot be null')
  const factory WoFormNode.valueBuilder({
    required String id,
    required String path,
    @notSerializable WoFormNodeMixin Function(Object? value)? builder,
    Object? initialValue,
  }) = ValueBuilderNode;

  @Assert('builder != null', 'ValuesBuilderNode.builder cannot be null')
  const factory WoFormNode.valuesBuilder({
    required String id,
    required List<String> paths,
    @notSerializable
    WoFormNodeMixin Function(Map<String, Object?> values)? builder,
    Map<String, Object?>? initialValues,
  }) = ValuesBuilderNode;

  @Assert('listener != null', 'ValueListenerNode.listener cannot be null')
  const factory WoFormNode.valueListener({
    required String path,
    @Default('ValueListenerNode') String id,
    @notSerializable
    bool Function(Object? previous, Object? current)? listenWhen,
    @notSerializable
    void Function(BuildContext context, String parentPath, Object? value)?
    listener,
  }) = ValueListenerNode;

  const factory WoFormNode.widget({
    @Default('WidgetNode') String id,
    @notSerializable Widget Function(BuildContext context)? builder,
    @Default(InputUiSettings()) InputUiSettings uiSettings,
  }) = WidgetNode;

  const WoFormNode._();

  factory WoFormNode.fromJson(Json json) => _$WoFormNodeFromJson(json);

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
            final data = Json.from(exportSettings.metadata);

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
            final data = Json.from(exportSettings.metadata);

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
      case SelectorNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = switch (this) {
          PathBuilderNode(builder: final builder) => builder!(
            '$parentPath/$id',
          ),
          SelectorNode(selector: final selector, builder: final builder) =>
            builder!(selector!(values)),
          ValueBuilderNode(path: final path, builder: final builder) =>
            builder!(values.getValue(path, parentPath: '$parentPath/$id')),
          ValuesBuilderNode(paths: final paths, builder: final builder) =>
            builder!(
              {
                for (final path in paths)
                  path: values.getValue(path, parentPath: '$parentPath/$id'),
              },
            ),
          _ => throw AssertionError(),
        };

        await child.export(
          into: into,
          values: values,
          parentPath: '$parentPath/$id',
          context: context,
        );
      case ValueListenerNode():
      case WidgetNode():
      case EmptyNode():
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
      case SelectorNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = switch (this) {
          PathBuilderNode(builder: final builder) => builder!(
            '$parentPath/$id',
          ),
          SelectorNode(selector: final selector, builder: final builder) =>
            builder!(selector!(values)),
          ValueBuilderNode(path: final path, builder: final builder) =>
            builder!(values.getValue(path, parentPath: '$parentPath/$id')),
          ValuesBuilderNode(paths: final paths, builder: final builder) =>
            builder!(
              {
                for (final path in paths)
                  path: values.getValue(path, parentPath: '$parentPath/$id'),
              },
            ),
          _ => throw AssertionError(),
        };

        return [
          '$parentPath/$id',
          ...child.getAllInputPaths(
            values: values,
            parentPath: '$parentPath/$id',
          ),
        ];
      case ValueListenerNode():
      case WidgetNode():
      case EmptyNode():
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
    required WoFormValues values,
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
      case SelectorNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = switch (this) {
          PathBuilderNode(builder: final builder) => builder!(
            '$parentPath/$id',
          ),
          SelectorNode(selector: final selector, builder: final builder) =>
            builder!(selector!(values)),
          ValueBuilderNode(path: final path, builder: final builder) =>
            builder!(values.getValue(path, parentPath: '$parentPath/$id')),
          ValuesBuilderNode(paths: final paths, builder: final builder) =>
            builder!(
              {
                for (final path in paths)
                  path: values.getValue(path, parentPath: '$parentPath/$id'),
              },
            ),
          _ => throw AssertionError(),
        };

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
      case EmptyNode():
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
      case SelectorNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = switch (this) {
          PathBuilderNode(builder: final builder) => builder!(
            '$parentPath/$id',
          ),
          SelectorNode(selector: final selector, builder: final builder) =>
            builder!(selector!(values)),
          ValueBuilderNode(path: final path, builder: final builder) =>
            builder!(values.getValue(path, parentPath: '$parentPath/$id')),
          ValuesBuilderNode(paths: final paths, builder: final builder) =>
            builder!(
              {
                for (final path in paths)
                  path: values.getValue(path, parentPath: '$parentPath/$id'),
              },
            ),
          _ => throw AssertionError(),
        };

        return child.getErrors(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode():
      case WidgetNode():
      case EmptyNode():
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
      case SelectorNode():
      case ValueBuilderNode():
      case ValuesBuilderNode():
        final child = switch (this) {
          PathBuilderNode(builder: final builder) => builder!(
            '$parentPath/$id',
          ),
          SelectorNode(selector: final selector, builder: final builder) =>
            builder!(selector!(values)),
          ValueBuilderNode(path: final path, builder: final builder) =>
            builder!(values.getValue(path, parentPath: '$parentPath/$id')),
          ValuesBuilderNode(paths: final paths, builder: final builder) =>
            builder!(
              {
                for (final path in paths)
                  path: values.getValue(path, parentPath: '$parentPath/$id'),
              },
            ),
          _ => throw AssertionError(),
        };

        return child.getExportKey(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case ValueListenerNode():
      case WidgetNode():
      case EmptyNode():
        return null;
    }
  }

  @override
  Json getInitialValues({required String parentPath}) {
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

      case SelectorNode(
        builder: final builder,
        initialValue: final initialValue,
      ):
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
      case EmptyNode():
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
    PathBuilderNode(builder: final builder) => builder!(
      '$parentPath/$id',
    ).toWidget(parentPath: '$parentPath/$id'),
    SelectorNode(
      selector: final selector,
      builder: final builder,
    ) =>
      WoFormValueSelector(
        key: key,
        selector: selector!,
        builder: (context, value) =>
            builder!(value).toWidget(parentPath: '$parentPath/$id'),
      ),
    ValueBuilderNode(
      path: final path,
      builder: final builder,
    ) =>
      WoFormValueBuilder<dynamic>(
        key: key,
        path: WoFormValues.getAbsolutePath(
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
        path: WoFormValues.getAbsolutePath(
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
    WidgetNode(builder: final builder) =>
      builder == null
          ? SizedBox.shrink(key: key)
          : Builder(key: key, builder: builder),
    EmptyNode() => SizedBox.shrink(key: key),
  };

  @override
  WoFormNode withId({required String id}) => copyWith(id: id);

  /// Used when OFormUiSettings.scrollable is false
  @override
  int? flex(BuildContext context) => switch (this) {
    final ConditionnalNode node =>
      node.uiSettings.flex == null || node.uiSettings.flex! == 0
          ? node.uiSettings.flex
          : !context.select(
              (WoFormValuesCubit c) => c.state.meet(node.condition),
            )
          ? 0
          : node.uiSettings.flex == WoFormNode.flexDeferToChild
          ? node.child.flex(context)
          : node.uiSettings.flex,
    final SelectorNode node =>
      node
          .builder!(
            context.select(
              (WoFormValuesCubit c) => node.selector!(c.state),
            ),
          )
          .flex(context),
    final ValueBuilderNode node =>
      node
          .builder!(
            context.select(
              (WoFormValuesCubit c) => c.state.getValue(node.path),
            ),
          )
          .flex(context),
    final ValuesBuilderNode node =>
      node
          .builder!(
            context.select(
              (WoFormValuesCubit c) => {
                for (final path in node.paths) path: c.state.getValue(path),
              },
            ),
          )
          .flex(context),
    InputsNode(uiSettings: final uiSettings) => uiSettings.flex,
    WidgetNode(uiSettings: final uiSettings) => uiSettings.flex,
    _ => null,
  };

  /// If uiSettings.flex is set to flexDeferToChild, the flex will be based on
  /// the child's flex.
  ///
  /// Works with [ConditionnalNode], [SelectorNode], [ValueBuilderNode] and
  /// [ValuesBuilderNode].
  static const int flexDeferToChild = -1;
}

@freezed
abstract class FutureNode<T> with _$FutureNode<T>, WoFormNodeMixin {
  const factory FutureNode({
    required String id,
    required Future<T>? future,
    required WoFormNodeMixin Function(
      String parentPath,
      AsyncSnapshot<T?> snapshot,
    )
    builder,
    T? initialData,

    /// If true, when the future will be completed, the values of
    /// the children inputs will be reseted to their getInitialValues.
    @Default(true) bool willResetToInitialValues,
    @Default(InputUiSettings()) InputUiSettings uiSettings,
  }) = _FutureNode<T>;

  const FutureNode._();

  @override
  Json toJson() => {};

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
    required WoFormValues values,
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
  Json getInitialValues({
    required String parentPath,
    AsyncSnapshot<T?>? initialSnapshot,
  }) {
    final snapshot =
        initialSnapshot ??
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
        node: this,
      );

  @override
  FutureNode<T> withId({required String id}) => copyWith(id: id);

  @override
  int? flex(BuildContext context) => uiSettings.flex;
}

@freezed
abstract class RootNode with _$RootNode, WoFormNodeMixin {
  const factory RootNode({
    @Default('#') String id,
    @Default({}) Json initialValues,
    @InputsListConverter() @Default([]) List<WoFormNodeMixin> children,
    @Default(WoFormUiSettings()) WoFormUiSettings uiSettings,
    @Default(ExportSettings()) ExportSettings exportSettings,

    // LATER : issue, how to modify an in-production corrupted data ?
    // give a way to override it ?
    //
    /// If not empty, this form will be locally persistent, using HydratedCubit.
    @Default('') String hydratationId,
  }) = _RootNode;

  const RootNode._();

  factory RootNode.fromJson(Json json) => _$RootNodeFromJson(json);

  // --

  Future<Json> exportToMap({
    required WoFormValues values,

    /// context allows access to services, like MediaService
    required BuildContext context,
  }) async {
    final map = Json.from(exportSettings.metadata);
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
    final data = Json.from(exportSettings.metadata);

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
  }) => [
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
  }) => null;

  @override
  WoFormNodeMixin? getChild({
    required String path,
    required WoFormValues values,
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
          ) => child.id == firstPathId,
        )
        ?.getChild(
          path: path.substring(secondSlashIndex + 1),
          parentPath: parentPath,
          values: values,
        );
  }

  @override
  Json getInitialValues({String parentPath = ''}) => {
    for (final child in children)
      ...child.getInitialValues(parentPath: parentPath),
  };

  @override
  Widget toWidget({String parentPath = '', Key? key}) =>
      WoFormPageBuilder(key: key);

  @override
  RootNode withId({required String id}) => copyWith(id: id);
}
