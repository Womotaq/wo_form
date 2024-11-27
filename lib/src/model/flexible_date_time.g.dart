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

_$TodayDateTimeImpl _$$TodayDateTimeImplFromJson(Map<String, dynamic> json) =>
    _$TodayDateTimeImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TodayDateTimeImplToJson(_$TodayDateTimeImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$AddToTodayDateTimeImpl _$$AddToTodayDateTimeImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToTodayDateTimeImpl(
      years: (json['years'] as num?)?.toInt() ?? 0,
      months: (json['months'] as num?)?.toInt() ?? 0,
      days: (json['days'] as num?)?.toInt() ?? 0,
      hours: (json['hours'] as num?)?.toInt() ?? 0,
      minutes: (json['minutes'] as num?)?.toInt() ?? 0,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AddToTodayDateTimeImplToJson(
        _$AddToTodayDateTimeImpl instance) =>
    <String, dynamic>{
      'years': instance.years,
      'months': instance.months,
      'days': instance.days,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'runtimeType': instance.$type,
    };

_$ReplaceFromTodayDateTimeImpl _$$ReplaceFromTodayDateTimeImplFromJson(
        Map<String, dynamic> json) =>
    _$ReplaceFromTodayDateTimeImpl(
      years: (json['years'] as num?)?.toInt(),
      months: (json['months'] as num?)?.toInt(),
      days: (json['days'] as num?)?.toInt(),
      hours: (json['hours'] as num?)?.toInt(),
      minutes: (json['minutes'] as num?)?.toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ReplaceFromTodayDateTimeImplToJson(
        _$ReplaceFromTodayDateTimeImpl instance) =>
    <String, dynamic>{
      'years': instance.years,
      'months': instance.months,
      'days': instance.days,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'runtimeType': instance.$type,
    };
