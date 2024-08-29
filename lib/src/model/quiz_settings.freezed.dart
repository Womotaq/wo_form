// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizSettingsString _$QuizSettingsStringFromJson(Map<String, dynamic> json) {
  return QuizSettingsStringSingle.fromJson(json);
}

/// @nodoc
mixin _$QuizSettingsString {
  String get correctAnswer => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String correctAnswer, double score) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String correctAnswer, double score)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String correctAnswer, double score)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizSettingsStringSingle value) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizSettingsStringSingle value)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizSettingsStringSingle value)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this QuizSettingsString to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizSettingsString
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizSettingsStringCopyWith<QuizSettingsString> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSettingsStringCopyWith<$Res> {
  factory $QuizSettingsStringCopyWith(
          QuizSettingsString value, $Res Function(QuizSettingsString) then) =
      _$QuizSettingsStringCopyWithImpl<$Res, QuizSettingsString>;
  @useResult
  $Res call({String correctAnswer, double score});
}

/// @nodoc
class _$QuizSettingsStringCopyWithImpl<$Res, $Val extends QuizSettingsString>
    implements $QuizSettingsStringCopyWith<$Res> {
  _$QuizSettingsStringCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizSettingsString
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizSettingsStringSingleImplCopyWith<$Res>
    implements $QuizSettingsStringCopyWith<$Res> {
  factory _$$QuizSettingsStringSingleImplCopyWith(
          _$QuizSettingsStringSingleImpl value,
          $Res Function(_$QuizSettingsStringSingleImpl) then) =
      __$$QuizSettingsStringSingleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String correctAnswer, double score});
}

/// @nodoc
class __$$QuizSettingsStringSingleImplCopyWithImpl<$Res>
    extends _$QuizSettingsStringCopyWithImpl<$Res,
        _$QuizSettingsStringSingleImpl>
    implements _$$QuizSettingsStringSingleImplCopyWith<$Res> {
  __$$QuizSettingsStringSingleImplCopyWithImpl(
      _$QuizSettingsStringSingleImpl _value,
      $Res Function(_$QuizSettingsStringSingleImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizSettingsString
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = null,
    Object? score = null,
  }) {
    return _then(_$QuizSettingsStringSingleImpl(
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizSettingsStringSingleImpl extends QuizSettingsStringSingle {
  const _$QuizSettingsStringSingleImpl(
      {required this.correctAnswer, this.score = 1})
      : assert(score > 0, 'score must be positive'),
        super._();

  factory _$QuizSettingsStringSingleImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizSettingsStringSingleImplFromJson(json);

  @override
  final String correctAnswer;
  @override
  @JsonKey()
  final double score;

  @override
  String toString() {
    return 'QuizSettingsString.single(correctAnswer: $correctAnswer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSettingsStringSingleImpl &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, correctAnswer, score);

  /// Create a copy of QuizSettingsString
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSettingsStringSingleImplCopyWith<_$QuizSettingsStringSingleImpl>
      get copyWith => __$$QuizSettingsStringSingleImplCopyWithImpl<
          _$QuizSettingsStringSingleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String correctAnswer, double score) single,
  }) {
    return single(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String correctAnswer, double score)? single,
  }) {
    return single?.call(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String correctAnswer, double score)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(correctAnswer, score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizSettingsStringSingle value) single,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizSettingsStringSingle value)? single,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizSettingsStringSingle value)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizSettingsStringSingleImplToJson(
      this,
    );
  }
}

abstract class QuizSettingsStringSingle extends QuizSettingsString {
  const factory QuizSettingsStringSingle(
      {required final String correctAnswer,
      final double score}) = _$QuizSettingsStringSingleImpl;
  const QuizSettingsStringSingle._() : super._();

  factory QuizSettingsStringSingle.fromJson(Map<String, dynamic> json) =
      _$QuizSettingsStringSingleImpl.fromJson;

  @override
  String get correctAnswer;
  @override
  double get score;

  /// Create a copy of QuizSettingsString
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizSettingsStringSingleImplCopyWith<_$QuizSettingsStringSingleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

QuizSettingsNum _$QuizSettingsNumFromJson(Map<String, dynamic> json) {
  return QuizSettingsNumSingle.fromJson(json);
}

/// @nodoc
mixin _$QuizSettingsNum {
  num get correctAnswer => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num correctAnswer, double score) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num correctAnswer, double score)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num correctAnswer, double score)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizSettingsNumSingle value) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizSettingsNumSingle value)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizSettingsNumSingle value)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this QuizSettingsNum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizSettingsNum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizSettingsNumCopyWith<QuizSettingsNum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSettingsNumCopyWith<$Res> {
  factory $QuizSettingsNumCopyWith(
          QuizSettingsNum value, $Res Function(QuizSettingsNum) then) =
      _$QuizSettingsNumCopyWithImpl<$Res, QuizSettingsNum>;
  @useResult
  $Res call({num correctAnswer, double score});
}

/// @nodoc
class _$QuizSettingsNumCopyWithImpl<$Res, $Val extends QuizSettingsNum>
    implements $QuizSettingsNumCopyWith<$Res> {
  _$QuizSettingsNumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizSettingsNum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as num,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizSettingsNumSingleImplCopyWith<$Res>
    implements $QuizSettingsNumCopyWith<$Res> {
  factory _$$QuizSettingsNumSingleImplCopyWith(
          _$QuizSettingsNumSingleImpl value,
          $Res Function(_$QuizSettingsNumSingleImpl) then) =
      __$$QuizSettingsNumSingleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num correctAnswer, double score});
}

/// @nodoc
class __$$QuizSettingsNumSingleImplCopyWithImpl<$Res>
    extends _$QuizSettingsNumCopyWithImpl<$Res, _$QuizSettingsNumSingleImpl>
    implements _$$QuizSettingsNumSingleImplCopyWith<$Res> {
  __$$QuizSettingsNumSingleImplCopyWithImpl(_$QuizSettingsNumSingleImpl _value,
      $Res Function(_$QuizSettingsNumSingleImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizSettingsNum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = null,
    Object? score = null,
  }) {
    return _then(_$QuizSettingsNumSingleImpl(
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as num,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizSettingsNumSingleImpl extends QuizSettingsNumSingle {
  const _$QuizSettingsNumSingleImpl(
      {required this.correctAnswer, this.score = 1})
      : assert(score > 0, 'score must be positive'),
        super._();

  factory _$QuizSettingsNumSingleImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizSettingsNumSingleImplFromJson(json);

  @override
  final num correctAnswer;
  @override
  @JsonKey()
  final double score;

  @override
  String toString() {
    return 'QuizSettingsNum.single(correctAnswer: $correctAnswer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSettingsNumSingleImpl &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, correctAnswer, score);

  /// Create a copy of QuizSettingsNum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSettingsNumSingleImplCopyWith<_$QuizSettingsNumSingleImpl>
      get copyWith => __$$QuizSettingsNumSingleImplCopyWithImpl<
          _$QuizSettingsNumSingleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num correctAnswer, double score) single,
  }) {
    return single(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num correctAnswer, double score)? single,
  }) {
    return single?.call(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num correctAnswer, double score)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(correctAnswer, score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizSettingsNumSingle value) single,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizSettingsNumSingle value)? single,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizSettingsNumSingle value)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizSettingsNumSingleImplToJson(
      this,
    );
  }
}

abstract class QuizSettingsNumSingle extends QuizSettingsNum {
  const factory QuizSettingsNumSingle(
      {required final num correctAnswer,
      final double score}) = _$QuizSettingsNumSingleImpl;
  const QuizSettingsNumSingle._() : super._();

  factory QuizSettingsNumSingle.fromJson(Map<String, dynamic> json) =
      _$QuizSettingsNumSingleImpl.fromJson;

  @override
  num get correctAnswer;
  @override
  double get score;

  /// Create a copy of QuizSettingsNum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizSettingsNumSingleImplCopyWith<_$QuizSettingsNumSingleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuizSettingsDynamic<T> {
  T get correctAnswer => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T correctAnswer, double score) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T correctAnswer, double score)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T correctAnswer, double score)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizSettingsDynamic<T> value) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizSettingsDynamic<T> value)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizSettingsDynamic<T> value)? single,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of QuizSettingsDynamic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizSettingsDynamicCopyWith<T, QuizSettingsDynamic<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSettingsDynamicCopyWith<T, $Res> {
  factory $QuizSettingsDynamicCopyWith(QuizSettingsDynamic<T> value,
          $Res Function(QuizSettingsDynamic<T>) then) =
      _$QuizSettingsDynamicCopyWithImpl<T, $Res, QuizSettingsDynamic<T>>;
  @useResult
  $Res call({T correctAnswer, double score});
}

/// @nodoc
class _$QuizSettingsDynamicCopyWithImpl<T, $Res,
        $Val extends QuizSettingsDynamic<T>>
    implements $QuizSettingsDynamicCopyWith<T, $Res> {
  _$QuizSettingsDynamicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizSettingsDynamic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = freezed,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as T,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizSettingsDynamicImplCopyWith<T, $Res>
    implements $QuizSettingsDynamicCopyWith<T, $Res> {
  factory _$$QuizSettingsDynamicImplCopyWith(_$QuizSettingsDynamicImpl<T> value,
          $Res Function(_$QuizSettingsDynamicImpl<T>) then) =
      __$$QuizSettingsDynamicImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T correctAnswer, double score});
}

/// @nodoc
class __$$QuizSettingsDynamicImplCopyWithImpl<T, $Res>
    extends _$QuizSettingsDynamicCopyWithImpl<T, $Res,
        _$QuizSettingsDynamicImpl<T>>
    implements _$$QuizSettingsDynamicImplCopyWith<T, $Res> {
  __$$QuizSettingsDynamicImplCopyWithImpl(_$QuizSettingsDynamicImpl<T> _value,
      $Res Function(_$QuizSettingsDynamicImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of QuizSettingsDynamic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = freezed,
    Object? score = null,
  }) {
    return _then(_$QuizSettingsDynamicImpl<T>(
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as T,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$QuizSettingsDynamicImpl<T> extends _QuizSettingsDynamic<T> {
  const _$QuizSettingsDynamicImpl({required this.correctAnswer, this.score = 1})
      : assert(score > 0, 'score must be positive'),
        super._();

  @override
  final T correctAnswer;
  @override
  @JsonKey()
  final double score;

  @override
  String toString() {
    return 'QuizSettingsDynamic<$T>.single(correctAnswer: $correctAnswer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSettingsDynamicImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.correctAnswer, correctAnswer) &&
            (identical(other.score, score) || other.score == score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(correctAnswer), score);

  /// Create a copy of QuizSettingsDynamic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSettingsDynamicImplCopyWith<T, _$QuizSettingsDynamicImpl<T>>
      get copyWith => __$$QuizSettingsDynamicImplCopyWithImpl<T,
          _$QuizSettingsDynamicImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T correctAnswer, double score) single,
  }) {
    return single(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T correctAnswer, double score)? single,
  }) {
    return single?.call(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T correctAnswer, double score)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(correctAnswer, score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QuizSettingsDynamic<T> value) single,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QuizSettingsDynamic<T> value)? single,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QuizSettingsDynamic<T> value)? single,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class _QuizSettingsDynamic<T> extends QuizSettingsDynamic<T> {
  const factory _QuizSettingsDynamic(
      {required final T correctAnswer,
      final double score}) = _$QuizSettingsDynamicImpl<T>;
  const _QuizSettingsDynamic._() : super._();

  @override
  T get correctAnswer;
  @override
  double get score;

  /// Create a copy of QuizSettingsDynamic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizSettingsDynamicImplCopyWith<T, _$QuizSettingsDynamicImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
