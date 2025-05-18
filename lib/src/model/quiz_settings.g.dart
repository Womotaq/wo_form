// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizSettingsSingleString _$QuizSettingsSingleStringFromJson(
        Map<String, dynamic> json) =>
    QuizSettingsSingleString(
      correctAnswer: json['correctAnswer'] as String,
      score: json['score'] as num? ?? 1,
    );

Map<String, dynamic> _$QuizSettingsSingleStringToJson(
        QuizSettingsSingleString instance) =>
    <String, dynamic>{
      'correctAnswer': instance.correctAnswer,
      'score': instance.score,
    };
