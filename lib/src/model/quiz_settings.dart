import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_settings.freezed.dart';
part 'quiz_settings.g.dart';

@freezed
sealed class QuizSettingsString with _$QuizSettingsString {
  @Assert('score > 0', 'score must be positive')
  const factory QuizSettingsString.single({
    required String correctAnswer,
    @Default(1) double score,
  }) = QuizSettingsStringSingle;

  const QuizSettingsString._();

  factory QuizSettingsString.fromJson(Map<String, dynamic> json) =>
      _$QuizSettingsStringFromJson(json);

  static Map<String, dynamic>? staticToJson(QuizSettingsString? object) =>
      object?.toJson();
}

@freezed
sealed class QuizSettingsNum with _$QuizSettingsNum {
  @Assert('score > 0', 'score must be positive')
  const factory QuizSettingsNum.single({
    required num correctAnswer,
    @Default(1) double score,
  }) = QuizSettingsNumSingle;

  const QuizSettingsNum._();

  factory QuizSettingsNum.fromJson(Map<String, dynamic> json) =>
      _$QuizSettingsNumFromJson(json);

  static Map<String, dynamic>? staticToJson(QuizSettingsNum? object) =>
      object?.toJson();
}

@freezed
sealed class QuizSettingsDynamic<T> with _$QuizSettingsDynamic<T> {
  @Assert('score > 0', 'score must be positive')
  const factory QuizSettingsDynamic.single({
    required T correctAnswer,
    @Default(1) double score,
  }) = _QuizSettingsDynamic<T>;

  const QuizSettingsDynamic._();
}
