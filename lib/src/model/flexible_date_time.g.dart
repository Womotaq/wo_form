// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexible_date_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixedDateTimeImpl _$$FixedDateTimeImplFromJson(Map<String, dynamic> json) =>
    _$FixedDateTimeImpl(
      date: DateTime.parse(json['date'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FixedDateTimeImplToJson(_$FixedDateTimeImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$RelativeDateImpl _$$RelativeDateImplFromJson(Map<String, dynamic> json) =>
    _$RelativeDateImpl(
      addYears: (json['addYears'] as num?)?.toInt() ?? 0,
      addMonths: (json['addMonths'] as num?)?.toInt() ?? 0,
      addDays: (json['addDays'] as num?)?.toInt() ?? 0,
      replaceYears: (json['replaceYears'] as num?)?.toInt(),
      replaceMonths: (json['replaceMonths'] as num?)?.toInt(),
      replaceDays: (json['replaceDays'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$RelativeDateImplToJson(_$RelativeDateImpl instance) =>
    <String, dynamic>{
      'addYears': instance.addYears,
      'addMonths': instance.addMonths,
      'addDays': instance.addDays,
      'replaceYears': instance.replaceYears,
      'replaceMonths': instance.replaceMonths,
      'replaceDays': instance.replaceDays,
      'runtimeType': instance.$type,
    };
