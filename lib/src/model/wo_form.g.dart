// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      inputsMap: const InputsMapConverter()
          .fromJson(json['inputs'] as List<Map<String, dynamic>>),
      status: $enumDecodeNullable(_$WoFormStatusEnumMap, json['status']) ??
          WoFormStatus.idle,
      errorCode: json['errorCode'] as String?,
      unmodifiableValuesJson:
          json['unmodifiableValuesJson'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'inputs': const InputsMapConverter().toJson(instance.inputsMap),
      'status': _$WoFormStatusEnumMap[instance.status]!,
      'errorCode': instance.errorCode,
      'unmodifiableValuesJson': instance.unmodifiableValuesJson,
    };

const _$WoFormStatusEnumMap = {
  WoFormStatus.idle: 'idle',
  WoFormStatus.invalid: 'invalid',
  WoFormStatus.submitting: 'submitting',
  WoFormStatus.submitError: 'submitError',
  WoFormStatus.submitted: 'submitted',
};
