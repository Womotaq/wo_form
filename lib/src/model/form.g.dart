// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      inputsMap: const InputsMapConverter()
          .fromJson(json['inputsMap'] as List<Map<String, dynamic>>),
      status: $enumDecodeNullable(_$WoFormStatusEnumMap, json['status']) ??
          WoFormStatus.idle,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'inputsMap': const InputsMapConverter().toJson(instance.inputsMap),
      'status': _$WoFormStatusEnumMap[instance.status],
      'errorCode': instance.errorCode,
    };

const _$WoFormStatusEnumMap = {
  WoFormStatus.idle: 'idle',
  WoFormStatus.invalid: 'invalid',
  WoFormStatus.submitting: 'submitting',
  WoFormStatus.submitError: 'submitError',
  WoFormStatus.submitted: 'submitted',
};
