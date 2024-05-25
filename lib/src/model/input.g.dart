// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BooleanInputImpl<T> _$$BooleanInputImplFromJson<T>(
        Map<String, dynamic> json) =>
    _$BooleanInputImpl<T>(
      id: json['id'] as String,
      value: json['value'] as bool? ?? false,
      isRequired: json['isRequired'] as bool? ?? false,
      fieldSettings: json['fieldSettings'] == null
          ? const BooleanFieldSettings()
          : BooleanFieldSettings.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BooleanInputImplToJson<T>(
        _$BooleanInputImpl<T> instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'isRequired': instance.isRequired,
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

_$SelectInputImpl<T> _$$SelectInputImplFromJson<T>(Map<String, dynamic> json) =>
    _$SelectInputImpl<T>(
      id: json['id'] as String,
      value: UnknownTypeConverter<T?>()
          .fromJson(json['value'] as Map<String, String>?),
      isRequired: json['isRequired'] as bool? ?? false,
      fieldSettings: json['fieldSettings'] == null
          ? null
          : SelectFieldSettings<T>.fromJson(
              json['fieldSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SelectInputImplToJson<T>(
        _$SelectInputImpl<T> instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': UnknownTypeConverter<T?>().toJson(instance.value),
      'isRequired': instance.isRequired,
      'fieldSettings': instance.fieldSettings,
      'runtimeType': instance.$type,
    };

_$StringInputImpl<T> _$$StringInputImplFromJson<T>(Map<String, dynamic> json) =>
    _$StringInputImpl<T>(
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

Map<String, dynamic> _$$StringInputImplToJson<T>(
        _$StringInputImpl<T> instance) =>
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
