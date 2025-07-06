// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitialStatus _$InitialStatusFromJson(Map<String, dynamic> json) =>
    InitialStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$InitialStatusToJson(InitialStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

InProgressStatus _$InProgressStatusFromJson(Map<String, dynamic> json) =>
    InProgressStatus(
      firstInvalidInputPath: json['firstInvalidInputPath'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$InProgressStatusToJson(InProgressStatus instance) =>
    <String, dynamic>{
      'firstInvalidInputPath': instance.firstInvalidInputPath,
      'runtimeType': instance.$type,
    };

SubmittingStatus _$SubmittingStatusFromJson(Map<String, dynamic> json) =>
    SubmittingStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SubmittingStatusToJson(SubmittingStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

SubmitErrorStatus _$SubmitErrorStatusFromJson(Map<String, dynamic> json) =>
    SubmitErrorStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SubmitErrorStatusToJson(SubmitErrorStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

SubmitSuccessStatus _$SubmitSuccessStatusFromJson(Map<String, dynamic> json) =>
    SubmitSuccessStatus(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$SubmitSuccessStatusToJson(
        SubmitSuccessStatus instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
