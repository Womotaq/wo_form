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

QuizSettings _$QuizSettingsFromJson(Map<String, dynamic> json) {
  return QuizSettingsSingleString.fromJson(json);
}

/// @nodoc
mixin _$QuizSettings {
  String get correctAnswer => throw _privateConstructorUsedError;
  num get score => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String correctAnswer, num score) singleString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String correctAnswer, num score)? singleString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String correctAnswer, num score)? singleString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizSettingsSingleString value) singleString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizSettingsSingleString value)? singleString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizSettingsSingleString value)? singleString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this QuizSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizSettingsCopyWith<QuizSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSettingsCopyWith<$Res> {
  factory $QuizSettingsCopyWith(
          QuizSettings value, $Res Function(QuizSettings) then) =
      _$QuizSettingsCopyWithImpl<$Res, QuizSettings>;
  @useResult
  $Res call({String correctAnswer, num score});
}

/// @nodoc
class _$QuizSettingsCopyWithImpl<$Res, $Val extends QuizSettings>
    implements $QuizSettingsCopyWith<$Res> {
  _$QuizSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizSettings
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
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizSettingsSingleStringImplCopyWith<$Res>
    implements $QuizSettingsCopyWith<$Res> {
  factory _$$QuizSettingsSingleStringImplCopyWith(
          _$QuizSettingsSingleStringImpl value,
          $Res Function(_$QuizSettingsSingleStringImpl) then) =
      __$$QuizSettingsSingleStringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String correctAnswer, num score});
}

/// @nodoc
class __$$QuizSettingsSingleStringImplCopyWithImpl<$Res>
    extends _$QuizSettingsCopyWithImpl<$Res, _$QuizSettingsSingleStringImpl>
    implements _$$QuizSettingsSingleStringImplCopyWith<$Res> {
  __$$QuizSettingsSingleStringImplCopyWithImpl(
      _$QuizSettingsSingleStringImpl _value,
      $Res Function(_$QuizSettingsSingleStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = null,
    Object? score = null,
  }) {
    return _then(_$QuizSettingsSingleStringImpl(
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizSettingsSingleStringImpl extends QuizSettingsSingleString {
  const _$QuizSettingsSingleStringImpl(
      {required this.correctAnswer, this.score = 1})
      : assert(score > 0, 'score must be positive'),
        super._();

  factory _$QuizSettingsSingleStringImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizSettingsSingleStringImplFromJson(json);

  @override
  final String correctAnswer;
  @override
  @JsonKey()
  final num score;

  @override
  String toString() {
    return 'QuizSettings.singleString(correctAnswer: $correctAnswer, score: $score)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSettingsSingleStringImpl &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, correctAnswer, score);

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSettingsSingleStringImplCopyWith<_$QuizSettingsSingleStringImpl>
      get copyWith => __$$QuizSettingsSingleStringImplCopyWithImpl<
          _$QuizSettingsSingleStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String correctAnswer, num score) singleString,
  }) {
    return singleString(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String correctAnswer, num score)? singleString,
  }) {
    return singleString?.call(correctAnswer, score);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String correctAnswer, num score)? singleString,
    required TResult orElse(),
  }) {
    if (singleString != null) {
      return singleString(correctAnswer, score);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuizSettingsSingleString value) singleString,
  }) {
    return singleString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuizSettingsSingleString value)? singleString,
  }) {
    return singleString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuizSettingsSingleString value)? singleString,
    required TResult orElse(),
  }) {
    if (singleString != null) {
      return singleString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizSettingsSingleStringImplToJson(
      this,
    );
  }
}

abstract class QuizSettingsSingleString extends QuizSettings {
  const factory QuizSettingsSingleString(
      {required final String correctAnswer,
      final num score}) = _$QuizSettingsSingleStringImpl;
  const QuizSettingsSingleString._() : super._();

  factory QuizSettingsSingleString.fromJson(Map<String, dynamic> json) =
      _$QuizSettingsSingleStringImpl.fromJson;

  @override
  String get correctAnswer;
  @override
  num get score;

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizSettingsSingleStringImplCopyWith<_$QuizSettingsSingleStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}
