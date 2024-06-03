// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectInput<T> _$SelectInputFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SelectInput<T>(
      id: json['id'] as String,
      maxCount: (json['maxCount'] as num?)?.toInt(),
      minCount: (json['minCount'] as num).toInt(),
      defaultValues:
          (json['defaultValues'] as List<dynamic>).map(fromJsonT).toList(),
      availibleValues:
          (json['availibleValues'] as List<dynamic>).map(fromJsonT).toList(),
      fieldSettings: SelectFieldSettings.fromJson(
          json['fieldSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectInputToJson<T>(
  SelectInput<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'maxCount': instance.maxCount,
      'minCount': instance.minCount,
      'defaultValues': instance.defaultValues.map(toJsonT).toList(),
      'availibleValues': instance.availibleValues.map(toJsonT).toList(),
      'fieldSettings': instance.fieldSettings,
    };

_$BooleanInputImpl _$$BooleanInputImplFromJson(Map<String, dynamic> json) =>
    _$BooleanInputImpl(
      id: json['id'] as String,
      defaultValue: json['defaultValue'] as bool?,
      isRequired: json['isRequired'] as bool? ?? false,
      fieldSettings: json['fieldSettings'] == null
          ? const BooleanFieldSettings()
          : BooleanFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BooleanInputImplToJson(_$BooleanInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'defaultValue': instance.defaultValue,
      'isRequired': instance.isRequired,
      'fieldSettings':
          BooleanFieldSettings.staticToJson(instance.fieldSettings),
      'runtimeType': instance.$type,
    };

_$NumInputImpl _$$NumInputImplFromJson(Map<String, dynamic> json) =>
    _$NumInputImpl(
      id: json['id'] as String,
      defaultValue: json['defaultValue'] as num?,
      isRequired: json['isRequired'] as bool? ?? false,
      fieldSettings: json['fieldSettings'] == null
          ? const NumFieldSettings()
          : NumFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumInputImplToJson(_$NumInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'defaultValue': instance.defaultValue,
      'isRequired': instance.isRequired,
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

_$SelectStringInputImpl _$$SelectStringInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectStringInputImpl(
      id: json['id'] as String,
      maxCount: (json['maxCount'] as num?)?.toInt(),
      defaultValue: (json['defaultValue'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      availibleValues: (json['availibleValues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      minCount: (json['minCount'] as num?)?.toInt() ?? 0,
      fieldSettings: json['fieldSettings'] == null
          ? const SelectFieldSettings()
          : SelectFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SelectStringInputImplToJson(
        _$SelectStringInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maxCount': instance.maxCount,
      'defaultValue': instance.defaultValue,
      'availibleValues': instance.availibleValues,
      'minCount': instance.minCount,
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

_$StringInputImpl _$$StringInputImplFromJson(Map<String, dynamic> json) =>
    _$StringInputImpl(
      id: json['id'] as String,
      defaultValue: json['defaultValue'] as String?,
      isRequired: json['isRequired'] as bool? ?? false,
      regexPattern: json['regexPattern'] as String?,
      fieldSettings: json['fieldSettings'] == null
          ? const StringFieldSettings()
          : StringFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StringInputImplToJson(_$StringInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'defaultValue': instance.defaultValue,
      'isRequired': instance.isRequired,
      'regexPattern': instance.regexPattern,
      'fieldSettings': StringFieldSettings.staticToJson(instance.fieldSettings),
      'runtimeType': instance.$type,
    };
