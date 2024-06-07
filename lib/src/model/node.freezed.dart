// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WoFormNode _$WoFormNodeFromJson(Map<String, dynamic> json) {
  return InputsNode.fromJson(json);
}

/// @nodoc
mixin _$WoFormNode {
  String get id => throw _privateConstructorUsedError;
  Map<String, dynamic>? get unmodifiableValuesJson =>
      throw _privateConstructorUsedError;
  @InputsListConverter()
  List<WoFormElementMixin> get inputs => throw _privateConstructorUsedError;
  NodeExportType get exportType => throw _privateConstructorUsedError;
  @JsonKey(toJson: NodeFieldSettings.staticToJson)
  NodeFieldSettings get uiSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            NodeExportType exportType,
            @JsonKey(toJson: NodeFieldSettings.staticToJson)
            NodeFieldSettings uiSettings)
        inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            NodeExportType exportType,
            @JsonKey(toJson: NodeFieldSettings.staticToJson)
            NodeFieldSettings uiSettings)?
        inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            NodeExportType exportType,
            @JsonKey(toJson: NodeFieldSettings.staticToJson)
            NodeFieldSettings uiSettings)?
        inputs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputsNode value) inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputsNode value)? inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputsNode value)? inputs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WoFormNodeCopyWith<WoFormNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormNodeCopyWith<$Res> {
  factory $WoFormNodeCopyWith(
          WoFormNode value, $Res Function(WoFormNode) then) =
      _$WoFormNodeCopyWithImpl<$Res, WoFormNode>;
  @useResult
  $Res call(
      {String id,
      Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() List<WoFormElementMixin> inputs,
      NodeExportType exportType,
      @JsonKey(toJson: NodeFieldSettings.staticToJson)
      NodeFieldSettings uiSettings});

  $NodeFieldSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class _$WoFormNodeCopyWithImpl<$Res, $Val extends WoFormNode>
    implements $WoFormNodeCopyWith<$Res> {
  _$WoFormNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unmodifiableValuesJson = freezed,
    Object? inputs = null,
    Object? exportType = null,
    Object? uiSettings = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      unmodifiableValuesJson: freezed == unmodifiableValuesJson
          ? _value.unmodifiableValuesJson
          : unmodifiableValuesJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      exportType: null == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as NodeExportType,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as NodeFieldSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NodeFieldSettingsCopyWith<$Res> get uiSettings {
    return $NodeFieldSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value) as $Val);
    });
  }
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
      Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() List<WoFormElementMixin> inputs,
      NodeExportType exportType,
      @JsonKey(toJson: NodeFieldSettings.staticToJson)
      NodeFieldSettings uiSettings});

  @override
  $NodeFieldSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class __$$InputsNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$InputsNodeImpl>
    implements _$$InputsNodeImplCopyWith<$Res> {
  __$$InputsNodeImplCopyWithImpl(
      _$InputsNodeImpl _value, $Res Function(_$InputsNodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unmodifiableValuesJson = freezed,
    Object? inputs = null,
    Object? exportType = null,
    Object? uiSettings = null,
  }) {
    return _then(_$InputsNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      unmodifiableValuesJson: freezed == unmodifiableValuesJson
          ? _value._unmodifiableValuesJson
          : unmodifiableValuesJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      exportType: null == exportType
          ? _value.exportType
          : exportType // ignore: cast_nullable_to_non_nullable
              as NodeExportType,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as NodeFieldSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputsNodeImpl extends InputsNode {
  const _$InputsNodeImpl(
      {required this.id,
      final Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() final List<WoFormElementMixin> inputs = const [],
      this.exportType = NodeExportType.map,
      @JsonKey(toJson: NodeFieldSettings.staticToJson)
      this.uiSettings = const NodeFieldSettings()})
      : _unmodifiableValuesJson = unmodifiableValuesJson,
        _inputs = inputs,
        super._();

  factory _$InputsNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputsNodeImplFromJson(json);

  @override
  final String id;
  final Map<String, dynamic>? _unmodifiableValuesJson;
  @override
  Map<String, dynamic>? get unmodifiableValuesJson {
    final value = _unmodifiableValuesJson;
    if (value == null) return null;
    if (_unmodifiableValuesJson is EqualUnmodifiableMapView)
      return _unmodifiableValuesJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<WoFormElementMixin> _inputs;
  @override
  @JsonKey()
  @InputsListConverter()
  List<WoFormElementMixin> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

  @override
  @JsonKey()
  final NodeExportType exportType;
  @override
  @JsonKey(toJson: NodeFieldSettings.staticToJson)
  final NodeFieldSettings uiSettings;

  @override
  String toString() {
    return 'WoFormNode.inputs(id: $id, unmodifiableValuesJson: $unmodifiableValuesJson, inputs: $inputs, exportType: $exportType, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputsNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(
                other._unmodifiableValuesJson, _unmodifiableValuesJson) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            (identical(other.exportType, exportType) ||
                other.exportType == exportType) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_unmodifiableValuesJson),
      const DeepCollectionEquality().hash(_inputs),
      exportType,
      uiSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputsNodeImplCopyWith<_$InputsNodeImpl> get copyWith =>
      __$$InputsNodeImplCopyWithImpl<_$InputsNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            NodeExportType exportType,
            @JsonKey(toJson: NodeFieldSettings.staticToJson)
            NodeFieldSettings uiSettings)
        inputs,
  }) {
    return inputs(
        id, unmodifiableValuesJson, this.inputs, exportType, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            NodeExportType exportType,
            @JsonKey(toJson: NodeFieldSettings.staticToJson)
            NodeFieldSettings uiSettings)?
        inputs,
  }) {
    return inputs?.call(
        id, unmodifiableValuesJson, this.inputs, exportType, uiSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            NodeExportType exportType,
            @JsonKey(toJson: NodeFieldSettings.staticToJson)
            NodeFieldSettings uiSettings)?
        inputs,
    required TResult orElse(),
  }) {
    if (inputs != null) {
      return inputs(
          id, unmodifiableValuesJson, this.inputs, exportType, uiSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputsNode value) inputs,
  }) {
    return inputs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputsNode value)? inputs,
  }) {
    return inputs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputsNode value)? inputs,
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
      final Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() final List<WoFormElementMixin> inputs,
      final NodeExportType exportType,
      @JsonKey(toJson: NodeFieldSettings.staticToJson)
      final NodeFieldSettings uiSettings}) = _$InputsNodeImpl;
  const InputsNode._() : super._();

  factory InputsNode.fromJson(Map<String, dynamic> json) =
      _$InputsNodeImpl.fromJson;

  @override
  String get id;
  @override
  Map<String, dynamic>? get unmodifiableValuesJson;
  @override
  @InputsListConverter()
  List<WoFormElementMixin> get inputs;
  @override
  NodeExportType get exportType;
  @override
  @JsonKey(toJson: NodeFieldSettings.staticToJson)
  NodeFieldSettings get uiSettings;
  @override
  @JsonKey(ignore: true)
  _$$InputsNodeImplCopyWith<_$InputsNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
