// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListInput<T> _$ListInputFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ListInput<T>(
      id: json['id'] as String,
      value: (json['value'] as List<dynamic>?)?.map(fromJsonT).toList(),
      isRequired: json['isRequired'] as bool,
    );

Map<String, dynamic> _$ListInputToJson<T>(
  ListInput<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value?.map(toJsonT).toList(),
      'isRequired': instance.isRequired,
    };

SelectInput<T> _$SelectInputFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SelectInput<T>(
      id: json['id'] as String,
      maxCount: (json['maxCount'] as num?)?.toInt(),
      selectedValues:
          (json['selectedValues'] as List<dynamic>).map(fromJsonT).toList(),
      availibleValues:
          (json['availibleValues'] as List<dynamic>).map(fromJsonT).toList(),
      minCount: (json['minCount'] as num).toInt(),
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
      'selectedValues': instance.selectedValues.map(toJsonT).toList(),
      'availibleValues': instance.availibleValues.map(toJsonT).toList(),
      'minCount': instance.minCount,
      'fieldSettings': instance.fieldSettings,
    };

_$BooleanInputImpl _$$BooleanInputImplFromJson(Map<String, dynamic> json) =>
    _$BooleanInputImpl(
      id: json['id'] as String,
      value: json['value'] as bool?,
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
      'value': instance.value,
      'isRequired': instance.isRequired,
      'fieldSettings':
          BooleanFieldSettings.staticToJson(instance.fieldSettings),
      'runtimeType': instance.$type,
    };

_$InputsListInputImpl _$$InputsListInputImplFromJson(
        Map<String, dynamic> json) =>
    _$InputsListInputImpl(
      id: json['id'] as String,
      value: json['value'] == null
          ? const []
          : const InputsListConverter()
              .fromJson(json['value'] as List<Map<String, dynamic>>),
      isRequired: json['isRequired'] as bool? ?? false,
      fieldSettings: json['fieldSettings'] == null
          ? const MapFieldSettings()
          : MapFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$InputsListInputImplToJson(
        _$InputsListInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': const InputsListConverter().toJson(instance.value),
      'isRequired': instance.isRequired,
      'fieldSettings': MapFieldSettings.staticToJson(instance.fieldSettings),
      'runtimeType': instance.$type,
    };

_$NumInputImpl _$$NumInputImplFromJson(Map<String, dynamic> json) =>
    _$NumInputImpl(
      id: json['id'] as String,
      value: json['value'] as num?,
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
      'value': instance.value,
      'isRequired': instance.isRequired,
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

_$SelectStringInputImpl _$$SelectStringInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectStringInputImpl(
      id: json['id'] as String,
      maxCount: (json['maxCount'] as num?)?.toInt(),
      selectedValues: (json['selectedValues'] as List<dynamic>?)
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
      'selectedValues': instance.selectedValues,
      'availibleValues': instance.availibleValues,
      'minCount': instance.minCount,
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

_$StringInputImpl _$$StringInputImplFromJson(Map<String, dynamic> json) =>
    _$StringInputImpl(
      id: json['id'] as String,
      value: json['value'] as String?,
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
      'value': instance.value,
      'isRequired': instance.isRequired,
      'regexPattern': instance.regexPattern,
      'fieldSettings': StringFieldSettings.staticToJson(instance.fieldSettings),
      'runtimeType': instance.$type,
    };
