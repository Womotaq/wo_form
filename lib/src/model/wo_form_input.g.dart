// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectInput<T> _$SelectInputFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    SelectInput<T>(
      id: json['id'] as String,
      maxCount: (json['maxCount'] as num?)?.toInt(),
      minCount: (json['minCount'] as num).toInt(),
      initialValues:
          (json['initialValues'] as List<dynamic>?)?.map(fromJsonT).toList(),
      availibleValues:
          (json['availibleValues'] as List<dynamic>).map(fromJsonT).toList(),
      idsOfAvailibleValues: (json['idsOfAvailibleValues'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      uiSettings: json['uiSettings'] == null
          ? null
          : SelectInputUiSettings<T>.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      quizSettings: json['quizSettings'] == null
          ? null
          : QuizSettings.fromJson(json['quizSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelectInputToJson<T>(
  SelectInput<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'id': instance.id,
      'maxCount': instance.maxCount,
      'minCount': instance.minCount,
      'initialValues': instance.initialValues?.map(toJsonT).toList(),
      'availibleValues': instance.availibleValues.map(toJsonT).toList(),
      'idsOfAvailibleValues': instance.idsOfAvailibleValues,
      'uiSettings': instance.uiSettings,
      'quizSettings': QuizSettings.staticToJson(instance.quizSettings),
    };

_$BooleanInputImpl _$$BooleanInputImplFromJson(Map<String, dynamic> json) =>
    _$BooleanInputImpl(
      id: json['id'] as String,
      initialValue: json['initialValue'] as bool?,
      isRequired: json['isRequired'] as bool? ?? false,
      uiSettings: json['uiSettings'] == null
          ? const BooleanInputUiSettings()
          : BooleanInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BooleanInputImplToJson(_$BooleanInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': instance.initialValue,
      'isRequired': instance.isRequired,
      'uiSettings': BooleanInputUiSettings.staticToJson(instance.uiSettings),
      'runtimeType': instance.$type,
    };

_$DateTimeInputImpl _$$DateTimeInputImplFromJson(Map<String, dynamic> json) =>
    _$DateTimeInputImpl(
      id: json['id'] as String,
      initialValue: json['initialValue'] == null
          ? null
          : DateTime.parse(json['initialValue'] as String),
      isRequired: json['isRequired'] as bool? ?? false,
      maxBound: json['maxBound'] == null
          ? null
          : DateTime.parse(json['maxBound'] as String),
      minBound: json['minBound'] == null
          ? null
          : DateTime.parse(json['minBound'] as String),
      uiSettings: json['uiSettings'] == null
          ? const DateTimeInputUiSettings()
          : DateTimeInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DateTimeInputImplToJson(_$DateTimeInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': instance.initialValue?.toIso8601String(),
      'isRequired': instance.isRequired,
      'maxBound': instance.maxBound?.toIso8601String(),
      'minBound': instance.minBound?.toIso8601String(),
      'uiSettings': DateTimeInputUiSettings.staticToJson(instance.uiSettings),
      'runtimeType': instance.$type,
    };

_$NumInputImpl _$$NumInputImplFromJson(Map<String, dynamic> json) =>
    _$NumInputImpl(
      id: json['id'] as String,
      initialValue: json['initialValue'] as num?,
      isRequired: json['isRequired'] as bool? ?? false,
      maxBound: (json['maxBound'] as num?)?.toInt(),
      minBound: (json['minBound'] as num?)?.toInt() ?? 0,
      uiSettings: json['uiSettings'] == null
          ? const NumInputUiSettings()
          : NumInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NumInputImplToJson(_$NumInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': instance.initialValue,
      'isRequired': instance.isRequired,
      'maxBound': instance.maxBound,
      'minBound': instance.minBound,
      'uiSettings': instance.uiSettings,
      'runtimeType': instance.$type,
    };

_$SelectStringInputImpl _$$SelectStringInputImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectStringInputImpl(
      id: json['id'] as String,
      maxCount: (json['maxCount'] as num?)?.toInt(),
      minCount: (json['minCount'] as num?)?.toInt() ?? 0,
      initialValues: (json['initialValues'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      availibleValues: (json['availibleValues'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      idsOfAvailibleValues: (json['idsOfAvailibleValues'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      uiSettings: json['uiSettings'] == null
          ? const SelectInputUiSettings<String>()
          : SelectInputUiSettings<String>.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      quizSettings: json['quizSettings'] == null
          ? null
          : QuizSettings.fromJson(json['quizSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SelectStringInputImplToJson(
        _$SelectStringInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'maxCount': instance.maxCount,
      'minCount': instance.minCount,
      'initialValues': instance.initialValues,
      'availibleValues': instance.availibleValues,
      'idsOfAvailibleValues': instance.idsOfAvailibleValues,
      'uiSettings':
          _SelectInputUiSettingsX.staticToJsonString(instance.uiSettings),
      'quizSettings': QuizSettings.staticToJson(instance.quizSettings),
      'runtimeType': instance.$type,
    };

_$StringInputImpl _$$StringInputImplFromJson(Map<String, dynamic> json) =>
    _$StringInputImpl(
      id: json['id'] as String,
      initialValue: json['initialValue'] as String?,
      isRequired: json['isRequired'] as bool? ?? false,
      regexPattern: json['regexPattern'] as String?,
      uiSettings: json['uiSettings'] == null
          ? const StringInputUiSettings()
          : StringInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StringInputImplToJson(_$StringInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': instance.initialValue,
      'isRequired': instance.isRequired,
      'regexPattern': instance.regexPattern,
      'uiSettings': StringInputUiSettings.staticToJson(instance.uiSettings),
      'runtimeType': instance.$type,
    };
