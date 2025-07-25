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
  'uiSettings': DynamicInputUiSettings.staticToJson(instance.uiSettings),
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
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ConditionnalNodeToJson(ConditionnalNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'condition': Condition.staticToJson(instance.condition),
      'child': const InputConverter().toJson(instance.child),
      'conditionIsInitiallyMet': instance.conditionIsInitiallyMet,
      'clearChildrenWhenHidden': instance.clearChildrenWhenHidden,
      'runtimeType': instance.$type,
    };

DynamicInputsNode _$DynamicInputsNodeFromJson(Map<String, dynamic> json) =>
    DynamicInputsNode(
      id: json['id'] as String,
      templates: json['templates'] == null
          ? const []
          : const DynamicInputTemplatesConverter().fromJson(
              json['templates'] as List,
            ),
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
          : ExportSettings.fromJson(
              json['exportSettings'] as Map<String, dynamic>,
            ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DynamicInputsNodeToJson(
  DynamicInputsNode instance,
) => <String, dynamic>{
  'id': instance.id,
  'templates': const DynamicInputTemplatesConverter().toJson(
    instance.templates,
  ),
  'initialChildren':
      _$JsonConverterToJson<List<dynamic>, List<WoFormNodeMixin>>(
        instance.initialChildren,
        const InputsListConverter().toJson,
      ),
  'uiSettings': DynamicInputsNodeUiSettings.staticToJson(instance.uiSettings),
  'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
  'runtimeType': instance.$type,
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

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
      'uiSettings': InputsNodeUiSettings.staticToJson(instance.uiSettings),
      'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
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
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ValueBuilderNodeToJson(ValueBuilderNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'initialValue': instance.initialValue,
      'runtimeType': instance.$type,
    };

ValuesBuilderNode _$ValuesBuilderNodeFromJson(Map<String, dynamic> json) =>
    ValuesBuilderNode(
      id: json['id'] as String,
      paths: (json['paths'] as List<dynamic>).map((e) => e as String).toList(),
      initialValues: json['initialValues'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ValuesBuilderNodeToJson(ValuesBuilderNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paths': instance.paths,
      'initialValues': instance.initialValues,
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
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetNodeToJson(WidgetNode instance) =>
    <String, dynamic>{'id': instance.id, 'runtimeType': instance.$type};

_RootNode _$RootNodeFromJson(Map<String, dynamic> json) => _RootNode(
  id: json['id'] as String? ?? '#',
  children: json['children'] == null
      ? const []
      : const InputsListConverter().fromJson(json['children'] as List),
  uiSettings: json['uiSettings'] == null
      ? const WoFormUiSettings()
      : WoFormUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  exportSettings: json['exportSettings'] == null
      ? const ExportSettings()
      : ExportSettings.fromJson(json['exportSettings'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RootNodeToJson(_RootNode instance) => <String, dynamic>{
  'id': instance.id,
  'children': const InputsListConverter().toJson(instance.children),
  'uiSettings': WoFormUiSettings.staticToJson(instance.uiSettings),
  'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
};
