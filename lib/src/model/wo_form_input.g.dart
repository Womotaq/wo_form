// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BooleanInput _$BooleanInputFromJson(Map<String, dynamic> json) => BooleanInput(
  id: json['id'] as String,
  initialValue: json['initialValue'] as bool?,
  isRequired: json['isRequired'] as bool? ?? false,
  uiSettings: json['uiSettings'] == null
      ? const BooleanInputUiSettings()
      : BooleanInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$BooleanInputToJson(BooleanInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': instance.initialValue,
      'isRequired': instance.isRequired,
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

DateTimeInput _$DateTimeInputFromJson(Map<String, dynamic> json) =>
    DateTimeInput(
      id: json['id'] as String,
      initialValue: json['initialValue'] == null
          ? null
          : FlexibleDateTime.fromJson(
              json['initialValue'] as Map<String, dynamic>,
            ),
      isRequired: json['isRequired'] as bool? ?? false,
      maxDate: json['maxDate'] == null
          ? null
          : FlexibleDateTime.fromJson(json['maxDate'] as Map<String, dynamic>),
      minDate: json['minDate'] == null
          ? null
          : FlexibleDateTime.fromJson(json['minDate'] as Map<String, dynamic>),
      uiSettings: json['uiSettings'] == null
          ? const DateTimeInputUiSettings()
          : DateTimeInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>,
            ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DateTimeInputToJson(DateTimeInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': instance.initialValue?.toJson(),
      'isRequired': instance.isRequired,
      'maxDate': instance.maxDate?.toJson(),
      'minDate': instance.minDate?.toJson(),
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

DurationInput _$DurationInputFromJson(Map<String, dynamic> json) =>
    DurationInput(
      id: json['id'] as String,
      initialValue: const DurationNullableConverter().fromJson(
        (json['initialValue'] as num?)?.toInt(),
      ),
      isRequired: json['isRequired'] as bool? ?? false,
      startDatePath: json['startDatePath'] as String?,
      maxDuration: const DurationNullableConverter().fromJson(
        (json['maxDuration'] as num?)?.toInt(),
      ),
      minDuration: const DurationNullableConverter().fromJson(
        (json['minDuration'] as num?)?.toInt(),
      ),
      uiSettings: json['uiSettings'] == null
          ? const DurationInputUiSettings()
          : DurationInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>,
            ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$DurationInputToJson(
  DurationInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'initialValue': const DurationNullableConverter().toJson(
    instance.initialValue,
  ),
  'isRequired': instance.isRequired,
  'startDatePath': instance.startDatePath,
  'maxDuration': const DurationNullableConverter().toJson(instance.maxDuration),
  'minDuration': const DurationNullableConverter().toJson(instance.minDuration),
  'uiSettings': instance.uiSettings.toJson(),
  'runtimeType': instance.$type,
};

MediaInput _$MediaInputFromJson(Map<String, dynamic> json) => MediaInput(
  id: json['id'] as String,
  importSettings: MediaImportSettings.fromJson(
    json['importSettings'] as Map<String, dynamic>,
  ),
  maxCount: (json['maxCount'] as num?)?.toInt(),
  minCount: (json['minCount'] as num?)?.toInt() ?? 0,
  initialValues: (json['initialValues'] as List<dynamic>?)
      ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
      .toList(),
  submitFormOnSelect: json['submitFormOnSelect'] as bool? ?? false,
  uploadPath: json['uploadPath'] as String?,
  uiSettings: json['uiSettings'] == null
      ? const MediaInputUiSettings()
      : MediaInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$MediaInputToJson(MediaInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'importSettings': instance.importSettings.toJson(),
      'maxCount': instance.maxCount,
      'minCount': instance.minCount,
      'initialValues': instance.initialValues?.map((e) => e.toJson()).toList(),
      'submitFormOnSelect': instance.submitFormOnSelect,
      'uploadPath': instance.uploadPath,
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

NumInput _$NumInputFromJson(Map<String, dynamic> json) => NumInput(
  id: json['id'] as String,
  initialValue: json['initialValue'] as num?,
  isRequired: json['isRequired'] as bool? ?? false,
  maxBound: (json['maxBound'] as num?)?.toInt(),
  minBound: (json['minBound'] as num?)?.toInt() ?? 0,
  uiSettings: json['uiSettings'] == null
      ? const NumInputUiSettings()
      : NumInputUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$NumInputToJson(NumInput instance) => <String, dynamic>{
  'id': instance.id,
  'initialValue': instance.initialValue,
  'isRequired': instance.isRequired,
  'maxBound': instance.maxBound,
  'minBound': instance.minBound,
  'uiSettings': instance.uiSettings.toJson(),
  'runtimeType': instance.$type,
};

SelectStringInput _$SelectStringInputFromJson(Map<String, dynamic> json) =>
    SelectStringInput(
      id: json['id'] as String,
      maxCount: (json['maxCount'] as num?)?.toInt(),
      minCount: (json['minCount'] as num?)?.toInt() ?? 0,
      initialValues: (json['initialValues'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      availibleValues:
          (json['availibleValues'] as List<dynamic>?)
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
              json['uiSettings'] as Map<String, dynamic>,
            ),
      quizSettings: json['quizSettings'] == null
          ? null
          : QuizSettings.fromJson(json['quizSettings'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SelectStringInputToJson(
  SelectStringInput instance,
) => <String, dynamic>{
  'id': instance.id,
  'maxCount': instance.maxCount,
  'minCount': instance.minCount,
  'initialValues': instance.initialValues,
  'availibleValues': instance.availibleValues,
  'idsOfAvailibleValues': instance.idsOfAvailibleValues,
  'submitFormOnSelect': instance.submitFormOnSelect,
  'uiSettings': _SelectInputUiSettingsX.staticToJsonString(instance.uiSettings),
  'quizSettings': instance.quizSettings?.toJson(),
  'runtimeType': instance.$type,
};

StringInput _$StringInputFromJson(Map<String, dynamic> json) => StringInput(
  id: json['id'] as String,
  initialValue: json['initialValue'] as String?,
  isRequired: json['isRequired'] as bool? ?? false,
  regexPattern: json['regexPattern'] as String?,
  placeAutocompleteSettings: json['placeAutocompleteSettings'] == null
      ? null
      : PlaceAutocompleteSettings.fromJson(
          json['placeAutocompleteSettings'] as Map<String, dynamic>,
        ),
  uiSettings: json['uiSettings'] == null
      ? const StringInputUiSettings()
      : StringInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$StringInputToJson(StringInput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'initialValue': instance.initialValue,
      'isRequired': instance.isRequired,
      'regexPattern': instance.regexPattern,
      'placeAutocompleteSettings': instance.placeAutocompleteSettings?.toJson(),
      'uiSettings': instance.uiSettings.toJson(),
      'runtimeType': instance.$type,
    };

_SelectInput<T> _$SelectInputFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _SelectInput<T>(
  id: json['id'] as String,
  maxCount: (json['maxCount'] as num?)?.toInt(),
  minCount: (json['minCount'] as num?)?.toInt() ?? 0,
  initialValues: (json['initialValues'] as List<dynamic>?)
      ?.map(fromJsonT)
      .toList(),
  availibleValues:
      (json['availibleValues'] as List<dynamic>?)?.map(fromJsonT).toList() ??
      const [],
  idsOfAvailibleValues: (json['idsOfAvailibleValues'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  submitFormOnSelect: json['submitFormOnSelect'] as bool? ?? false,
  uiSettings: json['uiSettings'] == null
      ? null
      : SelectInputUiSettings<T>.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  quizSettings: json['quizSettings'] == null
      ? null
      : QuizSettings.fromJson(json['quizSettings'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SelectInputToJson<T>(
  _SelectInput<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'id': instance.id,
  'maxCount': instance.maxCount,
  'minCount': instance.minCount,
  'initialValues': instance.initialValues?.map(toJsonT).toList(),
  'availibleValues': instance.availibleValues.map(toJsonT).toList(),
  'idsOfAvailibleValues': instance.idsOfAvailibleValues,
  'submitFormOnSelect': instance.submitFormOnSelect,
  'uiSettings': instance.uiSettings?.toJson(),
  'quizSettings': instance.quizSettings?.toJson(),
};
