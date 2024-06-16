// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      inputs: json['inputs'] == null
          ? const []
          : const InputsListConverter().fromJson(json['inputs'] as List),
      uiSettings: json['uiSettings'] == null
          ? const WoFormUiSettings()
          : WoFormUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      exportSettings: json['exportSettings'] == null
          ? const ExportSettings()
          : ExportSettings.fromJson(
              json['exportSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'inputs': const InputsListConverter().toJson(instance.inputs),
      'uiSettings': WoFormUiSettings.staticToJson(instance.uiSettings),
      'exportSettings': ExportSettings.staticToJson(instance.exportSettings),
    };
