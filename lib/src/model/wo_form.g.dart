// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      child: WoFormElementMixin.fromJson(json['child'] as Map<String, dynamic>),
      uiSettings: json['uiSettings'] == null
          ? const WoFormUiSettings()
          : WoFormUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'child': WoFormElementMixin.staticToJson(instance.child),
      'uiSettings': WoFormUiSettings.staticToJson(instance.uiSettings),
    };
