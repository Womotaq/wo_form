// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexible_date_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FixedDateTime _$FixedDateTimeFromJson(Map<String, dynamic> json) =>
    FixedDateTime(
      date: DateTime.parse(json['date'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$FixedDateTimeToJson(FixedDateTime instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'runtimeType': instance.$type,
    };

TodayDate _$TodayDateFromJson(Map<String, dynamic> json) => TodayDate(
      addYears: (json['addYears'] as num?)?.toInt() ?? 0,
      addMonths: (json['addMonths'] as num?)?.toInt() ?? 0,
      addDays: (json['addDays'] as num?)?.toInt() ?? 0,
      replaceYears: (json['replaceYears'] as num?)?.toInt(),
      replaceMonths: (json['replaceMonths'] as num?)?.toInt(),
      replaceDays: (json['replaceDays'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$TodayDateToJson(TodayDate instance) => <String, dynamic>{
      'addYears': instance.addYears,
      'addMonths': instance.addMonths,
      'addDays': instance.addDays,
      'replaceYears': instance.replaceYears,
      'replaceMonths': instance.replaceMonths,
      'replaceDays': instance.replaceDays,
      'runtimeType': instance.$type,
    };
