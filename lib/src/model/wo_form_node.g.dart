// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wo_form_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConditionnalNode<T> _$ConditionnalNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => ConditionnalNode<T>(
  id: json['id'] as String,
  condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
  child: const InputConverter().fromJson(json['child'] as Map<String, dynamic>),
  conditionIsInitiallyMet: json['conditionIsInitiallyMet'] as bool? ?? false,
  resetChildrenWhenHidden: json['resetChildrenWhenHidden'] as bool? ?? true,
  uiSettings: json['uiSettings'] == null
      ? null
      : InputUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ConditionnalNodeToJson<T extends Object?>(
  ConditionnalNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'condition': instance.condition.toJson(),
  'child': const InputConverter().toJson(instance.child),
  'conditionIsInitiallyMet': instance.conditionIsInitiallyMet,
  'resetChildrenWhenHidden': instance.resetChildrenWhenHidden,
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

DynamicInputsNode<T> _$DynamicInputsNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => DynamicInputsNode<T>(
  id: json['id'] as String,
  templates:
      (json['templates'] as List<dynamic>?)
          ?.map((e) => DynamicInputTemplate.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  initialChildren:
      _$JsonConverterFromJson<List<dynamic>, List<WoFormNode<Object?>>>(
        json['initialChildren'],
        const InputsListConverter().fromJson,
      ),
  uiSettings: json['uiSettings'] == null
      ? null
      : DynamicInputsNodeUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  exportSettings: json['exportSettings'] == null
      ? null
      : ExportSettings.fromJson(json['exportSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$DynamicInputsNodeToJson<T extends Object?>(
  DynamicInputsNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'templates': instance.templates.map((e) => e.toJson()).toList(),
  'initialChildren':
      _$JsonConverterToJson<List<dynamic>, List<WoFormNode<Object?>>>(
        instance.initialChildren,
        const InputsListConverter().toJson,
      ),
  'uiSettings': instance.uiSettings?.toJson(),
  'exportSettings': instance.exportSettings?.toJson(),
  'runtimeType': instance.$type,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

EmptyNode<T> _$EmptyNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => EmptyNode<T>(
  id: json['id'] as String? ?? 'EmptyNode',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$EmptyNodeToJson<T extends Object?>(
  EmptyNode<T> instance,
) => <String, dynamic>{'id': instance.id, 'runtimeType': instance.$type};

FutureNode<T> _$FutureNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => FutureNode<T>(
  id: json['id'] as String,
  willResetToInitialValues: json['willResetToInitialValues'] as bool? ?? true,
  uiSettings: json['uiSettings'] == null
      ? null
      : InputUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$FutureNodeToJson<T extends Object?>(
  FutureNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'willResetToInitialValues': instance.willResetToInitialValues,
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

InputsNode<T> _$InputsNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => InputsNode<T>(
  id: json['id'] as String,
  children: json['children'] == null
      ? const []
      : const InputsListConverter().fromJson(json['children'] as List),
  uiSettings: json['uiSettings'] == null
      ? null
      : InputsNodeUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  exportSettings: json['exportSettings'] == null
      ? null
      : ExportSettings.fromJson(json['exportSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$InputsNodeToJson<T extends Object?>(
  InputsNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'children': const InputsListConverter().toJson(instance.children),
  'uiSettings': instance.uiSettings?.toJson(),
  'exportSettings': instance.exportSettings?.toJson(),
  'runtimeType': instance.$type,
};

PathBuilderNode<T> _$PathBuilderNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => PathBuilderNode<T>(
  id: json['id'] as String,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$PathBuilderNodeToJson<T extends Object?>(
  PathBuilderNode<T> instance,
) => <String, dynamic>{'id': instance.id, 'runtimeType': instance.$type};

RootNode<T> _$RootNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => RootNode<T>(
  id: json['id'] as String? ?? 'root',
  initialValues: json['initialValues'] as Map<String, dynamic>? ?? const {},
  children: json['children'] == null
      ? const []
      : const InputsListConverter().fromJson(json['children'] as List),
  uiSettings: json['uiSettings'] == null
      ? null
      : WoFormUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  exportSettings: json['exportSettings'] == null
      ? null
      : ExportSettings.fromJson(json['exportSettings'] as Map<String, dynamic>),
  hydratationId: json['hydratationId'] as String? ?? '',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$RootNodeToJson<T extends Object?>(
  RootNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'initialValues': instance.initialValues,
  'children': const InputsListConverter().toJson(instance.children),
  'uiSettings': instance.uiSettings?.toJson(),
  'exportSettings': instance.exportSettings?.toJson(),
  'hydratationId': instance.hydratationId,
  'runtimeType': instance.$type,
};

SelectorNode<T> _$SelectorNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => SelectorNode<T>(
  id: json['id'] as String,
  uiSettings: json['uiSettings'] == null
      ? null
      : InputUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$SelectorNodeToJson<T extends Object?>(
  SelectorNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

ValueBuilderNode<T> _$ValueBuilderNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => ValueBuilderNode<T>(
  id: json['id'] as String,
  path: json['path'] as String,
  initialValue: json['initialValue'],
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ValueBuilderNodeToJson<T extends Object?>(
  ValueBuilderNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'path': instance.path,
  'initialValue': instance.initialValue,
  'runtimeType': instance.$type,
};

ValuesBuilderNode<T> _$ValuesBuilderNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => ValuesBuilderNode<T>(
  id: json['id'] as String,
  paths: (json['paths'] as List<dynamic>).map((e) => e as String).toList(),
  initialValues: json['initialValues'] as Map<String, dynamic>?,
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ValuesBuilderNodeToJson<T extends Object?>(
  ValuesBuilderNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'paths': instance.paths,
  'initialValues': instance.initialValues,
  'runtimeType': instance.$type,
};

ValueListenerNode<T> _$ValueListenerNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => ValueListenerNode<T>(
  path: json['path'] as String,
  id: json['id'] as String? ?? 'ValueListenerNode',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ValueListenerNodeToJson<T extends Object?>(
  ValueListenerNode<T> instance,
) => <String, dynamic>{
  'path': instance.path,
  'id': instance.id,
  'runtimeType': instance.$type,
};

WidgetNode<T> _$WidgetNodeFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => WidgetNode<T>(
  id: json['id'] as String? ?? 'WidgetNode',
  uiSettings: json['uiSettings'] == null
      ? null
      : InputUiSettings.fromJson(json['uiSettings'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$WidgetNodeToJson<T extends Object?>(
  WidgetNode<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

_DynamicInputTemplate _$DynamicInputTemplateFromJson(
  Map<String, dynamic> json,
) => _DynamicInputTemplate(
  child: _$JsonConverterFromJson<Map<String, dynamic>, WoFormNode<Object?>?>(
    json['child'],
    const InputNullableConverter().fromJson,
  ),
  uiSettings: json['uiSettings'] == null
      ? const DynamicInputUiSettings()
      : DynamicInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DynamicInputTemplateToJson(
  _DynamicInputTemplate instance,
) => <String, dynamic>{
  'child': const InputNullableConverter().toJson(instance.child),
  'uiSettings': instance.uiSettings.toJson(),
};

BooleanInput<T> _$BooleanInputFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => BooleanInput<T>(
  id: json['id'] as String,
  initialValue: json['initialValue'] as bool?,
  isRequired: json['isRequired'] as bool? ?? false,
  uiSettings: json['uiSettings'] == null
      ? null
      : BooleanInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$BooleanInputToJson<T extends Object?>(
  BooleanInput<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'initialValue': instance.initialValue,
  'isRequired': instance.isRequired,
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

DateTimeInput<T> _$DateTimeInputFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => DateTimeInput<T>(
  id: json['id'] as String,
  initialValue: json['initialValue'] == null
      ? null
      : FlexibleDateTime.fromJson(json['initialValue'] as Map<String, dynamic>),
  isRequired: json['isRequired'] as bool? ?? false,
  maxDate: json['maxDate'] == null
      ? null
      : FlexibleDateTime.fromJson(json['maxDate'] as Map<String, dynamic>),
  minDate: json['minDate'] == null
      ? null
      : FlexibleDateTime.fromJson(json['minDate'] as Map<String, dynamic>),
  uiSettings: json['uiSettings'] == null
      ? null
      : DateTimeInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$DateTimeInputToJson<T extends Object?>(
  DateTimeInput<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'initialValue': instance.initialValue?.toJson(),
  'isRequired': instance.isRequired,
  'maxDate': instance.maxDate?.toJson(),
  'minDate': instance.minDate?.toJson(),
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

DurationInput<T> _$DurationInputFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => DurationInput<T>(
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
      ? null
      : DurationInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$DurationInputToJson<T extends Object?>(
  DurationInput<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'initialValue': const DurationNullableConverter().toJson(
    instance.initialValue,
  ),
  'isRequired': instance.isRequired,
  'startDatePath': instance.startDatePath,
  'maxDuration': const DurationNullableConverter().toJson(instance.maxDuration),
  'minDuration': const DurationNullableConverter().toJson(instance.minDuration),
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

MediaInput<T> _$MediaInputFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => MediaInput<T>(
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
      ? null
      : MediaInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$MediaInputToJson<T extends Object?>(
  MediaInput<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'importSettings': instance.importSettings.toJson(),
  'maxCount': instance.maxCount,
  'minCount': instance.minCount,
  'initialValues': instance.initialValues?.map((e) => e.toJson()).toList(),
  'submitFormOnSelect': instance.submitFormOnSelect,
  'uploadPath': instance.uploadPath,
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

NumInput<T> _$NumInputFromJson<T extends Object?>(Map<String, dynamic> json) =>
    NumInput<T>(
      id: json['id'] as String,
      initialValue: json['initialValue'] as num?,
      isRequired: json['isRequired'] as bool? ?? false,
      maxBound: (json['maxBound'] as num?)?.toInt(),
      minBound: (json['minBound'] as num?)?.toInt() ?? 0,
      uiSettings: json['uiSettings'] == null
          ? null
          : NumInputUiSettings.fromJson(
              json['uiSettings'] as Map<String, dynamic>,
            ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NumInputToJson<T extends Object?>(
  NumInput<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'initialValue': instance.initialValue,
  'isRequired': instance.isRequired,
  'maxBound': instance.maxBound,
  'minBound': instance.minBound,
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};

StringInput<T> _$StringInputFromJson<T extends Object?>(
  Map<String, dynamic> json,
) => StringInput<T>(
  id: json['id'] as String,
  initialValue: json['initialValue'] as String?,
  isRequired: json['isRequired'] as bool? ?? false,
  regexPattern: json['regexPattern'] as String?,
  isLocked: json['isLocked'] as bool? ?? false,
  placeAutocompleteSettings: json['placeAutocompleteSettings'] == null
      ? null
      : PlaceAutocompleteSettings.fromJson(
          json['placeAutocompleteSettings'] as Map<String, dynamic>,
        ),
  uiSettings: json['uiSettings'] == null
      ? null
      : StringInputUiSettings.fromJson(
          json['uiSettings'] as Map<String, dynamic>,
        ),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$StringInputToJson<T extends Object?>(
  StringInput<T> instance,
) => <String, dynamic>{
  'id': instance.id,
  'initialValue': instance.initialValue,
  'isRequired': instance.isRequired,
  'regexPattern': instance.regexPattern,
  'isLocked': instance.isLocked,
  'placeAutocompleteSettings': instance.placeAutocompleteSettings?.toJson(),
  'uiSettings': instance.uiSettings?.toJson(),
  'runtimeType': instance.$type,
};
