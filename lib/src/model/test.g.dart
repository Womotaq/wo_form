// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypedValues<T> _$TypedValuesFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    TypedValues<T>(
      values: (json['values'] as List<dynamic>).map(fromJsonT).toList(),
      fieldSettings: json['fieldSettings'] == null
          ? null
          : SelectFieldSettings<T>.fromJson(
              json['fieldSettings'] as Map<String, dynamic>,
              (value) => fromJsonT(value)),
    );

Map<String, dynamic> _$TypedValuesToJson<T>(
  TypedValues<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'values': instance.values.map(toJsonT).toList(),
      'fieldSettings': instance.fieldSettings?.toJson(
        (value) => toJsonT(value),
      ),
    };
