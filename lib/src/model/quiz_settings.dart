import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_settings.freezed.dart';
part 'quiz_settings.g.dart';

// @freezed
// sealed class QuizSettingsString with _$QuizSettingsString {
//   @Assert('score > 0', 'score must be positive')
//   const factory QuizSettingsString.single({
//     required String correctAnswer,
//     @Default(1) double score,
//   }) = QuizSettingsStringSingle;

//   const QuizSettingsString._();

//   factory QuizSettingsString.fromJson(Map<String, dynamic> json) =>
//       _$QuizSettingsStringFromJson(json);

//   static Map<String, dynamic>? staticToJson(QuizSettingsString? object) =>
//       object?.toJson();
// }

@freezed
sealed class QuizSettings with _$QuizSettings {
  @Assert('score > 0', 'score must be positive')
  const factory QuizSettings.singleString({
    required String correctAnswer,
    @Default(1) num score,
  }) = QuizSettingsSingleString;

  const QuizSettings._();

  factory QuizSettings.fromJson(Map<String, dynamic> json) =>
      _$QuizSettingsFromJson(json);

  static Map<String, dynamic>? staticToJson(QuizSettings? object) =>
      object?.toJson();
}

// @freezed
// sealed class QuizSettingsDynamic<T> with _$QuizSettingsDynamic<T> {
//   @Assert('score > 0', 'score must be positive')
//   const factory QuizSettingsDynamic.single({
//     required T correctAnswer,
//     @Default(1) double score,
//   }) = _QuizSettingsDynamic<T>;

//   const QuizSettingsDynamic._();
// }
