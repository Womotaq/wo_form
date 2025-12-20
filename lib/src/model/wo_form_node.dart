import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/duration.dart';
import 'package:wo_form/src/model/json_converter/input.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/src/utils/extensions.dart';
import 'package:wo_form/src/utils/json_annotation.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_input.dart';
part 'wo_form_node.freezed.dart';
part 'wo_form_node.g.dart';

// `fromJson: true` is required because instead of the synatx
// `factory WoFormInput.fromJson`, wich implies T, we use the syntax
// `static WoFormInput fromJson`, wich deduces T.
/// [T] is an optionnal type used by fields like :
/// - [FutureNode] : [T] is the type of the data returned by [FutureNode.future]
/// - [SelectInput] : [T] is the type of the values to choose from
@Freezed(fromJson: true, toJson: true)
sealed class WoFormNode<T extends Object?> with _$WoFormNode<T> {
  const factory WoFormNode.conditionnal({
    required String id,
    required Condition condition,
    @InputConverter() required WoFormNode child,
    @Default(false) bool conditionIsInitiallyMet,

    /// If true, when the condition goes from met to not met, the values of the
    /// child and its descendant nodes are reset to their initial state.
    @Default(true) bool resetChildrenWhenHidden,
    InputUiSettings? uiSettings,
  }) = ConditionnalNode;

  /// The value of this node is of type List&lt;WoFormNode&gt;. It gives you
  /// access to the ids of the child nodes. You can then find their values using
  /// values.get('#dynamicInputsId#childId').
  const factory WoFormNode.dynamicInputs({
    required String id,
    @Default([]) List<DynamicInputTemplate> templates,
    int? maxCount,
    @InputsListConverter() List<WoFormNode>? initialChildren,
    DynamicInputsNodeUiSettings? uiSettings,
    ExportSettings? exportSettings,
  }) = DynamicInputsNode;

  const factory WoFormNode.empty({
    @Default('EmptyNode') String id,
  }) = EmptyNode;

  @Assert('future != null', 'FutureNode.future cannot be null')
  @Assert('builder != null', 'FutureNode.builder cannot be null')
  const factory WoFormNode.future({
    required String id,
    @notSerializable Future<T>? future,
    @notSerializable WoFormNode Function(AsyncSnapshot<T?> snapshot)? builder,
    @notSerializable T? initialData,

    /// If true, when the future completes (i.e. when connextionState is
    /// [ConnectionState.done]), the values of the children inputs will be
    /// reseted to their initialValues, using
    /// [FutureNode.builder].getInitialValues instead of
    /// [FutureNode.initialData].
    @Default(true) bool willResetToInitialValues,
    InputUiSettings? uiSettings,
  }) = FutureNode<T>;

  const factory WoFormNode.inputs({
    required String id,
    @InputsListConverter() @Default([]) List<WoFormNode> children,
    InputsNodeUiSettings? uiSettings,
    ExportSettings? exportSettings,
  }) = InputsNode;

  @Assert('builder != null', 'PathBuilderNode.builder cannot be null')
  const factory WoFormNode.pathBuilder({
    required String id,

    /// [path] is the path of this node, wich includes its own id.
    @notSerializable WoFormNode Function(String path)? builder,
  }) = PathBuilderNode;

  const factory WoFormNode.root({
    // The root's id should never be used
    @Default('root') String id,
    @Default({}) Json initialValues,
    @InputsListConverter() @Default([]) List<WoFormNode> children,
    WoFormUiSettings? uiSettings,
    ExportSettings? exportSettings,

    // LATER : issue, how to modify an in-production corrupted data ?
    // give a way to override it ?
    //
    /// If not empty, this form will be locally persistent, using HydratedCubit.
    @Default('') String hydratationId,
  }) = RootNode;

  @Assert('selector != null', 'SelectorNode.selector cannot be null')
  @Assert('builder != null', 'SelectorNode.builder cannot be null')
  const factory WoFormNode.selector({
    required String id,

    @notSerializable T Function(WoFormValues values)? selector,
    @notSerializable WoFormNode Function(T value)? builder,

    /// If not set, [selector] will be called with an empty WoFormValues.
    @notSerializable T? initialValue,
    InputUiSettings? uiSettings,
  }) = SelectorNode;

  @Assert('builder != null', 'ValueBuilderNode.builder cannot be null')
  const factory WoFormNode.valueBuilder({
    required String id,

    /// The path to the value this node listens to.
    /// See : [WoFormValues.getValue].
    required String path,
    @notSerializable WoFormNode Function(Object? value)? builder,
    Object? initialValue,
  }) = ValueBuilderNode;

  @Assert('builder != null', 'ValuesBuilderNode.builder cannot be null')
  const factory WoFormNode.valuesBuilder({
    required String id,
    required List<String> paths,
    @notSerializable WoFormNode Function(Map<String, Object?> values)? builder,
    Map<String, Object?>? initialValues,
  }) = ValuesBuilderNode;

  @Assert('listener != null', 'ValueListenerNode.listener cannot be null')
  const factory WoFormNode.valueListener({
    required String path,
    @Default('ValueListenerNode') String id,
    @notSerializable
    bool Function(Object? previous, Object? current)? listenWhen,
    @notSerializable
    void Function(BuildContext context, Object? value)? listener,
  }) = ValueListenerNode;

  const factory WoFormNode.widget({
    @Default('WidgetNode') String id,
    @notSerializable Widget Function(BuildContext context)? builder,
    InputUiSettings? uiSettings,
  }) = WidgetNode;

  const WoFormNode._();

  static WoFormNode fromJson(Json json) => _fromJson(json);
  static WoFormNode _fromJson(Json json) {
    try {
      return _$WoFormNodeFromJson(json);
    } on CheckedFromJsonException catch (error) {
      if (error.key == 'runtimeType') {
        return WoFormInput.fromJson(json);
      } else {
        rethrow;
      }
    }
  }

  // --

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
      case FutureNode(builder: final builder):
        final snapshot = values.get<AsyncSnapshot<T?>>('$parentPath/$id');
        if (snapshot == null) return;

        return builder!(snapshot).export(
          into: into,
          values: values,
          parentPath: '$parentPath/$id',
          context: context,
        );
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNode>?) ?? [];

        switch (exportSettings?.type) {
          case ExportType.mergeWithParent:
            final data = exportSettings == null
                ? Json()
                : Json.from(exportSettings.metadata);

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
          case null:
          case ExportType.map:
            final data = exportSettings == null
                ? Json()
                : Json.from(exportSettings.metadata);

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
            final data = exportSettings == null
                ? <dynamic>[]
                : List<dynamic>.from(exportSettings.metadata.values);

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

      case RootNode(
        children: final children,
        exportSettings: final exportSettings,
      ):
        assert(
          parentPath == '',
          'The parentPath of RootNode must always be an empty string.',
        );

        final data = exportSettings == null
            ? Json()
            : Json.from(exportSettings.metadata);

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
        break;

      // WoFormInput overrides this method
      case WoFormInput():
        throw UnimplementedError();
    }
  }

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
      case FutureNode(builder: final builder):
        final snapshot = values.get<AsyncSnapshot<T?>>('$parentPath/$id');

        return [
          '$parentPath/$id',
          if (snapshot != null)
            ...builder!(snapshot).getAllInputPaths(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ];
      case DynamicInputsNode():
      case InputsNode():
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNode>?) ?? [];

        return [
          '$parentPath/$id',
          for (final child in children)
            ...child.getAllInputPaths(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ];

      case RootNode(children: final children):
        assert(
          parentPath == '',
          'The parentPath of RootNode must always be an empty string.',
        );

        return [
          parentPath,
          for (final child in children)
            ...child.getAllInputPaths(
              values: values,
              parentPath: parentPath,
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

      // WoFormInput overrides this method
      case WoFormInput():
        throw UnimplementedError();
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
  WoFormNode? getChild({
    /// The path of the child, relative to this node (contains this node's id)
    required String path,

    /// The path until this node
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
      case FutureNode(builder: final builder):
        final snapshot = values.get<AsyncSnapshot<T?>>('$parentPath/$id');
        if (snapshot == null) return null;

        final child = builder!(snapshot);
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
      case DynamicInputsNode():
      case InputsNode():
        final children = this is InputsNode
            ? (this as InputsNode).children
            : (values['$parentPath/$id'] as List<WoFormNode>?) ?? [];

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

      case RootNode(children: final children):
        assert(
          parentPath == '',
          'The parentPath of RootNode must always be an empty string.',
        );

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
              // skip root's id
              parentPath: parentPath,
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

      // WoFormInput overrides this method
      case WoFormInput():
        throw UnimplementedError();
    }
  }

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
      case FutureNode(builder: final builder):
        final snapshot = values.get<AsyncSnapshot<T?>>('$parentPath/$id');
        if (snapshot == null) return [];

        return builder!(snapshot).getErrors(
          values: values,
          parentPath: '$parentPath/$id',
        );

      case DynamicInputsNode(maxCount: final maxCount):
        final children = values.get<List<WoFormNode>>('$parentPath/$id') ?? [];

        WoFormInputError? error;
        if (maxCount != null && children.length > maxCount) {
          error = WoFormInputError.maxBound(path: '$parentPath/$id');
        }

        return [
          ?error,
          for (final child in children)
            ...child.getErrors(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ].nonNulls;

      case InputsNode():
        final children = this is InputsNode
            ? (this as InputsNode).children
            : values.get<List<WoFormNode>>('$parentPath/$id') ?? [];

        return [
          for (final child in children)
            ...child.getErrors(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ].nonNulls;

      case RootNode(children: final children):
        assert(
          parentPath == '',
          'The parentPath of RootNode must always be an empty string.',
        );

        return [
          for (final child in children)
            ...child.getErrors(
              values: values,
              // skip root's id
              parentPath: parentPath,
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

      // WoFormInput overrides this method
      case WoFormInput():
        throw UnimplementedError();
    }
  }

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
      case FutureNode(builder: final builder):
        final snapshot = values.get<AsyncSnapshot<T?>>('$parentPath/$id');
        if (snapshot == null) return null;

        return builder!(snapshot).getExportKey(
          values: values,
          parentPath: '$parentPath/$id',
        );
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        return switch (exportSettings?.type) {
          null || ExportType.map || ExportType.list => id,
          ExportType.mergeWithParent => null,
        };

      case RootNode():
        assert(
          parentPath == '',
          'The parentPath of RootNode must always be an empty string.',
        );

        return null;

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

      // WoFormInput overrides this method
      case WoFormInput():
        throw UnimplementedError();
    }
  }

  Json getInitialValues({required String parentPath}) {
    switch (this) {
      case ConditionnalNode(
        conditionIsInitiallyMet: final conditionIsInitiallyMet,
        child: final child,
      ):
        if (!conditionIsInitiallyMet) return {};

        return child.getInitialValues(parentPath: '$parentPath/$id');
      case FutureNode(
        initialData: final initialData,
        builder: final builder,
      ):
        final initialSnapshot = AsyncSnapshot.withData(
          ConnectionState.waiting,
          initialData,
        );
        final child = builder!(initialSnapshot);

        return {
          '$parentPath/$id': initialSnapshot,
          ...child.getInitialValues(parentPath: '$parentPath/$id'),
        };
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

      case RootNode(children: final children):
        assert(
          parentPath == '',
          'The parentPath of RootNode must always be an empty string.',
        );

        return {
          for (final child in children)
            // skip root's id
            ...child.getInitialValues(parentPath: ''),
        };

      case SelectorNode(
        selector: final selector,
        builder: final builder,
        initialValue: final initialValue,
      ):
        final child = builder!(
          initialValue ?? selector!(const WoFormValues({})),
        );
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
      case EmptyNode():
        return {};

      // WoFormInput overrides this method
      case WoFormInput():
        throw UnimplementedError();
    }
  }

  Widget toWidget({required String parentPath, Key? key}) => switch (this) {
    ConditionnalNode() => ConditionnalNodeBuilder(
      key: key,
      path: '$parentPath/$id',
    ),
    DynamicInputsNode() => DynamicInputsNodeWidgetBuilder(
      key: key,
      path: '$parentPath/$id',
    ),
    FutureNode() => FutureNodeBuilder<T>(
      key: key,
      path: '$parentPath/$id',
    ),
    InputsNode() => InputsNodeWidgetBuilder(
      key: key,
      path: '$parentPath/$id',
    ),
    PathBuilderNode(builder: final builder) =>
      builder!('$parentPath/$id').toWidget(
        key: key,
        parentPath: '$parentPath/$id',
      ),
    RootNode() => WoFormPageBuilder(
      key: key,
    ),
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
        listener: (context, value) => listener!(context, value),
        child: const SizedBox.shrink(),
      ),
    WidgetNode(builder: final builder) =>
      builder == null
          ? SizedBox.shrink(key: key)
          : Builder(key: key, builder: builder),
    EmptyNode() => SizedBox.shrink(key: key),

    // WoFormInput overrides this method
    WoFormInput() => throw UnimplementedError(),
  };

  /// This method returns the value to provide to [Flexible.flex].
  ///
  /// Used when [WoFormUiSettings.layout] is [LayoutMethod.flexible].
  int? flex(BuildContext context, {required String parentPath}) {
    final flexRaw = switch (this) {
      final ConditionnalNode node =>
        node.uiSettings?.flex == null || node.uiSettings!.flex! == 0
            ? node.uiSettings?.flex
            : !context.select(
                (WoFormValuesCubit c) => c.state.meet(node.condition),
              )
            ? 0
            : node.uiSettings!.flex == WoFormNode.flexDeferToChild
            ? node.child.flex(context, parentPath: '$parentPath/$id')
            : node.uiSettings!.flex,
      DynamicInputsNode _ || EmptyNode _ => null,
      final FutureNode node => node.uiSettings?.flex,
      final PathBuilderNode node => node.builder!('$parentPath/$id').flex(
        context,
        parentPath: '$parentPath/$id',
      ),
      RootNode _ => null,
      final SelectorNode<T> node =>
        node
            .builder!(
              context.select(
                (WoFormValuesCubit c) => node.selector!(c.state),
              ),
            )
            // skip root's id
            .flex(context, parentPath: ''),
      final ValueBuilderNode node =>
        node
            .builder!(
              context.select((WoFormValuesCubit c) => c.state[node.path]),
            )
            .flex(context, parentPath: '$parentPath/$id'),
      final ValuesBuilderNode node =>
        node
            .builder!(
              context.select(
                (WoFormValuesCubit c) => {
                  for (final path in node.paths) path: c.state[path],
                },
              ),
            )
            .flex(context, parentPath: '$parentPath/$id'),
      ValueListenerNode _ => null,
      InputsNode(uiSettings: final uiSettings) =>
        uiSettings?.childrenVisibility == ChildrenVisibility.whenAsked
            ? 0
            : uiSettings?.flex,
      WidgetNode(uiSettings: final uiSettings) => uiSettings?.flex,

      // WoFormInput overrides this method
      WoFormInput() => throw UnimplementedError(),
    };

    return (flexRaw != null && flexRaw < 0) ? 1 : flexRaw;
  }

  /// If uiSettings.flex is set to flexDeferToChild, the flex will be based on
  /// the child's flex.
  ///
  /// Works with [ConditionnalNode], [SelectorNode], [ValueBuilderNode] and
  /// [ValuesBuilderNode].
  static const int flexDeferToChild = -1;
}

extension RootNodeX on RootNode {
  Future<Json> exportToMap({
    required WoFormValues values,

    /// This context allows access to services, like MediaService.
    /// It is not required to be the form's context.
    required BuildContext context,
  }) async {
    final map = exportSettings == null
        ? Json()
        : Json.from(exportSettings!.metadata);
    await export(
      into: map,
      values: values,
      context: context,
      parentPath: '',
    );
    return map;
  }
}

@freezed
abstract class DynamicInputTemplate with _$DynamicInputTemplate {
  @Assert(
    '(child == null) != (childBuilder == null)',
    'One of child or childBuilder must be specified',
  )
  factory DynamicInputTemplate({
    @InputNullableConverter() WoFormNode? child,
    @notSerializable WoFormNode Function()? childBuilder,
    @Default(DynamicInputUiSettings()) DynamicInputUiSettings uiSettings,
  }) = _DynamicInputTemplate;

  const DynamicInputTemplate._();

  factory DynamicInputTemplate.fromJson(Json json) =>
      _$DynamicInputTemplateFromJson(json);

  WoFormNode getChild() => child == null ? childBuilder!() : child!;
}
