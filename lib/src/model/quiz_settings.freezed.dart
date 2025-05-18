// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
QuizSettings _$QuizSettingsFromJson(Map<String, dynamic> json) {
  return QuizSettingsSingleString.fromJson(json);
}

/// @nodoc
mixin _$QuizSettings {
  String get correctAnswer;
  num get score;

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuizSettingsCopyWith<QuizSettings> get copyWith =>
      _$QuizSettingsCopyWithImpl<QuizSettings>(
          this as QuizSettings, _$identity);

  /// Serializes this QuizSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuizSettings &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, correctAnswer, score);

  @override
  String toString() {
    return 'QuizSettings(correctAnswer: $correctAnswer, score: $score)';
  }
}

/// @nodoc
abstract mixin class $QuizSettingsCopyWith<$Res> {
  factory $QuizSettingsCopyWith(
          QuizSettings value, $Res Function(QuizSettings) _then) =
      _$QuizSettingsCopyWithImpl;
  @useResult
  $Res call({String correctAnswer, num score});
}

/// @nodoc
class _$QuizSettingsCopyWithImpl<$Res> implements $QuizSettingsCopyWith<$Res> {
  _$QuizSettingsCopyWithImpl(this._self, this._then);

  final QuizSettings _self;
  final $Res Function(QuizSettings) _then;

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? correctAnswer = null,
    Object? score = null,
  }) {
    return _then(_self.copyWith(
      correctAnswer: null == correctAnswer
          ? _self.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class QuizSettingsSingleString extends QuizSettings {
  const QuizSettingsSingleString({required this.correctAnswer, this.score = 1})
      : assert(score > 0, 'score must be positive'),
        super._();
  factory QuizSettingsSingleString.fromJson(Map<String, dynamic> json) =>
      _$QuizSettingsSingleStringFromJson(json);

  @override
  final String correctAnswer;
  @override
  @JsonKey()
  final num score;

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuizSettingsSingleStringCopyWith<QuizSettingsSingleString> get copyWith =>
      _$QuizSettingsSingleStringCopyWithImpl<QuizSettingsSingleString>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuizSettingsSingleStringToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is QuizSettingsSingleString &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, correctAnswer, score);

  @override
  String toString() {
    return 'QuizSettings.singleString(correctAnswer: $correctAnswer, score: $score)';
  }
}

/// @nodoc
abstract mixin class $QuizSettingsSingleStringCopyWith<$Res>
    implements $QuizSettingsCopyWith<$Res> {
  factory $QuizSettingsSingleStringCopyWith(QuizSettingsSingleString value,
          $Res Function(QuizSettingsSingleString) _then) =
      _$QuizSettingsSingleStringCopyWithImpl;
  @override
  @useResult
  $Res call({String correctAnswer, num score});
}

/// @nodoc
class _$QuizSettingsSingleStringCopyWithImpl<$Res>
    implements $QuizSettingsSingleStringCopyWith<$Res> {
  _$QuizSettingsSingleStringCopyWithImpl(this._self, this._then);

  final QuizSettingsSingleString _self;
  final $Res Function(QuizSettingsSingleString) _then;

  /// Create a copy of QuizSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? correctAnswer = null,
    Object? score = null,
  }) {
    return _then(QuizSettingsSingleString(
      correctAnswer: null == correctAnswer
          ? _self.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _self.score
          : score // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
