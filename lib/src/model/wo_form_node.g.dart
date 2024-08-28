// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DynamicInputTemplateImpl _$$DynamicInputTemplateImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicInputTemplateImpl(
      child: WoFormNodeMixin.fromJson(json['child'] as Map<String, dynamic>),
      uiSettings: json['uiSettings'] == null
          ? const DynamicInputUiSettings()
          : DynamicInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DynamicInputTemplateImplToJson(
        _$DynamicInputTemplateImpl instance) =>
    <String, dynamic>{
      'child': WoFormNodeMixin.staticToJson(instance.child),
      'uiSettings': DynamicInputUiSettings.staticToJson(instance.uiSettings),
    };

_$DynamicInputsNodeImpl _$$DynamicInputsNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$DynamicInputsNodeImpl(
      id: json['id'] as String,
      templates: json['templates'] == null
          ? const []
          : const DynamicInputTemplatesConverter()
              .fromJson(json['templates'] as List),
      initialChildren: json['initialChildren'] == null
          ? const []
          : const InputsListConverter()
              .fromJson(json['initialChildren'] as List),
      uiSettings: json['uiSettings'] == null
          ? const DynamicInputsNodeUiSettings()
          : DynamicInputsNodeUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      exportSettings: json['exportSettings'] == null
          ? const ExportSettings()
          : ExportSettings.fromJson(
              json['exportSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DynamicInputsNodeImplToJson(
        _$DynamicInputsNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'templates':
          const DynamicInputTemplatesConverter().toJson(instance.templates),
      'initialChildren':
          const InputsListConverter().toJson(instance.initialChildren),
      'uiSettings':
          DynamicInputsNodeUiSettings.staticToJson(instance.uiSettings),
      'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
      'runtimeType': instance.$type,
    };

_$InputsNodeImpl _$$InputsNodeImplFromJson(Map<String, dynamic> json) =>
    _$InputsNodeImpl(
      id: json['id'] as String,
      children: json['children'] == null
          ? const []
          : const InputsListConverter().fromJson(json['children'] as List),
      uiSettings: json['uiSettings'] == null
          ? const InputsNodeUiSettings()
          : InputsNodeUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      exportSettings: json['exportSettings'] == null
          ? const ExportSettings()
          : ExportSettings.fromJson(
              json['exportSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InputsNodeImplToJson(_$InputsNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'children': const InputsListConverter().toJson(instance.children),
      'uiSettings': InputsNodeUiSettings.staticToJson(instance.uiSettings),
      'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
      'runtimeType': instance.$type,
    };

_$PathBuilderNodeImpl _$$PathBuilderNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$PathBuilderNodeImpl(
      id: json['id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PathBuilderNodeImplToJson(
        _$PathBuilderNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$ValueBuilderNodeImpl _$$ValueBuilderNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ValueBuilderNodeImpl(
      id: json['id'] as String,
      path: json['path'] as String,
      initialValue: json['initialValue'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ValueBuilderNodeImplToJson(
        _$ValueBuilderNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'initialValue': instance.initialValue,
      'runtimeType': instance.$type,
    };

_$ValuesBuilderNodeImpl _$$ValuesBuilderNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ValuesBuilderNodeImpl(
      id: json['id'] as String,
      paths: (json['paths'] as List<dynamic>).map((e) => e as String).toList(),
      initialValues: json['initialValues'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ValuesBuilderNodeImplToJson(
        _$ValuesBuilderNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paths': instance.paths,
      'initialValues': instance.initialValues,
      'runtimeType': instance.$type,
    };

_$ValueListenerNodeImpl _$$ValueListenerNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ValueListenerNodeImpl(
      path: json['path'] as String,
      id: json['id'] as String? ?? 'ValueListenerNode',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ValueListenerNodeImplToJson(
        _$ValueListenerNodeImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$WidgetNodeImpl _$$WidgetNodeImplFromJson(Map<String, dynamic> json) =>
    _$WidgetNodeImpl(
      id: json['id'] as String? ?? 'WidgetNode',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WidgetNodeImplToJson(_$WidgetNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };

_$RootNodeImpl _$$RootNodeImplFromJson(Map<String, dynamic> json) =>
    _$RootNodeImpl(
      id: json['id'] as String? ?? '#',
      children: json['children'] == null
          ? const []
          : const InputsListConverter().fromJson(json['children'] as List),
      uiSettings: json['uiSettings'] == null
          ? const WoFormUiSettings()
          : WoFormUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      exportSettings: json['exportSettings'] == null
          ? const ExportSettings()
          : ExportSettings.fromJson(
              json['exportSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RootNodeImplToJson(_$RootNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'children': const InputsListConverter().toJson(instance.children),
      'uiSettings': WoFormUiSettings.staticToJson(instance.uiSettings),
      'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
    };
