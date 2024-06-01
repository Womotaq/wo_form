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
      value: _$nullableGenericFromJson(json['value'], fromJsonT),
      isRequired: json['isRequired'] as bool,
      fieldSettings: json['fieldSettings'] == null
          ? null
          : SelectFieldSettings<T>.fromJson(
              json['fieldSettings'] as Map<String, dynamic>,
              (value) => fromJsonT(value)),
    );

Map<String, dynamic> _$SelectInputToJson<T>(
  SelectInput<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'value': _$nullableGenericToJson(instance.value, toJsonT),
      'isRequired': instance.isRequired,
      'fieldSettings': instance.fieldSettings?.toJson(
        (value) => toJsonT(value),
      ),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

_$BooleanInputImpl _$$BooleanInputImplFromJson(Map<String, dynamic> json) =>
    _$BooleanInputImpl(
      id: json['id'] as String,
      value: json['value'] as bool? ?? false,
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
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

_$StringInputImpl _$$StringInputImplFromJson(Map<String, dynamic> json) =>
    _$StringInputImpl(
      id: json['id'] as String,
      value: json['value'] as String? ?? '',
      isRequired: json['isRequired'] as bool? ?? false,
      regexPattern:
          $enumDecodeNullable(_$RegexPatternEnumMap, json['regexPattern']),
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
      'regexPattern': _$RegexPatternEnumMap[instance.regexPattern],
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

const _$RegexPatternEnumMap = {
  RegexPattern.email: 'email',
  RegexPattern.password: 'password',
  RegexPattern.username: 'username',
};

_$SelectStringInputImpl _$$SelectStringInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectStringInputImpl(
      id: json['id'] as String,
      value: json['value'] as String?,
      isRequired: json['isRequired'] as bool? ?? false,
      fieldSettings: json['fieldSettings'] == null
          ? const SelectFieldSettings<String>()
          : SelectFieldSettings<String>.fromJson(
              json['fieldSettings'] as Map<String, dynamic>,
              (value) => value as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SelectStringInputImplToJson(
        _$SelectStringInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'isRequired': instance.isRequired,
      'fieldSettings': instance.fieldSettings.toJson(
        (value) => value,
      ),
      'runtimeType': instance.$type,
    };
