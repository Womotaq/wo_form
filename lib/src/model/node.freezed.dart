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
  switch (json['runtimeType']) {
    case 'root':
      return WoForm.fromJson(json);
    case 'inputs':
      return InputsNode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormNode',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormNode {
  String get id => throw _privateConstructorUsedError;
  @InputsListConverter()
  List<WoFormElementMixin> get inputs => throw _privateConstructorUsedError;
  Map<String, dynamic>? get unmodifiableValuesJson =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)
        root,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)?
        root,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)?
        root,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WoForm value) root,
    required TResult Function(InputsNode value) inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WoForm value)? root,
    TResult? Function(InputsNode value)? inputs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WoForm value)? root,
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
      @InputsListConverter() List<WoFormElementMixin> inputs,
      Map<String, dynamic>? unmodifiableValuesJson});
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
    Object? inputs = null,
    Object? unmodifiableValuesJson = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      unmodifiableValuesJson: freezed == unmodifiableValuesJson
          ? _value.unmodifiableValuesJson
          : unmodifiableValuesJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WoFormImplCopyWith<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  factory _$$WoFormImplCopyWith(
          _$WoFormImpl value, $Res Function(_$WoFormImpl) then) =
      __$$WoFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @InputsListConverter() List<WoFormElementMixin> inputs,
      Map<String, dynamic>? unmodifiableValuesJson});
}

/// @nodoc
class __$$WoFormImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$WoFormImpl>
    implements _$$WoFormImplCopyWith<$Res> {
  __$$WoFormImplCopyWithImpl(
      _$WoFormImpl _value, $Res Function(_$WoFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inputs = null,
    Object? unmodifiableValuesJson = freezed,
  }) {
    return _then(_$WoFormImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      unmodifiableValuesJson: freezed == unmodifiableValuesJson
          ? _value._unmodifiableValuesJson
          : unmodifiableValuesJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoFormImpl extends WoForm {
  const _$WoFormImpl(
      {this.id = r'$root$',
      @InputsListConverter() final List<WoFormElementMixin> inputs = const [],
      final Map<String, dynamic>? unmodifiableValuesJson,
      final String? $type})
      : _inputs = inputs,
        _unmodifiableValuesJson = unmodifiableValuesJson,
        $type = $type ?? 'root',
        super._();

  factory _$WoFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoFormImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  final List<WoFormElementMixin> _inputs;
  @override
  @JsonKey()
  @InputsListConverter()
  List<WoFormElementMixin> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

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

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.root(id: $id, inputs: $inputs, unmodifiableValuesJson: $unmodifiableValuesJson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(
                other._unmodifiableValuesJson, _unmodifiableValuesJson));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_inputs),
      const DeepCollectionEquality().hash(_unmodifiableValuesJson));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WoFormImplCopyWith<_$WoFormImpl> get copyWith =>
      __$$WoFormImplCopyWithImpl<_$WoFormImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)
        root,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputs,
  }) {
    return root(id, this.inputs, unmodifiableValuesJson);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)?
        root,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
  }) {
    return root?.call(id, this.inputs, unmodifiableValuesJson);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)?
        root,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
    required TResult orElse(),
  }) {
    if (root != null) {
      return root(id, this.inputs, unmodifiableValuesJson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WoForm value) root,
    required TResult Function(InputsNode value) inputs,
  }) {
    return root(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WoForm value)? root,
    TResult? Function(InputsNode value)? inputs,
  }) {
    return root?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WoForm value)? root,
    TResult Function(InputsNode value)? inputs,
    required TResult orElse(),
  }) {
    if (root != null) {
      return root(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WoFormImplToJson(
      this,
    );
  }
}

abstract class WoForm extends WoFormNode {
  const factory WoForm(
      {final String id,
      @InputsListConverter() final List<WoFormElementMixin> inputs,
      final Map<String, dynamic>? unmodifiableValuesJson}) = _$WoFormImpl;
  const WoForm._() : super._();

  factory WoForm.fromJson(Map<String, dynamic> json) = _$WoFormImpl.fromJson;

  @override
  String get id;
  @override
  @InputsListConverter()
  List<WoFormElementMixin> get inputs;
  @override
  Map<String, dynamic>? get unmodifiableValuesJson;
  @override
  @JsonKey(ignore: true)
  _$$WoFormImplCopyWith<_$WoFormImpl> get copyWith =>
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
      @InputsListConverter() List<WoFormElementMixin> inputs,
      Map<String, dynamic>? unmodifiableValuesJson,
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      MapFieldSettings fieldSettings});

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
    Object? inputs = null,
    Object? unmodifiableValuesJson = freezed,
    Object? fieldSettings = null,
  }) {
    return _then(_$InputsNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      unmodifiableValuesJson: freezed == unmodifiableValuesJson
          ? _value._unmodifiableValuesJson
          : unmodifiableValuesJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as MapFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MapFieldSettingsCopyWith<$Res> get fieldSettings {
    return $MapFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$InputsNodeImpl extends InputsNode {
  const _$InputsNodeImpl(
      {required this.id,
      @InputsListConverter() final List<WoFormElementMixin> inputs = const [],
      final Map<String, dynamic>? unmodifiableValuesJson,
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      this.fieldSettings = const MapFieldSettings(),
      final String? $type})
      : _inputs = inputs,
        _unmodifiableValuesJson = unmodifiableValuesJson,
        $type = $type ?? 'inputs',
        super._();

  factory _$InputsNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputsNodeImplFromJson(json);

  @override
  final String id;
  final List<WoFormElementMixin> _inputs;
  @override
  @JsonKey()
  @InputsListConverter()
  List<WoFormElementMixin> get inputs {
    if (_inputs is EqualUnmodifiableListView) return _inputs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inputs);
  }

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

  @override
  @JsonKey(toJson: MapFieldSettings.staticToJson)
  final MapFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.inputs(id: $id, inputs: $inputs, unmodifiableValuesJson: $unmodifiableValuesJson, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputsNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            const DeepCollectionEquality().equals(
                other._unmodifiableValuesJson, _unmodifiableValuesJson) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_inputs),
      const DeepCollectionEquality().hash(_unmodifiableValuesJson),
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
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)
        root,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputs,
  }) {
    return inputs(id, this.inputs, unmodifiableValuesJson, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)?
        root,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
  }) {
    return inputs?.call(id, this.inputs, unmodifiableValuesJson, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson)?
        root,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            Map<String, dynamic>? unmodifiableValuesJson,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputs,
    required TResult orElse(),
  }) {
    if (inputs != null) {
      return inputs(id, this.inputs, unmodifiableValuesJson, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WoForm value) root,
    required TResult Function(InputsNode value) inputs,
  }) {
    return inputs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WoForm value)? root,
    TResult? Function(InputsNode value)? inputs,
  }) {
    return inputs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WoForm value)? root,
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
      @InputsListConverter() final List<WoFormElementMixin> inputs,
      final Map<String, dynamic>? unmodifiableValuesJson,
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      final MapFieldSettings fieldSettings}) = _$InputsNodeImpl;
  const InputsNode._() : super._();

  factory InputsNode.fromJson(Map<String, dynamic> json) =
      _$InputsNodeImpl.fromJson;

  @override
  String get id;
  @override
  @InputsListConverter()
  List<WoFormElementMixin> get inputs;
  @override
  Map<String, dynamic>? get unmodifiableValuesJson;
  @JsonKey(toJson: MapFieldSettings.staticToJson)
  MapFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$InputsNodeImplCopyWith<_$InputsNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
