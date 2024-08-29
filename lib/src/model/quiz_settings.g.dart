// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizSettingsStringSingleImpl _$$QuizSettingsStringSingleImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizSettingsStringSingleImpl(
      correctAnswer: json['correctAnswer'] as String,
      score: (json['score'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$$QuizSettingsStringSingleImplToJson(
        _$QuizSettingsStringSingleImpl instance) =>
    <String, dynamic>{
      'correctAnswer': instance.correctAnswer,
      'score': instance.score,
    };

_$QuizSettingsNumSingleImpl _$$QuizSettingsNumSingleImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizSettingsNumSingleImpl(
      correctAnswer: json['correctAnswer'] as num,
      score: (json['score'] as num?)?.toDouble() ?? 1,
    );

Map<String, dynamic> _$$QuizSettingsNumSingleImplToJson(
        _$QuizSettingsNumSingleImpl instance) =>
    <String, dynamic>{
      'correctAnswer': instance.correctAnswer,
      'score': instance.score,
    };
