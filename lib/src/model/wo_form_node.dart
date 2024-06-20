import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/model/json_converter/dynamic_input_templates.dart';
import 'package:wo_form/src/model/json_converter/inputs_list.dart';
import 'package:wo_form/src/model/json_converter/wo_form_element_converter.dart';
import 'package:wo_form/wo_form.dart';

part 'wo_form_node.freezed.dart';
part 'wo_form_node.g.dart';

mixin WoFormElementMixin {
  String get id;

  Map<String, dynamic> toJson();

  dynamic export({
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

  /// Return true if this element has data that can be exported.
  ///
  /// Used by ExportType.firstExportable.
  bool isExportable({
    required WoFormValues values,
    required String parentPath,
  });

  Widget toWidget<T extends WoFormValuesCubit>({required String parentPath});

  Iterable<String> getAllInputPaths({
    required WoFormValues values,
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

    final newParentPath = parentPath.parentPath;

    return getAbsolutePath(parentPath: newParentPath, inputPath: relativePath);
  }

  WoFormElementMixin withUid();
}

@freezed
class DynamicInputTemplate with _$DynamicInputTemplate {
  const factory DynamicInputTemplate({
    @WoFormElementConverter() required WoFormElementMixin input,
    String? labelText,
    String? helperText,
  }) = _DynamicInputTemplate;

  const DynamicInputTemplate._();

  factory DynamicInputTemplate.fromJson(Map<String, dynamic> json) =>
      _$DynamicInputTemplateFromJson(json);

  static Map<String, dynamic> staticToJson(DynamicInputTemplate object) =>
      object.toJson();
}

@freezed
sealed class WoFormNode with _$WoFormNode, WoFormElementMixin {
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

  Map<String, dynamic> initialValues({required String parentPath}) {
    switch (this) {
      case DynamicInputsNode():
        return {};
      case InputsNode(inputs: final inputs):
        return {
          for (final input in inputs)
            if (input is WoFormNode)
              ...input.initialValues(parentPath: '$parentPath/$id')
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
        if (input is WoFormNode) {
          return input.initialValues(parentPath: '$parentPath/$id');
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

  dynamic _exportInputs({
    required List<WoFormElementMixin> inputs,
    required WoFormValues values,
    required String parentPath,
    required ExportType exportType,
    required Map<String, dynamic>? metadata,
  }) {
    final exportableInputs = inputs.where(
      (i) => i.isExportable(
        values: values,
        parentPath: '$parentPath/$id',
      ),
    );

    return switch (exportType) {
      ExportType.map => {
          ...?metadata,
          for (final input in exportableInputs)
            input.getExportKey(
              values: values,
              parentPath: '$parentPath/$id',
            )!: input.export(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        },
      ExportType.list => [
          ...?metadata?.values,
          for (final input in exportableInputs)
            input.export(
              values: values,
              parentPath: '$parentPath/$id',
            ),
        ],
      ExportType.firstExportable => exportableInputs.firstOrNull
          ?.export(values: values, parentPath: '$parentPath/$id'),
    };
  }

  @override
  dynamic export({
    required WoFormValues values,
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        final inputs = this is InputsNode
            ? (this as InputsNode).inputs
            : (values['$parentPath/$id'] as List<WoFormElementMixin>?) ?? [];

        return _exportInputs(
          inputs: inputs,
          values: values,
          parentPath: parentPath,
          exportType: exportSettings.exportType,
          metadata: exportSettings.exportedMetadata,
        );
      // case PushPageNode(input: final input):
      //   return input.export(values: values, parentPath: '$parentPath/$id');
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
    required WoFormValues values,
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode(exportSettings: final exportSettings):
      case InputsNode(exportSettings: final exportSettings):
        final inputs = this is InputsNode
            ? (this as InputsNode).inputs
            : (values['$parentPath/$id'] as List<WoFormElementMixin>?) ?? [];

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
      // case PushPageNode(input: final input):
      //   return input.getExportKey(
      //     values: values,
      //     parentPath: '$parentPath/$id',
      //   );
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
    required WoFormValues values,
    required String parentPath,
  }) {
    switch (this) {
      case DynamicInputsNode():
      case InputsNode():
        final inputs = this is InputsNode
            ? (this as InputsNode).inputs
            : (values['$parentPath/$id'] as List<WoFormElementMixin>?) ?? [];

        return inputs
            .map(
              (i) => i.isExportable(
                values: values,
                parentPath: '$parentPath/$id',
              ),
            )
            .contains(true);
      // case PushPageNode(input: final input):
      //   return input.isExportable(
      //     values: values,
      //     parentPath: '$parentPath/$id',
      //   );
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
      // case PushPageNode(input: final input):
      //   return [
      //     '$parentPath/$id',
      //     ...input.getAllInputPaths(
      //       values: values,
      //       parentPath: '$parentPath/$id',
      //     ),
      //   ];
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
        DynamicInputsNode() =>
          DynamicInputsNodeWidgetBuilder(inputPath: '$parentPath/$id'),
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
        // PushPageNode() =>
        //   PushPageNodeWidgetBuilder(inputPath: '$parentPath/$id'),
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

  @override
  WoFormNode withUid() => copyWith(id: Random().generateUid());
}
