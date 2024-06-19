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

WoFormNode _$WoFormNodeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'inputs':
      return InputsNode.fromJson(json);
    case 'valueBuilder':
      return ValueBuilderNode.fromJson(json);
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
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)
        valueBuilder,
    required TResult Function(
            String id,
            String inputPath,
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
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult? Function(
            String id,
            String inputPath,
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
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult Function(
            String id,
            String inputPath,
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
    required TResult Function(InputsNode value) inputs,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputsNode value)? inputs,
    TResult Function(ValueBuilderNode value)? valueBuilder,
    TResult Function(ValueListenerNode value)? valueListener,
    TResult Function(WidgetNode value)? widget,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inputs = null,
    Object? uiSettings = null,
    Object? exportSettings = null,
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

  @override
  @pragma('vm:prefer-inline')
  $InputsNodeUiSettingsCopyWith<$Res> get uiSettings {
    return $InputsNodeUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value));
    });
  }

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
      @InputsListConverter() final List<WoFormElementMixin> inputs = const [],
      @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
      this.uiSettings = const InputsNodeUiSettings(),
      @JsonKey(toJson: ExportSettings.staticToJson)
      this.exportSettings = const ExportSettings(),
      final String? $type})
      : _inputs = inputs,
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
    return 'WoFormNode.inputs(id: $id, inputs: $inputs, uiSettings: $uiSettings, exportSettings: $exportSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputsNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.exportSettings, exportSettings) ||
                other.exportSettings == exportSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_inputs), uiSettings, exportSettings);

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
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)
        valueBuilder,
    required TResult Function(
            String id,
            String inputPath,
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
    return inputs(id, this.inputs, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult? Function(
            String id,
            String inputPath,
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
    return inputs?.call(id, this.inputs, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult Function(
            String id,
            String inputPath,
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
      return inputs(id, this.inputs, uiSettings, exportSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputsNode value) inputs,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return inputs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return inputs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputsNode value)? inputs,
    TResult Function(ValueBuilderNode value)? valueBuilder,
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
      @InputsListConverter() final List<WoFormElementMixin> inputs,
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
  List<WoFormElementMixin> get inputs;
  @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
  InputsNodeUiSettings get uiSettings;
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings;
  @override
  @JsonKey(ignore: true)
  _$$InputsNodeImplCopyWith<_$InputsNodeImpl> get copyWith =>
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
      String inputPath,
      @JsonKey(includeToJson: false, includeFromJson: false)
      WoFormElementMixin Function(String, Object?)? builder,
      Object? defaultValue});
}

/// @nodoc
class __$$ValueBuilderNodeImplCopyWithImpl<$Res>
    extends _$WoFormNodeCopyWithImpl<$Res, _$ValueBuilderNodeImpl>
    implements _$$ValueBuilderNodeImplCopyWith<$Res> {
  __$$ValueBuilderNodeImplCopyWithImpl(_$ValueBuilderNodeImpl _value,
      $Res Function(_$ValueBuilderNodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inputPath = null,
    Object? builder = freezed,
    Object? defaultValue = freezed,
  }) {
    return _then(_$ValueBuilderNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inputPath: null == inputPath
          ? _value.inputPath
          : inputPath // ignore: cast_nullable_to_non_nullable
              as String,
      builder: freezed == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as WoFormElementMixin Function(String, Object?)?,
      defaultValue:
          freezed == defaultValue ? _value.defaultValue : defaultValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValueBuilderNodeImpl extends ValueBuilderNode {
  const _$ValueBuilderNodeImpl(
      {required this.id,
      required this.inputPath,
      @JsonKey(includeToJson: false, includeFromJson: false) this.builder,
      this.defaultValue,
      final String? $type})
      : assert(builder != null, 'ValueBuilderNode.builder cannot be null'),
        $type = $type ?? 'valueBuilder',
        super._();

  factory _$ValueBuilderNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueBuilderNodeImplFromJson(json);

  @override
  final String id;
  @override
  final String inputPath;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final WoFormElementMixin Function(String, Object?)? builder;
  @override
  final Object? defaultValue;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.valueBuilder(id: $id, inputPath: $inputPath, builder: $builder, defaultValue: $defaultValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueBuilderNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inputPath, inputPath) ||
                other.inputPath == inputPath) &&
            (identical(other.builder, builder) || other.builder == builder) &&
            const DeepCollectionEquality()
                .equals(other.defaultValue, defaultValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, inputPath, builder,
      const DeepCollectionEquality().hash(defaultValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueBuilderNodeImplCopyWith<_$ValueBuilderNodeImpl> get copyWith =>
      __$$ValueBuilderNodeImplCopyWithImpl<_$ValueBuilderNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)
        valueBuilder,
    required TResult Function(
            String id,
            String inputPath,
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
    return valueBuilder(id, inputPath, builder, defaultValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult? Function(
            String id,
            String inputPath,
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
    return valueBuilder?.call(id, inputPath, builder, defaultValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult Function(
            String id,
            String inputPath,
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
      return valueBuilder(id, inputPath, builder, defaultValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputsNode value) inputs,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return valueBuilder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return valueBuilder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputsNode value)? inputs,
    TResult Function(ValueBuilderNode value)? valueBuilder,
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
      required final String inputPath,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final WoFormElementMixin Function(String, Object?)? builder,
      final Object? defaultValue}) = _$ValueBuilderNodeImpl;
  const ValueBuilderNode._() : super._();

  factory ValueBuilderNode.fromJson(Map<String, dynamic> json) =
      _$ValueBuilderNodeImpl.fromJson;

  @override
  String get id;
  String get inputPath;
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormElementMixin Function(String, Object?)? get builder;
  Object? get defaultValue;
  @override
  @JsonKey(ignore: true)
  _$$ValueBuilderNodeImplCopyWith<_$ValueBuilderNodeImpl> get copyWith =>
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
      {String id,
      String inputPath,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? inputPath = null,
    Object? listenWhen = freezed,
    Object? listener = freezed,
  }) {
    return _then(_$ValueListenerNodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      inputPath: null == inputPath
          ? _value.inputPath
          : inputPath // ignore: cast_nullable_to_non_nullable
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
      {required this.id,
      required this.inputPath,
      @JsonKey(includeToJson: false, includeFromJson: false) this.listenWhen,
      @JsonKey(includeToJson: false, includeFromJson: false) this.listener,
      final String? $type})
      : assert(listener != null, 'ValueListenerNode.listener cannot be null'),
        $type = $type ?? 'valueListener',
        super._();

  factory _$ValueListenerNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValueListenerNodeImplFromJson(json);

  @override
  final String id;
  @override
  final String inputPath;
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
    return 'WoFormNode.valueListener(id: $id, inputPath: $inputPath, listenWhen: $listenWhen, listener: $listener)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueListenerNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.inputPath, inputPath) ||
                other.inputPath == inputPath) &&
            (identical(other.listenWhen, listenWhen) ||
                other.listenWhen == listenWhen) &&
            (identical(other.listener, listener) ||
                other.listener == listener));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, inputPath, listenWhen, listener);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueListenerNodeImplCopyWith<_$ValueListenerNodeImpl> get copyWith =>
      __$$ValueListenerNodeImplCopyWithImpl<_$ValueListenerNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)
        valueBuilder,
    required TResult Function(
            String id,
            String inputPath,
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
    return valueListener(id, inputPath, listenWhen, listener);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult? Function(
            String id,
            String inputPath,
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
    return valueListener?.call(id, inputPath, listenWhen, listener);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult Function(
            String id,
            String inputPath,
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
      return valueListener(id, inputPath, listenWhen, listener);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputsNode value) inputs,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return valueListener(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return valueListener?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputsNode value)? inputs,
    TResult Function(ValueBuilderNode value)? valueBuilder,
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
          {required final String id,
          required final String inputPath,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final bool Function(Object?, Object?)? listenWhen,
          @JsonKey(includeToJson: false, includeFromJson: false)
          final void Function(BuildContext, String, Object?)? listener}) =
      _$ValueListenerNodeImpl;
  const ValueListenerNode._() : super._();

  factory ValueListenerNode.fromJson(Map<String, dynamic> json) =
      _$ValueListenerNodeImpl.fromJson;

  @override
  String get id;
  String get inputPath;
  @JsonKey(includeToJson: false, includeFromJson: false)
  bool Function(Object?, Object?)? get listenWhen;
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(BuildContext, String, Object?)? get listener;
  @override
  @JsonKey(ignore: true)
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
      {required this.id,
      @JsonKey(includeToJson: false, includeFromJson: false) this.builder,
      final String? $type})
      : $type = $type ?? 'widget',
        super._();

  factory _$WidgetNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WidgetNodeImplFromJson(json);

  @override
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, builder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetNodeImplCopyWith<_$WidgetNodeImpl> get copyWith =>
      __$$WidgetNodeImplCopyWithImpl<_$WidgetNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        inputs,
    required TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)
        valueBuilder,
    required TResult Function(
            String id,
            String inputPath,
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
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult? Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult? Function(
            String id,
            String inputPath,
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
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormElementMixin> inputs,
            @JsonKey(toJson: InputsNodeUiSettings.staticToJson)
            InputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        inputs,
    TResult Function(
            String id,
            String inputPath,
            @JsonKey(includeToJson: false, includeFromJson: false)
            WoFormElementMixin Function(String, Object?)? builder,
            Object? defaultValue)?
        valueBuilder,
    TResult Function(
            String id,
            String inputPath,
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
    required TResult Function(InputsNode value) inputs,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return widget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return widget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputsNode value)? inputs,
    TResult Function(ValueBuilderNode value)? valueBuilder,
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
      {required final String id,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Widget Function(BuildContext)? builder}) = _$WidgetNodeImpl;
  const WidgetNode._() : super._();

  factory WidgetNode.fromJson(Map<String, dynamic> json) =
      _$WidgetNodeImpl.fromJson;

  @override
  String get id;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Widget Function(BuildContext)? get builder;
  @override
  @JsonKey(ignore: true)
  _$$WidgetNodeImplCopyWith<_$WidgetNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
