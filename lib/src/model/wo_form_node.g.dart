// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputsNodeImpl _$$InputsNodeImplFromJson(Map<String, dynamic> json) =>
    _$InputsNodeImpl(
      id: json['id'] as String,
      inputs: json['inputs'] == null
          ? const []
          : const InputsListConverter().fromJson(json['inputs'] as List),
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
      'inputs': const InputsListConverter().toJson(instance.inputs),
      'uiSettings': InputsNodeUiSettings.staticToJson(instance.uiSettings),
      'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
      'runtimeType': instance.$type,
    };

_$PushPageNodeImpl _$$PushPageNodeImplFromJson(Map<String, dynamic> json) =>
    _$PushPageNodeImpl(
      id: json['id'] as String,
      input: const WoFormElementConverter()
          .fromJson(json['input'] as Map<String, dynamic>),
      uiSettings: json['uiSettings'] == null
          ? const PushPageNodeUiSettings()
          : PushPageNodeUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PushPageNodeImplToJson(_$PushPageNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'input': const WoFormElementConverter().toJson(instance.input),
      'uiSettings': PushPageNodeUiSettings.staticToJson(instance.uiSettings),
      'runtimeType': instance.$type,
    };

_$ValueBuilderNodeImpl _$$ValueBuilderNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ValueBuilderNodeImpl(
      id: json['id'] as String,
      inputPath: json['inputPath'] as String,
      defaultValue: json['defaultValue'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ValueBuilderNodeImplToJson(
        _$ValueBuilderNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inputPath': instance.inputPath,
      'defaultValue': instance.defaultValue,
      'runtimeType': instance.$type,
    };

_$ValueListenerNodeImpl _$$ValueListenerNodeImplFromJson(
        Map<String, dynamic> json) =>
    _$ValueListenerNodeImpl(
      id: json['id'] as String,
      inputPath: json['inputPath'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ValueListenerNodeImplToJson(
        _$ValueListenerNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inputPath': instance.inputPath,
      'runtimeType': instance.$type,
    };

_$WidgetNodeImpl _$$WidgetNodeImplFromJson(Map<String, dynamic> json) =>
    _$WidgetNodeImpl(
      id: json['id'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WidgetNodeImplToJson(_$WidgetNodeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };
