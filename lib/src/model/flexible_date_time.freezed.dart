// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flexible_date_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
FlexibleDateTime _$FlexibleDateTimeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'fixed':
          return FixedDateTime.fromJson(
            json
          );
                case 'today':
          return TodayDate.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'FlexibleDateTime',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$FlexibleDateTime {



  /// Serializes this FlexibleDateTime to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlexibleDateTime);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FlexibleDateTime()';
}


}

/// @nodoc
class $FlexibleDateTimeCopyWith<$Res>  {
$FlexibleDateTimeCopyWith(FlexibleDateTime _, $Res Function(FlexibleDateTime) __);
}



/// @nodoc
@JsonSerializable()

class FixedDateTime extends FlexibleDateTime {
  const FixedDateTime({required this.date, final  String? $type}): $type = $type ?? 'fixed',super._();
  factory FixedDateTime.fromJson(Map<String, dynamic> json) => _$FixedDateTimeFromJson(json);

 final  DateTime date;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of FlexibleDateTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FixedDateTimeCopyWith<FixedDateTime> get copyWith => _$FixedDateTimeCopyWithImpl<FixedDateTime>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FixedDateTimeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FixedDateTime&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'FlexibleDateTime.fixed(date: $date)';
}


}

/// @nodoc
abstract mixin class $FixedDateTimeCopyWith<$Res> implements $FlexibleDateTimeCopyWith<$Res> {
  factory $FixedDateTimeCopyWith(FixedDateTime value, $Res Function(FixedDateTime) _then) = _$FixedDateTimeCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class _$FixedDateTimeCopyWithImpl<$Res>
    implements $FixedDateTimeCopyWith<$Res> {
  _$FixedDateTimeCopyWithImpl(this._self, this._then);

  final FixedDateTime _self;
  final $Res Function(FixedDateTime) _then;

/// Create a copy of FlexibleDateTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(FixedDateTime(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
@JsonSerializable()

class TodayDate extends FlexibleDateTime {
  const TodayDate({this.addYears, this.addMonths, this.addDays, this.addHours, this.addMinutes, this.replaceYears, this.replaceMonths, this.replaceDays, this.replaceWeekday, this.replaceHours, this.replaceMinutes, final  String? $type}): $type = $type ?? 'today',super._();
  factory TodayDate.fromJson(Map<String, dynamic> json) => _$TodayDateFromJson(json);

 final  int? addYears;
 final  int? addMonths;
 final  int? addDays;
 final  int? addHours;
 final  int? addMinutes;
 final  int? replaceYears;
 final  int? replaceMonths;
 final  int? replaceDays;
/// A number from 1 (Monday) to 7 (Sunday). In accordance with ISO 8601.
/// Applied after [replaceDays].
 final  int? replaceWeekday;
 final  int? replaceHours;
 final  int? replaceMinutes;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of FlexibleDateTime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayDateCopyWith<TodayDate> get copyWith => _$TodayDateCopyWithImpl<TodayDate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodayDateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayDate&&(identical(other.addYears, addYears) || other.addYears == addYears)&&(identical(other.addMonths, addMonths) || other.addMonths == addMonths)&&(identical(other.addDays, addDays) || other.addDays == addDays)&&(identical(other.addHours, addHours) || other.addHours == addHours)&&(identical(other.addMinutes, addMinutes) || other.addMinutes == addMinutes)&&(identical(other.replaceYears, replaceYears) || other.replaceYears == replaceYears)&&(identical(other.replaceMonths, replaceMonths) || other.replaceMonths == replaceMonths)&&(identical(other.replaceDays, replaceDays) || other.replaceDays == replaceDays)&&(identical(other.replaceWeekday, replaceWeekday) || other.replaceWeekday == replaceWeekday)&&(identical(other.replaceHours, replaceHours) || other.replaceHours == replaceHours)&&(identical(other.replaceMinutes, replaceMinutes) || other.replaceMinutes == replaceMinutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,addYears,addMonths,addDays,addHours,addMinutes,replaceYears,replaceMonths,replaceDays,replaceWeekday,replaceHours,replaceMinutes);

@override
String toString() {
  return 'FlexibleDateTime.today(addYears: $addYears, addMonths: $addMonths, addDays: $addDays, addHours: $addHours, addMinutes: $addMinutes, replaceYears: $replaceYears, replaceMonths: $replaceMonths, replaceDays: $replaceDays, replaceWeekday: $replaceWeekday, replaceHours: $replaceHours, replaceMinutes: $replaceMinutes)';
}


}

/// @nodoc
abstract mixin class $TodayDateCopyWith<$Res> implements $FlexibleDateTimeCopyWith<$Res> {
  factory $TodayDateCopyWith(TodayDate value, $Res Function(TodayDate) _then) = _$TodayDateCopyWithImpl;
@useResult
$Res call({
 int? addYears, int? addMonths, int? addDays, int? addHours, int? addMinutes, int? replaceYears, int? replaceMonths, int? replaceDays, int? replaceWeekday, int? replaceHours, int? replaceMinutes
});




}
/// @nodoc
class _$TodayDateCopyWithImpl<$Res>
    implements $TodayDateCopyWith<$Res> {
  _$TodayDateCopyWithImpl(this._self, this._then);

  final TodayDate _self;
  final $Res Function(TodayDate) _then;

/// Create a copy of FlexibleDateTime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? addYears = freezed,Object? addMonths = freezed,Object? addDays = freezed,Object? addHours = freezed,Object? addMinutes = freezed,Object? replaceYears = freezed,Object? replaceMonths = freezed,Object? replaceDays = freezed,Object? replaceWeekday = freezed,Object? replaceHours = freezed,Object? replaceMinutes = freezed,}) {
  return _then(TodayDate(
addYears: freezed == addYears ? _self.addYears : addYears // ignore: cast_nullable_to_non_nullable
as int?,addMonths: freezed == addMonths ? _self.addMonths : addMonths // ignore: cast_nullable_to_non_nullable
as int?,addDays: freezed == addDays ? _self.addDays : addDays // ignore: cast_nullable_to_non_nullable
as int?,addHours: freezed == addHours ? _self.addHours : addHours // ignore: cast_nullable_to_non_nullable
as int?,addMinutes: freezed == addMinutes ? _self.addMinutes : addMinutes // ignore: cast_nullable_to_non_nullable
as int?,replaceYears: freezed == replaceYears ? _self.replaceYears : replaceYears // ignore: cast_nullable_to_non_nullable
as int?,replaceMonths: freezed == replaceMonths ? _self.replaceMonths : replaceMonths // ignore: cast_nullable_to_non_nullable
as int?,replaceDays: freezed == replaceDays ? _self.replaceDays : replaceDays // ignore: cast_nullable_to_non_nullable
as int?,replaceWeekday: freezed == replaceWeekday ? _self.replaceWeekday : replaceWeekday // ignore: cast_nullable_to_non_nullable
as int?,replaceHours: freezed == replaceHours ? _self.replaceHours : replaceHours // ignore: cast_nullable_to_non_nullable
as int?,replaceMinutes: freezed == replaceMinutes ? _self.replaceMinutes : replaceMinutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
