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
  addYears: (json['addYears'] as num?)?.toInt(),
  addMonths: (json['addMonths'] as num?)?.toInt(),
  addDays: (json['addDays'] as num?)?.toInt(),
  replaceYears: (json['replaceYears'] as num?)?.toInt(),
  replaceMonths: (json['replaceMonths'] as num?)?.toInt(),
  replaceDays: (json['replaceDays'] as num?)?.toInt(),
  replaceWeekday: (json['replaceWeekday'] as num?)?.toInt(),
  replaceHours: (json['replaceHours'] as num?)?.toInt(),
  replaceMinutes: (json['replaceMinutes'] as num?)?.toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$TodayDateToJson(TodayDate instance) => <String, dynamic>{
  'addYears': instance.addYears,
  'addMonths': instance.addMonths,
  'addDays': instance.addDays,
  'replaceYears': instance.replaceYears,
  'replaceMonths': instance.replaceMonths,
  'replaceDays': instance.replaceDays,
  'replaceWeekday': instance.replaceWeekday,
  'replaceHours': instance.replaceHours,
  'replaceMinutes': instance.replaceMinutes,
  'runtimeType': instance.$type,
};
