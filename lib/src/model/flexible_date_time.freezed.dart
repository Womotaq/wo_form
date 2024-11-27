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
    case 'relative':
      return RelativeDate.fromJson(json);

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
    required TResult Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)
        relative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)?
        relative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)?
        relative,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixedDateTime value) fixed,
    required TResult Function(RelativeDate value) relative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(RelativeDate value)? relative,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(RelativeDate value)? relative,
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
    required TResult Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)
        relative,
  }) {
    return fixed(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)?
        relative,
  }) {
    return fixed?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)?
        relative,
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
    required TResult Function(RelativeDate value) relative,
  }) {
    return fixed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(RelativeDate value)? relative,
  }) {
    return fixed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(RelativeDate value)? relative,
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
abstract class _$$RelativeDateImplCopyWith<$Res> {
  factory _$$RelativeDateImplCopyWith(
          _$RelativeDateImpl value, $Res Function(_$RelativeDateImpl) then) =
      __$$RelativeDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int addYears,
      int addMonths,
      int addDays,
      int? replaceYears,
      int? replaceMonths,
      int? replaceDays});
}

/// @nodoc
class __$$RelativeDateImplCopyWithImpl<$Res>
    extends _$FlexibleDateTimeCopyWithImpl<$Res, _$RelativeDateImpl>
    implements _$$RelativeDateImplCopyWith<$Res> {
  __$$RelativeDateImplCopyWithImpl(
      _$RelativeDateImpl _value, $Res Function(_$RelativeDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addYears = null,
    Object? addMonths = null,
    Object? addDays = null,
    Object? replaceYears = freezed,
    Object? replaceMonths = freezed,
    Object? replaceDays = freezed,
  }) {
    return _then(_$RelativeDateImpl(
      addYears: null == addYears
          ? _value.addYears
          : addYears // ignore: cast_nullable_to_non_nullable
              as int,
      addMonths: null == addMonths
          ? _value.addMonths
          : addMonths // ignore: cast_nullable_to_non_nullable
              as int,
      addDays: null == addDays
          ? _value.addDays
          : addDays // ignore: cast_nullable_to_non_nullable
              as int,
      replaceYears: freezed == replaceYears
          ? _value.replaceYears
          : replaceYears // ignore: cast_nullable_to_non_nullable
              as int?,
      replaceMonths: freezed == replaceMonths
          ? _value.replaceMonths
          : replaceMonths // ignore: cast_nullable_to_non_nullable
              as int?,
      replaceDays: freezed == replaceDays
          ? _value.replaceDays
          : replaceDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelativeDateImpl extends RelativeDate {
  const _$RelativeDateImpl(
      {this.addYears = 0,
      this.addMonths = 0,
      this.addDays = 0,
      this.replaceYears,
      this.replaceMonths,
      this.replaceDays,
      final String? $type})
      : $type = $type ?? 'relative',
        super._();

  factory _$RelativeDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelativeDateImplFromJson(json);

  @override
  @JsonKey()
  final int addYears;
  @override
  @JsonKey()
  final int addMonths;
  @override
  @JsonKey()
  final int addDays;
  @override
  final int? replaceYears;
  @override
  final int? replaceMonths;
  @override
  final int? replaceDays;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FlexibleDateTime.relative(addYears: $addYears, addMonths: $addMonths, addDays: $addDays, replaceYears: $replaceYears, replaceMonths: $replaceMonths, replaceDays: $replaceDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelativeDateImpl &&
            (identical(other.addYears, addYears) ||
                other.addYears == addYears) &&
            (identical(other.addMonths, addMonths) ||
                other.addMonths == addMonths) &&
            (identical(other.addDays, addDays) || other.addDays == addDays) &&
            (identical(other.replaceYears, replaceYears) ||
                other.replaceYears == replaceYears) &&
            (identical(other.replaceMonths, replaceMonths) ||
                other.replaceMonths == replaceMonths) &&
            (identical(other.replaceDays, replaceDays) ||
                other.replaceDays == replaceDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, addYears, addMonths, addDays,
      replaceYears, replaceMonths, replaceDays);

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelativeDateImplCopyWith<_$RelativeDateImpl> get copyWith =>
      __$$RelativeDateImplCopyWithImpl<_$RelativeDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) fixed,
    required TResult Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)
        relative,
  }) {
    return relative(
        addYears, addMonths, addDays, replaceYears, replaceMonths, replaceDays);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? fixed,
    TResult? Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)?
        relative,
  }) {
    return relative?.call(
        addYears, addMonths, addDays, replaceYears, replaceMonths, replaceDays);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? fixed,
    TResult Function(int addYears, int addMonths, int addDays,
            int? replaceYears, int? replaceMonths, int? replaceDays)?
        relative,
    required TResult orElse(),
  }) {
    if (relative != null) {
      return relative(addYears, addMonths, addDays, replaceYears, replaceMonths,
          replaceDays);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FixedDateTime value) fixed,
    required TResult Function(RelativeDate value) relative,
  }) {
    return relative(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FixedDateTime value)? fixed,
    TResult? Function(RelativeDate value)? relative,
  }) {
    return relative?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FixedDateTime value)? fixed,
    TResult Function(RelativeDate value)? relative,
    required TResult orElse(),
  }) {
    if (relative != null) {
      return relative(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RelativeDateImplToJson(
      this,
    );
  }
}

abstract class RelativeDate extends FlexibleDateTime {
  const factory RelativeDate(
      {final int addYears,
      final int addMonths,
      final int addDays,
      final int? replaceYears,
      final int? replaceMonths,
      final int? replaceDays}) = _$RelativeDateImpl;
  const RelativeDate._() : super._();

  factory RelativeDate.fromJson(Map<String, dynamic> json) =
      _$RelativeDateImpl.fromJson;

  int get addYears;
  int get addMonths;
  int get addDays;
  int? get replaceYears;
  int? get replaceMonths;
  int? get replaceDays;

  /// Create a copy of FlexibleDateTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelativeDateImplCopyWith<_$RelativeDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
