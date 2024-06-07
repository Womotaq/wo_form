// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      unmodifiableValuesJson:
          json['unmodifiableValuesJson'] as Map<String, dynamic>?,
      inputs: json['inputs'] == null
          ? const []
          : const InputsListConverter().fromJson(json['inputs'] as List),
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'unmodifiableValuesJson': instance.unmodifiableValuesJson,
      'inputs': const InputsListConverter().toJson(instance.inputs),
    };
