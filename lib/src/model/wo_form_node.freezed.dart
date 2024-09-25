// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_form_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicInputTemplate _$DynamicInputTemplateFromJson(Map<String, dynamic> json) {
  return _DynamicInputTemplate.fromJson(json);
}

/// @nodoc
mixin _$DynamicInputTemplate {
  @JsonKey(
      fromJson: WoFormNodeMixin.fromJson, toJson: WoFormNodeMixin.staticToJson)
  WoFormNodeMixin get child => throw _privateConstructorUsedError;
  @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
  DynamicInputUiSettings get uiSettings => throw _privateConstructorUsedError;

  /// Serializes this DynamicInputTemplate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicInputTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicInputTemplateCopyWith<DynamicInputTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicInputTemplateCopyWith<$Res> {
  factory $DynamicInputTemplateCopyWith(DynamicInputTemplate value,
          $Res Function(DynamicInputTemplate) then) =
      _$DynamicInputTemplateCopyWithImpl<$Res, DynamicInputTemplate>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: WoFormNodeMixin.fromJson,
          toJson: WoFormNodeMixin.staticToJson)
      WoFormNodeMixin child,
      @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
      DynamicInputUiSettings uiSettings});

  $DynamicInputUiSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class _$DynamicInputTemplateCopyWithImpl<$Res,
        $Val extends DynamicInputTemplate>
    implements $DynamicInputTemplateCopyWith<$Res> {
  _$DynamicInputTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicInputTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? uiSettings = null,
  }) {
    return _then(_value.copyWith(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as DynamicInputUiSettings,
    ) as $Val);
  }

  /// Create a copy of DynamicInputTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DynamicInputUiSettingsCopyWith<$Res> get uiSettings {
    return $DynamicInputUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DynamicInputTemplateImplCopyWith<$Res>
    implements $DynamicInputTemplateCopyWith<$Res> {
  factory _$$DynamicInputTemplateImplCopyWith(_$DynamicInputTemplateImpl value,
          $Res Function(_$DynamicInputTemplateImpl) then) =
      __$$DynamicInputTemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: WoFormNodeMixin.fromJson,
          toJson: WoFormNodeMixin.staticToJson)
      WoFormNodeMixin child,
      @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
      DynamicInputUiSettings uiSettings});

  @override
  $DynamicInputUiSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class __$$DynamicInputTemplateImplCopyWithImpl<$Res>
    extends _$DynamicInputTemplateCopyWithImpl<$Res, _$DynamicInputTemplateImpl>
    implements _$$DynamicInputTemplateImplCopyWith<$Res> {
  __$$DynamicInputTemplateImplCopyWithImpl(_$DynamicInputTemplateImpl _value,
      $Res Function(_$DynamicInputTemplateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicInputTemplate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
    Object? uiSettings = null,
  }) {
    return _then(_$DynamicInputTemplateImpl(
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as DynamicInputUiSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicInputTemplateImpl extends _DynamicInputTemplate {
  const _$DynamicInputTemplateImpl(
      {@JsonKey(
          fromJson: WoFormNodeMixin.fromJson,
          toJson: WoFormNodeMixin.staticToJson)
      required this.child,
      @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
      this.uiSettings = const DynamicInputUiSettings()})
      : super._();

  factory _$DynamicInputTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicInputTemplateImplFromJson(json);

  @override
  @JsonKey(
      fromJson: WoFormNodeMixin.fromJson, toJson: WoFormNodeMixin.staticToJson)
  final WoFormNodeMixin child;
  @override
  @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
  final DynamicInputUiSettings uiSettings;

  @override
  String toString() {
    return 'DynamicInputTemplate(child: $child, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicInputTemplateImpl &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, child, uiSettings);

  /// Create a copy of DynamicInputTemplate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicInputTemplateImplCopyWith<_$DynamicInputTemplateImpl>
      get copyWith =>
          __$$DynamicInputTemplateImplCopyWithImpl<_$DynamicInputTemplateImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicInputTemplateImplToJson(
      this,
    );
  }
}

abstract class _DynamicInputTemplate extends DynamicInputTemplate {
  const factory _DynamicInputTemplate(
      {@JsonKey(
          fromJson: WoFormNodeMixin.fromJson,
          toJson: WoFormNodeMixin.staticToJson)
      required final WoFormNodeMixin child,
      @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
      final DynamicInputUiSettings uiSettings}) = _$DynamicInputTemplateImpl;
  const _DynamicInputTemplate._() : super._();

  factory _DynamicInputTemplate.fromJson(Map<String, dynamic> json) =
      _$DynamicInputTemplateImpl.fromJson;

  @override
  @JsonKey(
      fromJson: WoFormNodeMixin.fromJson, toJson: WoFormNodeMixin.staticToJson)
  WoFormNodeMixin get child;
  @override
  @JsonKey(toJson: DynamicInputUiSettings.staticToJson)
  DynamicInputUiSettings get uiSettings;

  /// Create a copy of DynamicInputTemplate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicInputTemplateImplCopyWith<_$DynamicInputTemplateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WoFormNode _$WoFormNodeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'conditionnal':
      return ConditionnalNode.fromJson(json);
    case 'dynamicInputs':
      return DynamicInputsNode.fromJson(json);
    case 'inputs':
      return InputsNode.fromJson(json);
    case 'pathBuilder':
      return PathBuilderNode.fromJson(json);
    case 'valueBuilder':
      return ValueBuilderNode.fromJson(json);
    case 'valuesBuilder':
      return ValuesBuilderNode.fromJson(json);
    case 'valueListener':
      return ValueListenerNode.fromJson(json);
    case 'widget':
      return WidgetNode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormNode',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormNode {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this WoFormNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WoFormNodeCopyWith<WoFormNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormNodeCopyWith<$Res> {
  factory $WoFormNodeCopyWith(
          WoFormNode value, $Res Function(WoFormNode) then) =
      _$WoFormNodeCopyWithImpl<$Res, WoFormNode>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$WoFormNodeCopyWithImpl<$Res, $Val extends WoFormNode>
    implements $WoFormNodeCopyWith<$Res> {
  _$WoFormNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionnalNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$ConditionnalNodeImplCopyWith(_$ConditionnalNodeImpl value,
          $Res Function(_$ConditionnalNodeImpl) then) =
      __$$ConditionnalNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<Condition> conditions,
      @InputConverter() WoFormNodeMixin child});
}

/// @nodoc
class __$$ConditionnalNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$ConditionnalNodeImpl>
    implements _$$ConditionnalNodeImplCopyWith<$Res> {
  __$$ConditionnalNodeImplCopyWithImpl(_$ConditionnalNodeImpl _value,
      $Res Function(_$ConditionnalNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conditions = null,
    Object? child = null,
  }) {
    return _then(_$ConditionnalNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: null == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<Condition>,
      child: null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionnalNodeImpl extends ConditionnalNode {
  const _$ConditionnalNodeImpl(
      {required this.id,
      required final List<Condition> conditions,
      @InputConverter() required this.child,
      final String? $type})
      : _conditions = conditions,
        $type = $type ?? 'conditionnal',
        super._();

  factory _$ConditionnalNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionnalNodeImplFromJson(json);

  @override
  final String id;
  final List<Condition> _conditions;
  @override
  List<Condition> get conditions {
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conditions);
  }

  @override
  @InputConverter()
  final WoFormNodeMixin child;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.conditionnal(id: $id, conditions: $conditions, child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionnalNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_conditions), child);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionnalNodeImplCopyWith<_$ConditionnalNodeImpl> get copyWith =>
      __$$ConditionnalNodeImplCopyWithImpl<_$ConditionnalNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return conditionnal(id, conditions, child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return conditionnal?.call(id, conditions, child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (conditionnal != null) {
      return conditionnal(id, conditions, child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return conditionnal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return conditionnal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (conditionnal != null) {
      return conditionnal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionnalNodeImplToJson(
      this,
    );
  }
}

abstract class ConditionnalNode extends WoFormNode {
  const factory ConditionnalNode(
          {required final String id,
          required final List<Condition> conditions,
          @InputConverter() required final WoFormNodeMixin child}) =
      _$ConditionnalNodeImpl;
  const ConditionnalNode._() : super._();

  factory ConditionnalNode.fromJson(Map<String, dynamic> json) =
      _$ConditionnalNodeImpl.fromJson;

  @override
  String get id;
  List<Condition> get conditions;
  @InputConverter()
  WoFormNodeMixin get child;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionnalNodeImplCopyWith<_$ConditionnalNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DynamicInputsNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$DynamicInputsNodeImplCopyWith(_$DynamicInputsNodeImpl value,
          $Res Function(_$DynamicInputsNodeImpl) then) =
      __$$DynamicInputsNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DynamicInputTemplatesConverter() List<DynamicInputTemplate> templates,
      @InputsListConverter() List<WoFormNodeMixin> initialChildren,
      @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
      DynamicInputsNodeUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      ExportSettings exportSettings});

  $DynamicInputsNodeUiSettingsCopyWith<$Res> get uiSettings;
  $ExportSettingsCopyWith<$Res> get exportSettings;
}

/// @nodoc
class __$$DynamicInputsNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$DynamicInputsNodeImpl>
    implements _$$DynamicInputsNodeImplCopyWith<$Res> {
  __$$DynamicInputsNodeImplCopyWithImpl(_$DynamicInputsNodeImpl _value,
      $Res Function(_$DynamicInputsNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templates = null,
    Object? initialChildren = null,
    Object? uiSettings = null,
    Object? exportSettings = null,
  }) {
    return _then(_$DynamicInputsNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      templates: null == templates
          ? _value._templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<DynamicInputTemplate>,
      initialChildren: null == initialChildren
          ? _value._initialChildren
          : initialChildren // ignore: cast_nullable_to_non_nullable
              as List<WoFormNodeMixin>,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as DynamicInputsNodeUiSettings,
      exportSettings: null == exportSettings
          ? _value.exportSettings
          : exportSettings // ignore: cast_nullable_to_non_nullable
              as ExportSettings,
    ));
  }

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DynamicInputsNodeUiSettingsCopyWith<$Res> get uiSettings {
    return $DynamicInputsNodeUiSettingsCopyWith<$Res>(_value.uiSettings,
        (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExportSettingsCopyWith<$Res> get exportSettings {
    return $ExportSettingsCopyWith<$Res>(_value.exportSettings, (value) {
      return _then(_value.copyWith(exportSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicInputsNodeImpl extends DynamicInputsNode {
  const _$DynamicInputsNodeImpl(
      {required this.id,
      @DynamicInputTemplatesConverter()
      final List<DynamicInputTemplate> templates = const [],
      @InputsListConverter()
      final List<WoFormNodeMixin> initialChildren = const [],
      @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
      this.uiSettings = const DynamicInputsNodeUiSettings(),
      @JsonKey(toJson: ExportSettings.staticToJson)
      this.exportSettings = const ExportSettings(),
      final String? $type})
      : _templates = templates,
        _initialChildren = initialChildren,
        $type = $type ?? 'dynamicInputs',
        super._();

  factory _$DynamicInputsNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicInputsNodeImplFromJson(json);

  @override
  final String id;
  final List<DynamicInputTemplate> _templates;
  @override
  @JsonKey()
  @DynamicInputTemplatesConverter()
  List<DynamicInputTemplate> get templates {
    if (_templates is EqualUnmodifiableListView) return _templates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templates);
  }

  final List<WoFormNodeMixin> _initialChildren;
  @override
  @JsonKey()
  @InputsListConverter()
  List<WoFormNodeMixin> get initialChildren {
    if (_initialChildren is EqualUnmodifiableListView) return _initialChildren;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialChildren);
  }

  @override
  @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
  final DynamicInputsNodeUiSettings uiSettings;
  @override
  @JsonKey(toJson: ExportSettings.staticToJson)
  final ExportSettings exportSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.dynamicInputs(id: $id, templates: $templates, initialChildren: $initialChildren, uiSettings: $uiSettings, exportSettings: $exportSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicInputsNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._templates, _templates) &&
            const DeepCollectionEquality()
                .equals(other._initialChildren, _initialChildren) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.exportSettings, exportSettings) ||
                other.exportSettings == exportSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_templates),
      const DeepCollectionEquality().hash(_initialChildren),
      uiSettings,
      exportSettings);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicInputsNodeImplCopyWith<_$DynamicInputsNodeImpl> get copyWith =>
      __$$DynamicInputsNodeImplCopyWithImpl<_$DynamicInputsNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return dynamicInputs(
        id, templates, initialChildren, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return dynamicInputs?.call(
        id, templates, initialChildren, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (dynamicInputs != null) {
      return dynamicInputs(
          id, templates, initialChildren, uiSettings, exportSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return dynamicInputs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return dynamicInputs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (dynamicInputs != null) {
      return dynamicInputs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DynamicInputsNodeImplToJson(
      this,
    );
  }
}

abstract class DynamicInputsNode extends WoFormNode {
  const factory DynamicInputsNode(
      {required final String id,
      @DynamicInputTemplatesConverter()
      final List<DynamicInputTemplate> templates,
      @InputsListConverter() final List<WoFormNodeMixin> initialChildren,
      @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
      final DynamicInputsNodeUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      final ExportSettings exportSettings}) = _$DynamicInputsNodeImpl;
  const DynamicInputsNode._() : super._();

  factory DynamicInputsNode.fromJson(Map<String, dynamic> json) =
      _$DynamicInputsNodeImpl.fromJson;

  @override
  String get id;
  @DynamicInputTemplatesConverter()
  List<DynamicInputTemplate> get templates;
  @InputsListConverter()
  List<WoFormNodeMixin> get initialChildren;
  @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
  DynamicInputsNodeUiSettings get uiSettings;
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DynamicInputsNodeImplCopyWith<_$DynamicInputsNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputsNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$InputsNodeImplCopyWith(
          _$InputsNodeImpl value, $Res Function(_$InputsNodeImpl) then) =
      __$$InputsNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @InputsListConverter() List<WoFormNodeMixin> children,
      @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
      InputsNodeUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      ExportSettings exportSettings});

  $InputsNodeUiSettingsCopyWith<$Res> get uiSettings;
  $ExportSettingsCopyWith<$Res> get exportSettings;
}

/// @nodoc
class __$$InputsNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$InputsNodeImpl>
    implements _$$InputsNodeImplCopyWith<$Res> {
  __$$InputsNodeImplCopyWithImpl(
      _$InputsNodeImpl _value, $Res Function(_$InputsNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? children = null,
    Object? uiSettings = null,
    Object? exportSettings = null,
  }) {
    return _then(_$InputsNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<WoFormNodeMixin>,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as InputsNodeUiSettings,
      exportSettings: null == exportSettings
          ? _value.exportSettings
          : exportSettings // ignore: cast_nullable_to_non_nullable
              as ExportSettings,
    ));
  }

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputsNodeUiSettingsCopyWith<$Res> get uiSettings {
    return $InputsNodeUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExportSettingsCopyWith<$Res> get exportSettings {
    return $ExportSettingsCopyWith<$Res>(_value.exportSettings, (value) {
      return _then(_value.copyWith(exportSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InputsNodeImpl extends InputsNode {
  const _$InputsNodeImpl(
      {required this.id,
      @InputsListConverter() final List<WoFormNodeMixin> children = const [],
      @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
      this.uiSettings = const InputsNodeUiSettings(),
      @JsonKey(toJson: ExportSettings.staticToJson)
      this.exportSettings = const ExportSettings(),
      final String? $type})
      : _children = children,
        $type = $type ?? 'inputs',
        super._();

  factory _$InputsNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputsNodeImplFromJson(json);

  @override
  final String id;
  final List<WoFormNodeMixin> _children;
  @override
  @JsonKey()
  @InputsListConverter()
  List<WoFormNodeMixin> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
  final InputsNodeUiSettings uiSettings;
  @override
  @JsonKey(toJson: ExportSettings.staticToJson)
  final ExportSettings exportSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.inputs(id: $id, children: $children, uiSettings: $uiSettings, exportSettings: $exportSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputsNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.exportSettings, exportSettings) ||
                other.exportSettings == exportSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_children),
      uiSettings,
      exportSettings);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputsNodeImplCopyWith<_$InputsNodeImpl> get copyWith =>
      __$$InputsNodeImplCopyWithImpl<_$InputsNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return inputs(id, children, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return inputs?.call(id, children, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (inputs != null) {
      return inputs(id, children, uiSettings, exportSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return inputs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return inputs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (inputs != null) {
      return inputs(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputsNodeImplToJson(
      this,
    );
  }
}

abstract class InputsNode extends WoFormNode {
  const factory InputsNode(
      {required final String id,
      @InputsListConverter() final List<WoFormNodeMixin> children,
      @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
      final InputsNodeUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      final ExportSettings exportSettings}) = _$InputsNodeImpl;
  const InputsNode._() : super._();

  factory InputsNode.fromJson(Map<String, dynamic> json) =
      _$InputsNodeImpl.fromJson;

  @override
  String get id;
  @InputsListConverter()
  List<WoFormNodeMixin> get children;
  @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
  InputsNodeUiSettings get uiSettings;
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputsNodeImplCopyWith<_$InputsNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PathBuilderNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$PathBuilderNodeImplCopyWith(_$PathBuilderNodeImpl value,
          $Res Function(_$PathBuilderNodeImpl) then) =
      __$$PathBuilderNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      WoFormNodeMixin Function(String)? builder});
}

/// @nodoc
class __$$PathBuilderNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$PathBuilderNodeImpl>
    implements _$$PathBuilderNodeImplCopyWith<$Res> {
  __$$PathBuilderNodeImplCopyWithImpl(
      _$PathBuilderNodeImpl _value, $Res Function(_$PathBuilderNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? builder = freezed,
  }) {
    return _then(_$PathBuilderNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin Function(String)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PathBuilderNodeImpl extends PathBuilderNode {
  const _$PathBuilderNodeImpl(
      {required this.id,
      @JsonKey(includeToJson: false, includeFromJson: false) this.builder,
      final String? $type})
      : assert(builder != null, 'PathBuilderNode.builder cannot be null'),
        $type = $type ?? 'pathBuilder',
        super._();

  factory _$PathBuilderNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PathBuilderNodeImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final WoFormNodeMixin Function(String)? builder;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.pathBuilder(id: $id, builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PathBuilderNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, builder);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PathBuilderNodeImplCopyWith<_$PathBuilderNodeImpl> get copyWith =>
      __$$PathBuilderNodeImplCopyWithImpl<_$PathBuilderNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return pathBuilder(id, builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return pathBuilder?.call(id, builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (pathBuilder != null) {
      return pathBuilder(id, builder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return pathBuilder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return pathBuilder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (pathBuilder != null) {
      return pathBuilder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PathBuilderNodeImplToJson(
      this,
    );
  }
}

abstract class PathBuilderNode extends WoFormNode {
  const factory PathBuilderNode(
      {required final String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final WoFormNodeMixin Function(String)? builder}) = _$PathBuilderNodeImpl;
  const PathBuilderNode._() : super._();

  factory PathBuilderNode.fromJson(Map<String, dynamic> json) =
      _$PathBuilderNodeImpl.fromJson;

  @override
  String get id;
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormNodeMixin Function(String)? get builder;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PathBuilderNodeImplCopyWith<_$PathBuilderNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueBuilderNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$ValueBuilderNodeImplCopyWith(_$ValueBuilderNodeImpl value,
          $Res Function(_$ValueBuilderNodeImpl) then) =
      __$$ValueBuilderNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String path,
      @JsonKey(includeToJson: false, includeFromJson: false)
      WoFormNodeMixin Function(Object?)? builder,
      Object? initialValue});
}

/// @nodoc
class __$$ValueBuilderNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$ValueBuilderNodeImpl>
    implements _$$ValueBuilderNodeImplCopyWith<$Res> {
  __$$ValueBuilderNodeImplCopyWithImpl(_$ValueBuilderNodeImpl _value,
      $Res Function(_$ValueBuilderNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? builder = freezed,
    Object? initialValue = freezed,
  }) {
    return _then(_$ValueBuilderNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin Function(Object?)?,
      initialValue:
          freezed == initialValue ? _value.initialValue : initialValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueBuilderNodeImpl extends ValueBuilderNode {
  const _$ValueBuilderNodeImpl(
      {required this.id,
      required this.path,
      @JsonKey(includeToJson: false, includeFromJson: false) this.builder,
      this.initialValue,
      final String? $type})
      : assert(builder != null, 'ValueBuilderNode.builder cannot be null'),
        $type = $type ?? 'valueBuilder',
        super._();

  factory _$ValueBuilderNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueBuilderNodeImplFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final WoFormNodeMixin Function(Object?)? builder;
  @override
  final Object? initialValue;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.valueBuilder(id: $id, path: $path, builder: $builder, initialValue: $initialValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueBuilderNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.builder, builder) || other.builder == builder) &&
            const DeepCollectionEquality()
                .equals(other.initialValue, initialValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, builder,
      const DeepCollectionEquality().hash(initialValue));

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueBuilderNodeImplCopyWith<_$ValueBuilderNodeImpl> get copyWith =>
      __$$ValueBuilderNodeImplCopyWithImpl<_$ValueBuilderNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return valueBuilder(id, path, builder, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return valueBuilder?.call(id, path, builder, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (valueBuilder != null) {
      return valueBuilder(id, path, builder, initialValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return valueBuilder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return valueBuilder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (valueBuilder != null) {
      return valueBuilder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueBuilderNodeImplToJson(
      this,
    );
  }
}

abstract class ValueBuilderNode extends WoFormNode {
  const factory ValueBuilderNode(
      {required final String id,
      required final String path,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final WoFormNodeMixin Function(Object?)? builder,
      final Object? initialValue}) = _$ValueBuilderNodeImpl;
  const ValueBuilderNode._() : super._();

  factory ValueBuilderNode.fromJson(Map<String, dynamic> json) =
      _$ValueBuilderNodeImpl.fromJson;

  @override
  String get id;
  String get path;
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormNodeMixin Function(Object?)? get builder;
  Object? get initialValue;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueBuilderNodeImplCopyWith<_$ValueBuilderNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValuesBuilderNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$ValuesBuilderNodeImplCopyWith(_$ValuesBuilderNodeImpl value,
          $Res Function(_$ValuesBuilderNodeImpl) then) =
      __$$ValuesBuilderNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<String> paths,
      @JsonKey(includeToJson: false, includeFromJson: false)
      WoFormNodeMixin Function(Map<String, Object?>)? builder,
      Map<String, Object?>? initialValues});
}

/// @nodoc
class __$$ValuesBuilderNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$ValuesBuilderNodeImpl>
    implements _$$ValuesBuilderNodeImplCopyWith<$Res> {
  __$$ValuesBuilderNodeImplCopyWithImpl(_$ValuesBuilderNodeImpl _value,
      $Res Function(_$ValuesBuilderNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? paths = null,
    Object? builder = freezed,
    Object? initialValues = freezed,
  }) {
    return _then(_$ValuesBuilderNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      paths: null == paths
          ? _value._paths
          : paths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin Function(Map<String, Object?>)?,
      initialValues: freezed == initialValues
          ? _value._initialValues
          : initialValues // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValuesBuilderNodeImpl extends ValuesBuilderNode {
  const _$ValuesBuilderNodeImpl(
      {required this.id,
      required final List<String> paths,
      @JsonKey(includeToJson: false, includeFromJson: false) this.builder,
      final Map<String, Object?>? initialValues,
      final String? $type})
      : assert(builder != null, 'ValuesBuilderNode.builder cannot be null'),
        _paths = paths,
        _initialValues = initialValues,
        $type = $type ?? 'valuesBuilder',
        super._();

  factory _$ValuesBuilderNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValuesBuilderNodeImplFromJson(json);

  @override
  final String id;
  final List<String> _paths;
  @override
  List<String> get paths {
    if (_paths is EqualUnmodifiableListView) return _paths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paths);
  }

  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final WoFormNodeMixin Function(Map<String, Object?>)? builder;
  final Map<String, Object?>? _initialValues;
  @override
  Map<String, Object?>? get initialValues {
    final value = _initialValues;
    if (value == null) return null;
    if (_initialValues is EqualUnmodifiableMapView) return _initialValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.valuesBuilder(id: $id, paths: $paths, builder: $builder, initialValues: $initialValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValuesBuilderNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._paths, _paths) &&
            (identical(other.builder, builder) || other.builder == builder) &&
            const DeepCollectionEquality()
                .equals(other._initialValues, _initialValues));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_paths),
      builder,
      const DeepCollectionEquality().hash(_initialValues));

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValuesBuilderNodeImplCopyWith<_$ValuesBuilderNodeImpl> get copyWith =>
      __$$ValuesBuilderNodeImplCopyWithImpl<_$ValuesBuilderNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return valuesBuilder(id, paths, builder, initialValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return valuesBuilder?.call(id, paths, builder, initialValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (valuesBuilder != null) {
      return valuesBuilder(id, paths, builder, initialValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return valuesBuilder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return valuesBuilder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (valuesBuilder != null) {
      return valuesBuilder(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValuesBuilderNodeImplToJson(
      this,
    );
  }
}

abstract class ValuesBuilderNode extends WoFormNode {
  const factory ValuesBuilderNode(
      {required final String id,
      required final List<String> paths,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final WoFormNodeMixin Function(Map<String, Object?>)? builder,
      final Map<String, Object?>? initialValues}) = _$ValuesBuilderNodeImpl;
  const ValuesBuilderNode._() : super._();

  factory ValuesBuilderNode.fromJson(Map<String, dynamic> json) =
      _$ValuesBuilderNodeImpl.fromJson;

  @override
  String get id;
  List<String> get paths;
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormNodeMixin Function(Map<String, Object?>)? get builder;
  Map<String, Object?>? get initialValues;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValuesBuilderNodeImplCopyWith<_$ValuesBuilderNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueListenerNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$ValueListenerNodeImplCopyWith(_$ValueListenerNodeImpl value,
          $Res Function(_$ValueListenerNodeImpl) then) =
      __$$ValueListenerNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path,
      String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      bool Function(Object?, Object?)? listenWhen,
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(BuildContext, String, Object?)? listener});
}

/// @nodoc
class __$$ValueListenerNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$ValueListenerNodeImpl>
    implements _$$ValueListenerNodeImplCopyWith<$Res> {
  __$$ValueListenerNodeImplCopyWithImpl(_$ValueListenerNodeImpl _value,
      $Res Function(_$ValueListenerNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? id = null,
    Object? listenWhen = freezed,
    Object? listener = freezed,
  }) {
    return _then(_$ValueListenerNodeImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      listenWhen: freezed == listenWhen
          ? _value.listenWhen
          : listenWhen // ignore: cast_nullable_to_non_nullable
              as bool Function(Object?, Object?)?,
      listener: freezed == listener
          ? _value.listener
          : listener // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext, String, Object?)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueListenerNodeImpl extends ValueListenerNode {
  const _$ValueListenerNodeImpl(
      {required this.path,
      this.id = 'ValueListenerNode',
      @JsonKey(includeToJson: false, includeFromJson: false) this.listenWhen,
      @JsonKey(includeToJson: false, includeFromJson: false) this.listener,
      final String? $type})
      : assert(listener != null, 'ValueListenerNode.listener cannot be null'),
        $type = $type ?? 'valueListener',
        super._();

  factory _$ValueListenerNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueListenerNodeImplFromJson(json);

  @override
  final String path;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final bool Function(Object?, Object?)? listenWhen;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final void Function(BuildContext, String, Object?)? listener;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.valueListener(path: $path, id: $id, listenWhen: $listenWhen, listener: $listener)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueListenerNodeImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listenWhen, listenWhen) ||
                other.listenWhen == listenWhen) &&
            (identical(other.listener, listener) ||
                other.listener == listener));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path, id, listenWhen, listener);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueListenerNodeImplCopyWith<_$ValueListenerNodeImpl> get copyWith =>
      __$$ValueListenerNodeImplCopyWithImpl<_$ValueListenerNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return valueListener(path, id, listenWhen, listener);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return valueListener?.call(path, id, listenWhen, listener);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (valueListener != null) {
      return valueListener(path, id, listenWhen, listener);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return valueListener(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return valueListener?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (valueListener != null) {
      return valueListener(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ValueListenerNodeImplToJson(
      this,
    );
  }
}

abstract class ValueListenerNode extends WoFormNode {
  const factory ValueListenerNode(
          {required final String path,
          final String id,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final bool Function(Object?, Object?)? listenWhen,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final void Function(BuildContext, String, Object?)? listener}) =
      _$ValueListenerNodeImpl;
  const ValueListenerNode._() : super._();

  factory ValueListenerNode.fromJson(Map<String, dynamic> json) =
      _$ValueListenerNodeImpl.fromJson;

  String get path;
  @override
  String get id;
  @JsonKey(includeToJson: false, includeFromJson: false)
  bool Function(Object?, Object?)? get listenWhen;
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(BuildContext, String, Object?)? get listener;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValueListenerNodeImplCopyWith<_$ValueListenerNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WidgetNodeImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$WidgetNodeImplCopyWith(
          _$WidgetNodeImpl value, $Res Function(_$WidgetNodeImpl) then) =
      __$$WidgetNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Widget Function(BuildContext)? builder});
}

/// @nodoc
class __$$WidgetNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$WidgetNodeImpl>
    implements _$$WidgetNodeImplCopyWith<$Res> {
  __$$WidgetNodeImplCopyWithImpl(
      _$WidgetNodeImpl _value, $Res Function(_$WidgetNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? builder = freezed,
  }) {
    return _then(_$WidgetNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as Widget Function(BuildContext)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WidgetNodeImpl extends WidgetNode {
  const _$WidgetNodeImpl(
      {this.id = 'WidgetNode',
      @JsonKey(includeToJson: false, includeFromJson: false) this.builder,
      final String? $type})
      : $type = $type ?? 'widget',
        super._();

  factory _$WidgetNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WidgetNodeImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Widget Function(BuildContext)? builder;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.widget(id: $id, builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, builder);

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetNodeImplCopyWith<_$WidgetNodeImpl> get copyWith =>
      __$$WidgetNodeImplCopyWithImpl<_$WidgetNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)
        conditionnal,
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)
        pathBuilder,
    required TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)
        valueBuilder,
    required TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)
        valuesBuilder,
    required TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)
        valueListener,
    required TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)
        widget,
  }) {
    return widget(id, builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult? Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult? Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult? Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult? Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
  }) {
    return widget?.call(id, builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, List<Condition> conditions,
            @InputConverter() WoFormNodeMixin child)?
        conditionnal,
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @InputsListConverter() List<WoFormNodeMixin> initialChildren,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormNodeMixin> children,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(String)? builder)?
        pathBuilder,
    TResult Function(
            String id,
            String path,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Object?)? builder,
            Object? initialValue)?
        valueBuilder,
    TResult Function(
            String id,
            List<String> paths,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormNodeMixin Function(Map<String, Object?>)? builder,
            Map<String, Object?>? initialValues)?
        valuesBuilder,
    TResult Function(
            String path,
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            bool Function(Object?, Object?)? listenWhen,
            @JsonKey(includeToJson: false, includeFromJson: false)
            void Function(BuildContext, String, Object?)? listener)?
        valueListener,
    TResult Function(
            String id,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Widget Function(BuildContext)? builder)?
        widget,
    required TResult orElse(),
  }) {
    if (widget != null) {
      return widget(id, builder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConditionnalNode value) conditionnal,
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(PathBuilderNode value) pathBuilder,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValuesBuilderNode value) valuesBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return widget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConditionnalNode value)? conditionnal,
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(PathBuilderNode value)? pathBuilder,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValuesBuilderNode value)? valuesBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return widget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConditionnalNode value)? conditionnal,
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(PathBuilderNode value)? pathBuilder,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValuesBuilderNode value)? valuesBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
    required TResult orElse(),
  }) {
    if (widget != null) {
      return widget(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WidgetNodeImplToJson(
      this,
    );
  }
}

abstract class WidgetNode extends WoFormNode {
  const factory WidgetNode(
      {final String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Widget Function(BuildContext)? builder}) = _$WidgetNodeImpl;
  const WidgetNode._() : super._();

  factory WidgetNode.fromJson(Map<String, dynamic> json) =
      _$WidgetNodeImpl.fromJson;

  @override
  String get id;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Widget Function(BuildContext)? get builder;

  /// Create a copy of WoFormNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetNodeImplCopyWith<_$WidgetNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FutureNode<T> {
  String get id => throw _privateConstructorUsedError;
  Future<T>? get future => throw _privateConstructorUsedError;
  WoFormNodeMixin Function(String, AsyncSnapshot<T?>) get builder =>
      throw _privateConstructorUsedError;
  T? get initialData => throw _privateConstructorUsedError;

  /// If true, when the future will be completed, the values of
  /// the children inputs will be reseted to their getInitialValues.
  bool get willResetToInitialValues => throw _privateConstructorUsedError;

  /// Create a copy of FutureNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FutureNodeCopyWith<T, FutureNode<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FutureNodeCopyWith<T, $Res> {
  factory $FutureNodeCopyWith(
          FutureNode<T> value, $Res Function(FutureNode<T>) then) =
      _$FutureNodeCopyWithImpl<T, $Res, FutureNode<T>>;
  @useResult
  $Res call(
      {String id,
      Future<T>? future,
      WoFormNodeMixin Function(String, AsyncSnapshot<T?>) builder,
      T? initialData,
      bool willResetToInitialValues});
}

/// @nodoc
class _$FutureNodeCopyWithImpl<T, $Res, $Val extends FutureNode<T>>
    implements $FutureNodeCopyWith<T, $Res> {
  _$FutureNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FutureNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? future = freezed,
    Object? builder = null,
    Object? initialData = freezed,
    Object? willResetToInitialValues = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      future: freezed == future
          ? _value.future
          : future // ignore: cast_nullable_to_non_nullable
              as Future<T>?,
      builder: null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin Function(String, AsyncSnapshot<T?>),
      initialData: freezed == initialData
          ? _value.initialData
          : initialData // ignore: cast_nullable_to_non_nullable
              as T?,
      willResetToInitialValues: null == willResetToInitialValues
          ? _value.willResetToInitialValues
          : willResetToInitialValues // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FutureNodeImplCopyWith<T, $Res>
    implements $FutureNodeCopyWith<T, $Res> {
  factory _$$FutureNodeImplCopyWith(
          _$FutureNodeImpl<T> value, $Res Function(_$FutureNodeImpl<T>) then) =
      __$$FutureNodeImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Future<T>? future,
      WoFormNodeMixin Function(String, AsyncSnapshot<T?>) builder,
      T? initialData,
      bool willResetToInitialValues});
}

/// @nodoc
class __$$FutureNodeImplCopyWithImpl<T, $Res>
    extends _$FutureNodeCopyWithImpl<T, $Res, _$FutureNodeImpl<T>>
    implements _$$FutureNodeImplCopyWith<T, $Res> {
  __$$FutureNodeImplCopyWithImpl(
      _$FutureNodeImpl<T> _value, $Res Function(_$FutureNodeImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FutureNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? future = freezed,
    Object? builder = null,
    Object? initialData = freezed,
    Object? willResetToInitialValues = null,
  }) {
    return _then(_$FutureNodeImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      future: freezed == future
          ? _value.future
          : future // ignore: cast_nullable_to_non_nullable
              as Future<T>?,
      builder: null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WoFormNodeMixin Function(String, AsyncSnapshot<T?>),
      initialData: freezed == initialData
          ? _value.initialData
          : initialData // ignore: cast_nullable_to_non_nullable
              as T?,
      willResetToInitialValues: null == willResetToInitialValues
          ? _value.willResetToInitialValues
          : willResetToInitialValues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FutureNodeImpl<T> extends _FutureNode<T> {
  const _$FutureNodeImpl(
      {required this.id,
      required this.future,
      required this.builder,
      this.initialData,
      this.willResetToInitialValues = true})
      : super._();

  @override
  final String id;
  @override
  final Future<T>? future;
  @override
  final WoFormNodeMixin Function(String, AsyncSnapshot<T?>) builder;
  @override
  final T? initialData;

  /// If true, when the future will be completed, the values of
  /// the children inputs will be reseted to their getInitialValues.
  @override
  @JsonKey()
  final bool willResetToInitialValues;

  @override
  String toString() {
    return 'FutureNode<$T>(id: $id, future: $future, builder: $builder, initialData: $initialData, willResetToInitialValues: $willResetToInitialValues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FutureNodeImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.future, future) || other.future == future) &&
            (identical(other.builder, builder) || other.builder == builder) &&
            const DeepCollectionEquality()
                .equals(other.initialData, initialData) &&
            (identical(
                    other.willResetToInitialValues, willResetToInitialValues) ||
                other.willResetToInitialValues == willResetToInitialValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      future,
      builder,
      const DeepCollectionEquality().hash(initialData),
      willResetToInitialValues);

  /// Create a copy of FutureNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FutureNodeImplCopyWith<T, _$FutureNodeImpl<T>> get copyWith =>
      __$$FutureNodeImplCopyWithImpl<T, _$FutureNodeImpl<T>>(this, _$identity);
}

abstract class _FutureNode<T> extends FutureNode<T> {
  const factory _FutureNode(
      {required final String id,
      required final Future<T>? future,
      required final WoFormNodeMixin Function(String, AsyncSnapshot<T?>)
          builder,
      final T? initialData,
      final bool willResetToInitialValues}) = _$FutureNodeImpl<T>;
  const _FutureNode._() : super._();

  @override
  String get id;
  @override
  Future<T>? get future;
  @override
  WoFormNodeMixin Function(String, AsyncSnapshot<T?>) get builder;
  @override
  T? get initialData;

  /// If true, when the future will be completed, the values of
  /// the children inputs will be reseted to their getInitialValues.
  @override
  bool get willResetToInitialValues;

  /// Create a copy of FutureNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FutureNodeImplCopyWith<T, _$FutureNodeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

RootNode _$RootNodeFromJson(Map<String, dynamic> json) {
  return _RootNode.fromJson(json);
}

/// @nodoc
mixin _$RootNode {
  String get id => throw _privateConstructorUsedError;
  @InputsListConverter()
  List<WoFormNodeMixin> get children => throw _privateConstructorUsedError;
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  WoFormUiSettings get uiSettings => throw _privateConstructorUsedError;
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings => throw _privateConstructorUsedError;

  /// Serializes this RootNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RootNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RootNodeCopyWith<RootNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootNodeCopyWith<$Res> {
  factory $RootNodeCopyWith(RootNode value, $Res Function(RootNode) then) =
      _$RootNodeCopyWithImpl<$Res, RootNode>;
  @useResult
  $Res call(
      {String id,
      @InputsListConverter() List<WoFormNodeMixin> children,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      WoFormUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      ExportSettings exportSettings});

  $WoFormUiSettingsCopyWith<$Res> get uiSettings;
  $ExportSettingsCopyWith<$Res> get exportSettings;
}

/// @nodoc
class _$RootNodeCopyWithImpl<$Res, $Val extends RootNode>
    implements $RootNodeCopyWith<$Res> {
  _$RootNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RootNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? children = null,
    Object? uiSettings = null,
    Object? exportSettings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<WoFormNodeMixin>,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as WoFormUiSettings,
      exportSettings: null == exportSettings
          ? _value.exportSettings
          : exportSettings // ignore: cast_nullable_to_non_nullable
              as ExportSettings,
    ) as $Val);
  }

  /// Create a copy of RootNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WoFormUiSettingsCopyWith<$Res> get uiSettings {
    return $WoFormUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value) as $Val);
    });
  }

  /// Create a copy of RootNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExportSettingsCopyWith<$Res> get exportSettings {
    return $ExportSettingsCopyWith<$Res>(_value.exportSettings, (value) {
      return _then(_value.copyWith(exportSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RootNodeImplCopyWith<$Res>
    implements $RootNodeCopyWith<$Res> {
  factory _$$RootNodeImplCopyWith(
          _$RootNodeImpl value, $Res Function(_$RootNodeImpl) then) =
      __$$RootNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @InputsListConverter() List<WoFormNodeMixin> children,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      WoFormUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      ExportSettings exportSettings});

  @override
  $WoFormUiSettingsCopyWith<$Res> get uiSettings;
  @override
  $ExportSettingsCopyWith<$Res> get exportSettings;
}

/// @nodoc
class __$$RootNodeImplCopyWithImpl<$Res>
    extends _$RootNodeCopyWithImpl<$Res, _$RootNodeImpl>
    implements _$$RootNodeImplCopyWith<$Res> {
  __$$RootNodeImplCopyWithImpl(
      _$RootNodeImpl _value, $Res Function(_$RootNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RootNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? children = null,
    Object? uiSettings = null,
    Object? exportSettings = null,
  }) {
    return _then(_$RootNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<WoFormNodeMixin>,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as WoFormUiSettings,
      exportSettings: null == exportSettings
          ? _value.exportSettings
          : exportSettings // ignore: cast_nullable_to_non_nullable
              as ExportSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RootNodeImpl extends _RootNode {
  const _$RootNodeImpl(
      {this.id = '#',
      @InputsListConverter() final List<WoFormNodeMixin> children = const [],
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      this.uiSettings = const WoFormUiSettings(),
      @JsonKey(toJson: ExportSettings.staticToJson)
      this.exportSettings = const ExportSettings()})
      : _children = children,
        super._();

  factory _$RootNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RootNodeImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  final List<WoFormNodeMixin> _children;
  @override
  @JsonKey()
  @InputsListConverter()
  List<WoFormNodeMixin> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  final WoFormUiSettings uiSettings;
  @override
  @JsonKey(toJson: ExportSettings.staticToJson)
  final ExportSettings exportSettings;

  @override
  String toString() {
    return 'RootNode(id: $id, children: $children, uiSettings: $uiSettings, exportSettings: $exportSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RootNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.exportSettings, exportSettings) ||
                other.exportSettings == exportSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_children),
      uiSettings,
      exportSettings);

  /// Create a copy of RootNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RootNodeImplCopyWith<_$RootNodeImpl> get copyWith =>
      __$$RootNodeImplCopyWithImpl<_$RootNodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RootNodeImplToJson(
      this,
    );
  }
}

abstract class _RootNode extends RootNode {
  const factory _RootNode(
      {final String id,
      @InputsListConverter() final List<WoFormNodeMixin> children,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      final WoFormUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      final ExportSettings exportSettings}) = _$RootNodeImpl;
  const _RootNode._() : super._();

  factory _RootNode.fromJson(Map<String, dynamic> json) =
      _$RootNodeImpl.fromJson;

  @override
  String get id;
  @override
  @InputsListConverter()
  List<WoFormNodeMixin> get children;
  @override
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  WoFormUiSettings get uiSettings;
  @override
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings;

  /// Create a copy of RootNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RootNodeImplCopyWith<_$RootNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
