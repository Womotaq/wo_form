// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizSettingsSingleString _$QuizSettingsSingleStringFromJson(
  Map<String, dynamic> json,
) => QuizSettingsSingleString(
  correctAnswer: json['correctAnswer'] as String,
  score: json['score'] as num? ?? 1,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$QuizSettingsSingleStringToJson(
  QuizSettingsSingleString instance,
) => <String, dynamic>{
  'correctAnswer': instance.correctAnswer,
  'score': instance.score,
  'runtimeType': instance.$type,
};

_QuizSettingsTBR _$QuizSettingsTBRFromJson(Map<String, dynamic> json) =>
    _QuizSettingsTBR($type: json['runtimeType'] as String?);

Map<String, dynamic> _$QuizSettingsTBRToJson(_QuizSettingsTBR instance) =>
    <String, dynamic>{'runtimeType': instance.$type};
