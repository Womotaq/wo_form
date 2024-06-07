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
  @JsonKey(toJson: MapFieldSettings.staticToJson)
  MapFieldSettings get fieldSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
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
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      MapFieldSettings fieldSettings});

  $MapFieldSettingsCopyWith<$Res> get fieldSettings;
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
    Object? fieldSettings = null,
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
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as MapFieldSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MapFieldSettingsCopyWith<$Res> get fieldSettings {
    return $MapFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value) as $Val);
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
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      MapFieldSettings fieldSettings});

  @override
  $MapFieldSettingsCopyWith<$Res> get fieldSettings;
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
    Object? fieldSettings = null,
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
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as MapFieldSettings,
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
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      this.fieldSettings = const MapFieldSettings()})
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
  @JsonKey(toJson: MapFieldSettings.staticToJson)
  final MapFieldSettings fieldSettings;

  @override
  String toString() {
    return 'WoFormNode.inputs(id: $id, unmodifiableValuesJson: $unmodifiableValuesJson, inputs: $inputs, fieldSettings: $fieldSettings)';
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
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_unmodifiableValuesJson),
      const DeepCollectionEquality().hash(_inputs),
      fieldSettings);

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
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputs,
  }) {
    return inputs(id, unmodifiableValuesJson, this.inputs, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
  }) {
    return inputs?.call(id, unmodifiableValuesJson, this.inputs, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            Map<String, dynamic>? unmodifiableValuesJson,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
    required TResult orElse(),
  }) {
    if (inputs != null) {
      return inputs(id, unmodifiableValuesJson, this.inputs, fieldSettings);
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
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      final MapFieldSettings fieldSettings}) = _$InputsNodeImpl;
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
  @JsonKey(toJson: MapFieldSettings.staticToJson)
  MapFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$InputsNodeImplCopyWith<_$InputsNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
