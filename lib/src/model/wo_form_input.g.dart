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
      submitFormOnSelect: json['submitFormOnSelect'] as bool,
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
      'submitFormOnSelect': instance.submitFormOnSelect,
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
          : FlexibleDateTime.fromJson(
              json['initialValue'] as Map<String, dynamic>),
      isRequired: json['isRequired'] as bool? ?? false,
      maxDate: json['maxDate'] == null
          ? null
          : FlexibleDateTime.fromJson(json['maxDate'] as Map<String, dynamic>),
      minDate: json['minDate'] == null
          ? null
          : FlexibleDateTime.fromJson(json['minDate'] as Map<String, dynamic>),
      editMode: $enumDecodeNullable(_$DateEditModeEnumMap, json['editMode']) ??
          DateEditMode.dateAndTime,
      uiSettings: json['uiSettings'] == null
          ? const DateTimeInputUiSettings()
          : DateTimeInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DateTimeInputImplToJson(_$DateTimeInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': FlexibleDateTime.staticToJson(instance.initialValue),
      'isRequired': instance.isRequired,
      'maxDate': FlexibleDateTime.staticToJson(instance.maxDate),
      'minDate': FlexibleDateTime.staticToJson(instance.minDate),
      'editMode': _$DateEditModeEnumMap[instance.editMode]!,
      'uiSettings': DateTimeInputUiSettings.staticToJson(instance.uiSettings),
      'runtimeType': instance.$type,
    };

const _$DateEditModeEnumMap = {
  DateEditMode.date: 'date',
  DateEditMode.time: 'time',
  DateEditMode.dateAndTime: 'dateAndTime',
};

_$MediaInputImpl _$$MediaInputImplFromJson(Map<String, dynamic> json) =>
    _$MediaInputImpl(
      id: json['id'] as String,
      importSettings: MediaImportSettings.fromJson(
          json['importSettings'] as Map<String, dynamic>),
      maxCount: (json['maxCount'] as num?)?.toInt(),
      minCount: (json['minCount'] as num?)?.toInt() ?? 0,
      aspectRatio: (json['aspectRatio'] as num?)?.toDouble(),
      initialValues: _$JsonConverterFromJson<List<dynamic>, List<Media>>(
          json['initialValues'], const MediaListConverter().fromJson),
      submitFormOnSelect: json['submitFormOnSelect'] as bool? ?? false,
      uploadPath: json['uploadPath'] as String?,
      uiSettings: json['uiSettings'] == null
          ? const MediaInputUiSettings()
          : MediaInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MediaInputImplToJson(_$MediaInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'importSettings':
          MediaImportSettings.staticToJson(instance.importSettings),
      'maxCount': instance.maxCount,
      'minCount': instance.minCount,
      'aspectRatio': instance.aspectRatio,
      'initialValues': _$JsonConverterToJson<List<dynamic>, List<Media>>(
          instance.initialValues, const MediaListConverter().toJson),
      'submitFormOnSelect': instance.submitFormOnSelect,
      'uploadPath': instance.uploadPath,
      'uiSettings': MediaInputUiSettings.staticToJson(instance.uiSettings),
      'runtimeType': instance.$type,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

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
      submitFormOnSelect: json['submitFormOnSelect'] as bool? ?? false,
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
      'submitFormOnSelect': instance.submitFormOnSelect,
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
