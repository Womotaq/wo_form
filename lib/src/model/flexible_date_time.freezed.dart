// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flexible_date_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlexibleDateTime _$FlexibleDateTimeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fixed':
      return FixedDateTime.fromJson(json);
    case 'today':
      return TodayDateTime.fromJson(json);
    case 'add':
      return AddToTodayDateTime.fromJson(json);
    case 'replace':
      return ReplaceFromTodayDateTime.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FlexibleDateTime',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FlexibleDateTime {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fixed,
    required TResult Function() today,
    required TResult Function(
            int years, int months, int days, int hours, int minutes)
        add,
    required TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)
        replace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function()? today,
    TResult? Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult? Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function()? today,
    TResult Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixedDateTime value) fixed,
    required TResult Function(TodayDateTime value) today,
    required TResult Function(AddToTodayDateTime value) add,
    required TResult Function(ReplaceFromTodayDateTime value) replace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(TodayDateTime value)? today,
    TResult? Function(AddToTodayDateTime value)? add,
    TResult? Function(ReplaceFromTodayDateTime value)? replace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(TodayDateTime value)? today,
    TResult Function(AddToTodayDateTime value)? add,
    TResult Function(ReplaceFromTodayDateTime value)? replace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FlexibleDateTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlexibleDateTimeCopyWith<$Res> {
  factory $FlexibleDateTimeCopyWith(
          FlexibleDateTime value, $Res Function(FlexibleDateTime) then) =
      _$FlexibleDateTimeCopyWithImpl<$Res, FlexibleDateTime>;
}

/// @nodoc
class _$FlexibleDateTimeCopyWithImpl<$Res, $Val extends FlexibleDateTime>
    implements $FlexibleDateTimeCopyWith<$Res> {
  _$FlexibleDateTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FixedDateTimeImplCopyWith<$Res> {
  factory _$$FixedDateTimeImplCopyWith(
          _$FixedDateTimeImpl value, $Res Function(_$FixedDateTimeImpl) then) =
      __$$FixedDateTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$FixedDateTimeImplCopyWithImpl<$Res>
    extends _$FlexibleDateTimeCopyWithImpl<$Res, _$FixedDateTimeImpl>
    implements _$$FixedDateTimeImplCopyWith<$Res> {
  __$$FixedDateTimeImplCopyWithImpl(
      _$FixedDateTimeImpl _value, $Res Function(_$FixedDateTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$FixedDateTimeImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FixedDateTimeImpl extends FixedDateTime {
  const _$FixedDateTimeImpl({required this.date, final String? $type})
      : $type = $type ?? 'fixed',
        super._();

  factory _$FixedDateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FixedDateTimeImplFromJson(json);

  @override
  final DateTime date;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FlexibleDateTime.fixed(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixedDateTimeImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FixedDateTimeImplCopyWith<_$FixedDateTimeImpl> get copyWith =>
      __$$FixedDateTimeImplCopyWithImpl<_$FixedDateTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fixed,
    required TResult Function() today,
    required TResult Function(
            int years, int months, int days, int hours, int minutes)
        add,
    required TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)
        replace,
  }) {
    return fixed(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function()? today,
    TResult? Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult? Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
  }) {
    return fixed?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function()? today,
    TResult Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixedDateTime value) fixed,
    required TResult Function(TodayDateTime value) today,
    required TResult Function(AddToTodayDateTime value) add,
    required TResult Function(ReplaceFromTodayDateTime value) replace,
  }) {
    return fixed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(TodayDateTime value)? today,
    TResult? Function(AddToTodayDateTime value)? add,
    TResult? Function(ReplaceFromTodayDateTime value)? replace,
  }) {
    return fixed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(TodayDateTime value)? today,
    TResult Function(AddToTodayDateTime value)? add,
    TResult Function(ReplaceFromTodayDateTime value)? replace,
    required TResult orElse(),
  }) {
    if (fixed != null) {
      return fixed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FixedDateTimeImplToJson(
      this,
    );
  }
}

abstract class FixedDateTime extends FlexibleDateTime {
  const factory FixedDateTime({required final DateTime date}) =
      _$FixedDateTimeImpl;
  const FixedDateTime._() : super._();

  factory FixedDateTime.fromJson(Map<String, dynamic> json) =
      _$FixedDateTimeImpl.fromJson;

  DateTime get date;

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FixedDateTimeImplCopyWith<_$FixedDateTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodayDateTimeImplCopyWith<$Res> {
  factory _$$TodayDateTimeImplCopyWith(
          _$TodayDateTimeImpl value, $Res Function(_$TodayDateTimeImpl) then) =
      __$$TodayDateTimeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodayDateTimeImplCopyWithImpl<$Res>
    extends _$FlexibleDateTimeCopyWithImpl<$Res, _$TodayDateTimeImpl>
    implements _$$TodayDateTimeImplCopyWith<$Res> {
  __$$TodayDateTimeImplCopyWithImpl(
      _$TodayDateTimeImpl _value, $Res Function(_$TodayDateTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TodayDateTimeImpl extends TodayDateTime {
  const _$TodayDateTimeImpl({final String? $type})
      : $type = $type ?? 'today',
        super._();

  factory _$TodayDateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayDateTimeImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FlexibleDateTime.today()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodayDateTimeImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fixed,
    required TResult Function() today,
    required TResult Function(
            int years, int months, int days, int hours, int minutes)
        add,
    required TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)
        replace,
  }) {
    return today();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function()? today,
    TResult? Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult? Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
  }) {
    return today?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function()? today,
    TResult Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
    required TResult orElse(),
  }) {
    if (today != null) {
      return today();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixedDateTime value) fixed,
    required TResult Function(TodayDateTime value) today,
    required TResult Function(AddToTodayDateTime value) add,
    required TResult Function(ReplaceFromTodayDateTime value) replace,
  }) {
    return today(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(TodayDateTime value)? today,
    TResult? Function(AddToTodayDateTime value)? add,
    TResult? Function(ReplaceFromTodayDateTime value)? replace,
  }) {
    return today?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(TodayDateTime value)? today,
    TResult Function(AddToTodayDateTime value)? add,
    TResult Function(ReplaceFromTodayDateTime value)? replace,
    required TResult orElse(),
  }) {
    if (today != null) {
      return today(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayDateTimeImplToJson(
      this,
    );
  }
}

abstract class TodayDateTime extends FlexibleDateTime {
  const factory TodayDateTime() = _$TodayDateTimeImpl;
  const TodayDateTime._() : super._();

  factory TodayDateTime.fromJson(Map<String, dynamic> json) =
      _$TodayDateTimeImpl.fromJson;
}

/// @nodoc
abstract class _$$AddToTodayDateTimeImplCopyWith<$Res> {
  factory _$$AddToTodayDateTimeImplCopyWith(_$AddToTodayDateTimeImpl value,
          $Res Function(_$AddToTodayDateTimeImpl) then) =
      __$$AddToTodayDateTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int years, int months, int days, int hours, int minutes});
}

/// @nodoc
class __$$AddToTodayDateTimeImplCopyWithImpl<$Res>
    extends _$FlexibleDateTimeCopyWithImpl<$Res, _$AddToTodayDateTimeImpl>
    implements _$$AddToTodayDateTimeImplCopyWith<$Res> {
  __$$AddToTodayDateTimeImplCopyWithImpl(_$AddToTodayDateTimeImpl _value,
      $Res Function(_$AddToTodayDateTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = null,
    Object? months = null,
    Object? days = null,
    Object? hours = null,
    Object? minutes = null,
  }) {
    return _then(_$AddToTodayDateTimeImpl(
      years: null == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as int,
      months: null == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToTodayDateTimeImpl extends AddToTodayDateTime {
  const _$AddToTodayDateTimeImpl(
      {this.years = 0,
      this.months = 0,
      this.days = 0,
      this.hours = 0,
      this.minutes = 0,
      final String? $type})
      : $type = $type ?? 'add',
        super._();

  factory _$AddToTodayDateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToTodayDateTimeImplFromJson(json);

  @override
  @JsonKey()
  final int years;
  @override
  @JsonKey()
  final int months;
  @override
  @JsonKey()
  final int days;
  @override
  @JsonKey()
  final int hours;
  @override
  @JsonKey()
  final int minutes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FlexibleDateTime.add(years: $years, months: $months, days: $days, hours: $hours, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToTodayDateTimeImpl &&
            (identical(other.years, years) || other.years == years) &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, years, months, days, hours, minutes);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToTodayDateTimeImplCopyWith<_$AddToTodayDateTimeImpl> get copyWith =>
      __$$AddToTodayDateTimeImplCopyWithImpl<_$AddToTodayDateTimeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fixed,
    required TResult Function() today,
    required TResult Function(
            int years, int months, int days, int hours, int minutes)
        add,
    required TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)
        replace,
  }) {
    return add(years, months, days, hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function()? today,
    TResult? Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult? Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
  }) {
    return add?.call(years, months, days, hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function()? today,
    TResult Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(years, months, days, hours, minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixedDateTime value) fixed,
    required TResult Function(TodayDateTime value) today,
    required TResult Function(AddToTodayDateTime value) add,
    required TResult Function(ReplaceFromTodayDateTime value) replace,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(TodayDateTime value)? today,
    TResult? Function(AddToTodayDateTime value)? add,
    TResult? Function(ReplaceFromTodayDateTime value)? replace,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(TodayDateTime value)? today,
    TResult Function(AddToTodayDateTime value)? add,
    TResult Function(ReplaceFromTodayDateTime value)? replace,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToTodayDateTimeImplToJson(
      this,
    );
  }
}

abstract class AddToTodayDateTime extends FlexibleDateTime {
  const factory AddToTodayDateTime(
      {final int years,
      final int months,
      final int days,
      final int hours,
      final int minutes}) = _$AddToTodayDateTimeImpl;
  const AddToTodayDateTime._() : super._();

  factory AddToTodayDateTime.fromJson(Map<String, dynamic> json) =
      _$AddToTodayDateTimeImpl.fromJson;

  int get years;
  int get months;
  int get days;
  int get hours;
  int get minutes;

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToTodayDateTimeImplCopyWith<_$AddToTodayDateTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReplaceFromTodayDateTimeImplCopyWith<$Res> {
  factory _$$ReplaceFromTodayDateTimeImplCopyWith(
          _$ReplaceFromTodayDateTimeImpl value,
          $Res Function(_$ReplaceFromTodayDateTimeImpl) then) =
      __$$ReplaceFromTodayDateTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? years, int? months, int? days, int? hours, int? minutes});
}

/// @nodoc
class __$$ReplaceFromTodayDateTimeImplCopyWithImpl<$Res>
    extends _$FlexibleDateTimeCopyWithImpl<$Res, _$ReplaceFromTodayDateTimeImpl>
    implements _$$ReplaceFromTodayDateTimeImplCopyWith<$Res> {
  __$$ReplaceFromTodayDateTimeImplCopyWithImpl(
      _$ReplaceFromTodayDateTimeImpl _value,
      $Res Function(_$ReplaceFromTodayDateTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? years = freezed,
    Object? months = freezed,
    Object? days = freezed,
    Object? hours = freezed,
    Object? minutes = freezed,
  }) {
    return _then(_$ReplaceFromTodayDateTimeImpl(
      years: freezed == years
          ? _value.years
          : years // ignore: cast_nullable_to_non_nullable
              as int?,
      months: freezed == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int?,
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      hours: freezed == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int?,
      minutes: freezed == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplaceFromTodayDateTimeImpl extends ReplaceFromTodayDateTime {
  const _$ReplaceFromTodayDateTimeImpl(
      {this.years,
      this.months,
      this.days,
      this.hours,
      this.minutes,
      final String? $type})
      : $type = $type ?? 'replace',
        super._();

  factory _$ReplaceFromTodayDateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplaceFromTodayDateTimeImplFromJson(json);

  @override
  final int? years;
  @override
  final int? months;
  @override
  final int? days;
  @override
  final int? hours;
  @override
  final int? minutes;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FlexibleDateTime.replace(years: $years, months: $months, days: $days, hours: $hours, minutes: $minutes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplaceFromTodayDateTimeImpl &&
            (identical(other.years, years) || other.years == years) &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, years, months, days, hours, minutes);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplaceFromTodayDateTimeImplCopyWith<_$ReplaceFromTodayDateTimeImpl>
      get copyWith => __$$ReplaceFromTodayDateTimeImplCopyWithImpl<
          _$ReplaceFromTodayDateTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fixed,
    required TResult Function() today,
    required TResult Function(
            int years, int months, int days, int hours, int minutes)
        add,
    required TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)
        replace,
  }) {
    return replace(years, months, days, hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function()? today,
    TResult? Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult? Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
  }) {
    return replace?.call(years, months, days, hours, minutes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function()? today,
    TResult Function(int years, int months, int days, int hours, int minutes)?
        add,
    TResult Function(
            int? years, int? months, int? days, int? hours, int? minutes)?
        replace,
    required TResult orElse(),
  }) {
    if (replace != null) {
      return replace(years, months, days, hours, minutes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixedDateTime value) fixed,
    required TResult Function(TodayDateTime value) today,
    required TResult Function(AddToTodayDateTime value) add,
    required TResult Function(ReplaceFromTodayDateTime value) replace,
  }) {
    return replace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(TodayDateTime value)? today,
    TResult? Function(AddToTodayDateTime value)? add,
    TResult? Function(ReplaceFromTodayDateTime value)? replace,
  }) {
    return replace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(TodayDateTime value)? today,
    TResult Function(AddToTodayDateTime value)? add,
    TResult Function(ReplaceFromTodayDateTime value)? replace,
    required TResult orElse(),
  }) {
    if (replace != null) {
      return replace(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplaceFromTodayDateTimeImplToJson(
      this,
    );
  }
}

abstract class ReplaceFromTodayDateTime extends FlexibleDateTime {
  const factory ReplaceFromTodayDateTime(
      {final int? years,
      final int? months,
      final int? days,
      final int? hours,
      final int? minutes}) = _$ReplaceFromTodayDateTimeImpl;
  const ReplaceFromTodayDateTime._() : super._();

  factory ReplaceFromTodayDateTime.fromJson(Map<String, dynamic> json) =
      _$ReplaceFromTodayDateTimeImpl.fromJson;

  int? get years;
  int? get months;
  int? get days;
  int? get hours;
  int? get minutes;

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplaceFromTodayDateTimeImplCopyWith<_$ReplaceFromTodayDateTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
