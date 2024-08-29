// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizSettingsNumSingleImpl _$$QuizSettingsNumSingleImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizSettingsNumSingleImpl(
      correctAnswer: json['correctAnswer'] as num,
      score: json['score'] as num? ?? 1,
    );

Map<String, dynamic> _$$QuizSettingsNumSingleImplToJson(
        _$QuizSettingsNumSingleImpl instance) =>
    <String, dynamic>{
      'correctAnswer': instance.correctAnswer,
      'score': instance.score,
    };
