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

QuizSettingsNum _$QuizSettingsNumFromJson(Map<String, dynamic> json) {
  return QuizSettingsNumSingle.fromJson(json);
}

/// @nodoc
mixin _$QuizSettingsNum {
  int get correctAnswer => throw _privateConstructorUsedError;
  num get score => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int correctAnswer, num score) single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int correctAnswer, num score)? single,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int correctAnswer, num score)? single,
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
  $Res call({int correctAnswer, num score});
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
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
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
  $Res call({int correctAnswer, num score});
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
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
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
  final int correctAnswer;
  @override
  @JsonKey()
  final num score;

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
    required TResult Function(int correctAnswer, num score) single,
  }) {
    return single(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int correctAnswer, num score)? single,
  }) {
    return single?.call(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int correctAnswer, num score)? single,
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
      {required final int correctAnswer,
      final num score}) = _$QuizSettingsNumSingleImpl;
  const QuizSettingsNumSingle._() : super._();

  factory QuizSettingsNumSingle.fromJson(Map<String, dynamic> json) =
      _$QuizSettingsNumSingleImpl.fromJson;

  @override
  int get correctAnswer;
  @override
  num get score;

  /// Create a copy of QuizSettingsNum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizSettingsNumSingleImplCopyWith<_$QuizSettingsNumSingleImpl>
      get copyWith => throw _privateConstructorUsedError;
}
