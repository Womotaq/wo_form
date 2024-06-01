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
      value: _$JsonConverterFromJson<List<Map<String, dynamic>>,
              List<WoFormInputMixin>>(
          json['value'], const InputsListConverter().fromJson),
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
      'value': _$JsonConverterToJson<List<Map<String, dynamic>>,
              List<WoFormInputMixin>>(
          instance.value, const InputsListConverter().toJson),
      'isRequired': instance.isRequired,
      'fieldSettings': MapFieldSettings.staticToJson(instance.fieldSettings),
      'runtimeType': instance.$type,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

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
