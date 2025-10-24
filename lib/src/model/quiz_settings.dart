import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wo_form/src/utils/extensions.dart';

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

//   factory QuizSettingsString.fromJson(Json json) =>
//       _$QuizSettingsStringFromJson(json);

// }

@freezed
sealed class QuizSettings with _$QuizSettings {
  @Assert('score > 0', 'score must be positive')
  const factory QuizSettings.singleString({
    required String correctAnswer,
    @Default(1) num score,
  }) = QuizSettingsSingleString;

  /// If there is only one request type, the key 'type' won't be generated
  /// in the json. This is temporary, until a new QuizSettings type appears
  // ignore: unused_element, non_constant_identifier_names
  const factory QuizSettings._TBR() = _QuizSettingsTBR;

  const QuizSettings._();

  factory QuizSettings.fromJson(Json json) => _$QuizSettingsFromJson(json);
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
