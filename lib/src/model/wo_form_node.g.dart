// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DynamicInputTemplate _$DynamicInputTemplateFromJson(
  Map<String, dynamic> json,
) => _DynamicInputTemplate(
  child: _$JsonConverterFromJson<Map<String, dynamic>, WoFormNodeMixin?>(
    json['child'],
    const InputNullableConverter().fromJson,
  ),
  uiSettings: json['uiSettings'] == null
      ? const DynamicInputUiSettings()
      : DynamicInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DynamicInputTemplateToJson(
  _DynamicInputTemplate instance,
) => <String, dynamic>{
  'child': const InputNullableConverter().toJson(instance.child),
  'uiSettings': instance.uiSettings.toJson(),
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

ConditionnalNode _$ConditionnalNodeFromJson(
  Map<String, dynamic> json,
) => ConditionnalNode(
  id: json['id'] as String,
  condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
  child: const InputConverter().fromJson(json['child'] as Map<String, dynamic>),
  conditionIsInitiallyMet: json['conditionIsInitiallyMet'] as bool? ?? false,
  clearChildrenWhenHidden: json['clearChildrenWhenHidden'] as bool? ?? true,
  uiSettings: json['uiSettings'] == null
      ? const InputUiSettings()
      : InputUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ConditionnalNodeToJson(ConditionnalNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'condition': instance.condition.toJson(),
      'child': const InputConverter().toJson(instance.child),
      'conditionIsInitiallyMet': instance.conditionIsInitiallyMet,
      'clearChildrenWhenHidden': instance.clearChildrenWhenHidden,
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

DynamicInputsNode _$DynamicInputsNodeFromJson(
  Map<String, dynamic> json,
) => DynamicInputsNode(
  id: json['id'] as String,
  templates:
      (json['templates'] as List<dynamic>?)
          ?.map((e) => DynamicInputTemplate.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  initialChildren:
      _$JsonConverterFromJson<List<dynamic>, List<WoFormNodeMixin>>(
        json['initialChildren'],
        const InputsListConverter().fromJson,
      ),
  uiSettings: json['uiSettings'] == null
      ? const DynamicInputsNodeUiSettings()
      : DynamicInputsNodeUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  exportSettings: json['exportSettings'] == null
      ? const ExportSettings()
      : ExportSettings.fromJson(json['exportSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$DynamicInputsNodeToJson(DynamicInputsNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'templates': instance.templates.map((e) => e.toJson()).toList(),
      'initialChildren':
          _$JsonConverterToJson<List<dynamic>, List<WoFormNodeMixin>>(
            instance.initialChildren,
            const InputsListConverter().toJson,
          ),
      'uiSettings': instance.uiSettings.toJson(),
      'exportSettings': instance.exportSettings.toJson(),
      'runtimeType': instance.$type,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

EmptyNode _$EmptyNodeFromJson(Map<String, dynamic> json) => EmptyNode(
  id: json['id'] as String? ?? 'EmptyNode',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$EmptyNodeToJson(EmptyNode instance) => <String, dynamic>{
  'id': instance.id,
  'runtimeType': instance.$type,
};

InputsNode _$InputsNodeFromJson(Map<String, dynamic> json) => InputsNode(
  id: json['id'] as String,
  children: json['children'] == null
      ? const []
      : const InputsListConverter().fromJson(json['children'] as List),
  uiSettings: json['uiSettings'] == null
      ? const InputsNodeUiSettings()
      : InputsNodeUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  exportSettings: json['exportSettings'] == null
      ? const ExportSettings()
      : ExportSettings.fromJson(json['exportSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$InputsNodeToJson(InputsNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'children': const InputsListConverter().toJson(instance.children),
      'uiSettings': instance.uiSettings.toJson(),
      'exportSettings': instance.exportSettings.toJson(),
      'runtimeType': instance.$type,
    };

PathBuilderNode _$PathBuilderNodeFromJson(Map<String, dynamic> json) =>
    PathBuilderNode(
      id: json['id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$PathBuilderNodeToJson(PathBuilderNode instance) =>
    <String, dynamic>{'id': instance.id, 'runtimeType': instance.$type};

ValueBuilderNode _$ValueBuilderNodeFromJson(Map<String, dynamic> json) =>
    ValueBuilderNode(
      id: json['id'] as String,
      path: json['path'] as String,
      initialValue: json['initialValue'],
      uiSettings: json['uiSettings'] == null
          ? const InputUiSettings()
          : InputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>,
            ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ValueBuilderNodeToJson(ValueBuilderNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'initialValue': instance.initialValue,
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

ValuesBuilderNode _$ValuesBuilderNodeFromJson(Map<String, dynamic> json) =>
    ValuesBuilderNode(
      id: json['id'] as String,
      paths: (json['paths'] as List<dynamic>).map((e) => e as String).toList(),
      initialValues: json['initialValues'] as Map<String, dynamic>?,
      uiSettings: json['uiSettings'] == null
          ? const InputUiSettings()
          : InputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>,
            ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ValuesBuilderNodeToJson(ValuesBuilderNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paths': instance.paths,
      'initialValues': instance.initialValues,
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

ValueListenerNode _$ValueListenerNodeFromJson(Map<String, dynamic> json) =>
    ValueListenerNode(
      path: json['path'] as String,
      id: json['id'] as String? ?? 'ValueListenerNode',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ValueListenerNodeToJson(ValueListenerNode instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

WidgetNode _$WidgetNodeFromJson(Map<String, dynamic> json) => WidgetNode(
  id: json['id'] as String? ?? 'WidgetNode',
  uiSettings: json['uiSettings'] == null
      ? const InputUiSettings()
      : InputUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetNodeToJson(WidgetNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

_RootNode _$RootNodeFromJson(Map<String, dynamic> json) => _RootNode(
  id: json['id'] as String? ?? '#',
  initialValues: json['initialValues'] as Map<String, dynamic>? ?? const {},
  children: json['children'] == null
      ? const []
      : const InputsListConverter().fromJson(json['children'] as List),
  uiSettings: json['uiSettings'] == null
      ? const WoFormUiSettings()
      : WoFormUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  exportSettings: json['exportSettings'] == null
      ? const ExportSettings()
      : ExportSettings.fromJson(json['exportSettings'] as Map<String, dynamic>),
  hydratationId: json['hydratationId'] as String? ?? '',
);

Map<String, dynamic> _$RootNodeToJson(_RootNode instance) => <String, dynamic>{
  'id': instance.id,
  'initialValues': instance.initialValues,
  'children': const InputsListConverter().toJson(instance.children),
  'uiSettings': instance.uiSettings.toJson(),
  'exportSettings': instance.exportSettings.toJson(),
  'hydratationId': instance.hydratationId,
};
