// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      input: const WoFormElementConverter()
          .fromJson(json['input'] as Map<String, dynamic>),
      canModifySubmittedValues:
          json['canModifySubmittedValues'] as bool? ?? true,
      uiSettings: json['uiSettings'] == null
          ? const WoFormUiSettings()
          : WoFormUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'input': const WoFormElementConverter().toJson(instance.input),
      'canModifySubmittedValues': instance.canModifySubmittedValues,
      'uiSettings': WoFormUiSettings.staticToJson(instance.uiSettings),
    };
