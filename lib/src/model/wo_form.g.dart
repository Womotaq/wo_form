// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WoFormImpl _$$WoFormImplFromJson(Map<String, dynamic> json) => _$WoFormImpl(
      unmodifiableValuesJson:
          json['unmodifiableValuesJson'] as Map<String, dynamic>?,
      inputs: json['inputs'] == null
          ? const []
          : const InputsListConverter().fromJson(json['inputs'] as List),
      initialStatusIsSubmitted:
          json['initialStatusIsSubmitted'] as bool? ?? false,
      uiSettings: json['uiSettings'] == null
          ? const WoFormUiSettings()
          : WoFormUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WoFormImplToJson(_$WoFormImpl instance) =>
    <String, dynamic>{
      'unmodifiableValuesJson': instance.unmodifiableValuesJson,
      'inputs': const InputsListConverter().toJson(instance.inputs),
      'initialStatusIsSubmitted': instance.initialStatusIsSubmitted,
      'uiSettings': WoFormUiSettings.staticToJson(instance.uiSettings),
    };
