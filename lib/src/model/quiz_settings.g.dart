// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizSettingsSingleStringImpl _$$QuizSettingsSingleStringImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizSettingsSingleStringImpl(
      correctAnswer: json['correctAnswer'] as String,
      score: json['score'] as num? ?? 1,
    );

Map<String, dynamic> _$$QuizSettingsSingleStringImplToJson(
        _$QuizSettingsSingleStringImpl instance) =>
    <String, dynamic>{
      'correctAnswer': instance.correctAnswer,
      'score': instance.score,
    };
