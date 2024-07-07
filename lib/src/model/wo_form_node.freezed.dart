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
  @WoFormElementConverter()
  WoFormElementMixin get input => throw _privateConstructorUsedError;
  String? get labelText => throw _privateConstructorUsedError;
  String? get helperText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {@WoFormElementConverter() WoFormElementMixin input,
      String? labelText,
      String? helperText});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_value.copyWith(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as WoFormElementMixin,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {@WoFormElementConverter() WoFormElementMixin input,
      String? labelText,
      String? helperText});
}

/// @nodoc
class __$$DynamicInputTemplateImplCopyWithImpl<$Res>
    extends _$DynamicInputTemplateCopyWithImpl<$Res, _$DynamicInputTemplateImpl>
    implements _$$DynamicInputTemplateImplCopyWith<$Res> {
  __$$DynamicInputTemplateImplCopyWithImpl(_$DynamicInputTemplateImpl _value,
      $Res Function(_$DynamicInputTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
    Object? labelText = freezed,
    Object? helperText = freezed,
  }) {
    return _then(_$DynamicInputTemplateImpl(
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as WoFormElementMixin,
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      helperText: freezed == helperText
          ? _value.helperText
          : helperText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DynamicInputTemplateImpl extends _DynamicInputTemplate {
  const _$DynamicInputTemplateImpl(
      {@WoFormElementConverter() required this.input,
      this.labelText,
      this.helperText})
      : super._();

  factory _$DynamicInputTemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DynamicInputTemplateImplFromJson(json);

  @override
  @WoFormElementConverter()
  final WoFormElementMixin input;
  @override
  final String? labelText;
  @override
  final String? helperText;

  @override
  String toString() {
    return 'DynamicInputTemplate(input: $input, labelText: $labelText, helperText: $helperText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicInputTemplateImpl &&
            (identical(other.input, input) || other.input == input) &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.helperText, helperText) ||
                other.helperText == helperText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, input, labelText, helperText);

  @JsonKey(ignore: true)
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
      {@WoFormElementConverter() required final WoFormElementMixin input,
      final String? labelText,
      final String? helperText}) = _$DynamicInputTemplateImpl;
  const _DynamicInputTemplate._() : super._();

  factory _DynamicInputTemplate.fromJson(Map<String, dynamic> json) =
      _$DynamicInputTemplateImpl.fromJson;

  @override
  @WoFormElementConverter()
  WoFormElementMixin get input;
  @override
  String? get labelText;
  @override
  String? get helperText;
  @override
  @JsonKey(ignore: true)
  _$$DynamicInputTemplateImplCopyWith<_$DynamicInputTemplateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WoFormNode _$WoFormNodeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dynamicInputs':
      return DynamicInputsNode.fromJson(json);
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
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
            Object? initialValue)
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DynamicInputsNode value)? dynamicInputs,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? templates = null,
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

  @override
  @pragma('vm:prefer-inline')
  $DynamicInputsNodeUiSettingsCopyWith<$Res> get uiSettings {
    return $DynamicInputsNodeUiSettingsCopyWith<$Res>(_value.uiSettings,
        (value) {
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
class _$DynamicInputsNodeImpl extends DynamicInputsNode {
  const _$DynamicInputsNodeImpl(
      {required this.id,
      @DynamicInputTemplatesConverter()
      final List<DynamicInputTemplate> templates = const [],
      @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
      this.uiSettings = const DynamicInputsNodeUiSettings(),
      @JsonKey(toJson: ExportSettings.staticToJson)
      this.exportSettings = const ExportSettings(),
      final String? $type})
      : _templates = templates,
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
    return 'WoFormNode.dynamicInputs(id: $id, templates: $templates, uiSettings: $uiSettings, exportSettings: $exportSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicInputsNodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._templates, _templates) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.exportSettings, exportSettings) ||
                other.exportSettings == exportSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_templates),
      uiSettings,
      exportSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicInputsNodeImplCopyWith<_$DynamicInputsNodeImpl> get copyWith =>
      __$$DynamicInputsNodeImplCopyWithImpl<_$DynamicInputsNodeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
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
            Object? initialValue)
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
    return dynamicInputs(id, templates, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
    return dynamicInputs?.call(id, templates, uiSettings, exportSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
    if (dynamicInputs != null) {
      return dynamicInputs(id, templates, uiSettings, exportSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DynamicInputsNode value) dynamicInputs,
    required TResult Function(InputsNode value) inputs,
    required TResult Function(ValueBuilderNode value) valueBuilder,
    required TResult Function(ValueListenerNode value) valueListener,
    required TResult Function(WidgetNode value) widget,
  }) {
    return dynamicInputs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
    TResult? Function(InputsNode value)? inputs,
    TResult? Function(ValueBuilderNode value)? valueBuilder,
    TResult? Function(ValueListenerNode value)? valueListener,
    TResult? Function(WidgetNode value)? widget,
  }) {
    return dynamicInputs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DynamicInputsNode value)? dynamicInputs,
    TResult Function(InputsNode value)? inputs,
    TResult Function(ValueBuilderNode value)? valueBuilder,
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
  @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
  DynamicInputsNodeUiSettings get uiSettings;
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings;
  @override
  @JsonKey(ignore: true)
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
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
            Object? initialValue)
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
    required TResult Function(DynamicInputsNode value) dynamicInputs,
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
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
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
    TResult Function(DynamicInputsNode value)? dynamicInputs,
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
      Object? initialValue});
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
    Object? initialValue = freezed,
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
      required this.inputPath,
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
  final String inputPath;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final WoFormElementMixin Function(String, Object?)? builder;
  @override
  final Object? initialValue;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormNode.valueBuilder(id: $id, inputPath: $inputPath, builder: $builder, initialValue: $initialValue)';
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
                .equals(other.initialValue, initialValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, inputPath, builder,
      const DeepCollectionEquality().hash(initialValue));

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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
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
            Object? initialValue)
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
    return valueBuilder(id, inputPath, builder, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
    return valueBuilder?.call(id, inputPath, builder, initialValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
      return valueBuilder(id, inputPath, builder, initialValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DynamicInputsNode value) dynamicInputs,
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
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
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
    TResult Function(DynamicInputsNode value)? dynamicInputs,
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
      final Object? initialValue}) = _$ValueBuilderNodeImpl;
  const ValueBuilderNode._() : super._();

  factory ValueBuilderNode.fromJson(Map<String, dynamic> json) =
      _$ValueBuilderNodeImpl.fromJson;

  @override
  String get id;
  String get inputPath;
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormElementMixin Function(String, Object?)? get builder;
  Object? get initialValue;
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
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
            Object? initialValue)
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
    required TResult Function(DynamicInputsNode value) dynamicInputs,
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
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
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
    TResult Function(DynamicInputsNode value)? dynamicInputs,
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)
        dynamicInputs,
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
            Object? initialValue)
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
            @DynamicInputTemplatesConverter()
            List<DynamicInputTemplate> templates,
            @JsonKey(toJson: DynamicInputsNodeUiSettings.staticToJson)
            DynamicInputsNodeUiSettings uiSettings,
            @JsonKey(toJson: ExportSettings.staticToJson)
            ExportSettings exportSettings)?
        dynamicInputs,
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
            Object? initialValue)?
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
    required TResult Function(DynamicInputsNode value) dynamicInputs,
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
    TResult? Function(DynamicInputsNode value)? dynamicInputs,
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
    TResult Function(DynamicInputsNode value)? dynamicInputs,
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

/// @nodoc
mixin _$FutureNode<T> {
  String get id => throw _privateConstructorUsedError;
  Future<T>? get future => throw _privateConstructorUsedError;
  WoFormElementMixin Function(String, AsyncSnapshot<T?>) get builder =>
      throw _privateConstructorUsedError;
  T? get initialData => throw _privateConstructorUsedError;

  /// If true, when the future will be completed, the values of
  /// the children inputs will be reseted to their initialValues.
  bool get willResetToInitialValues => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
      WoFormElementMixin Function(String, AsyncSnapshot<T?>) builder,
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
              as WoFormElementMixin Function(String, AsyncSnapshot<T?>),
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
      WoFormElementMixin Function(String, AsyncSnapshot<T?>) builder,
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
              as WoFormElementMixin Function(String, AsyncSnapshot<T?>),
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
  final WoFormElementMixin Function(String, AsyncSnapshot<T?>) builder;
  @override
  final T? initialData;

  /// If true, when the future will be completed, the values of
  /// the children inputs will be reseted to their initialValues.
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FutureNodeImplCopyWith<T, _$FutureNodeImpl<T>> get copyWith =>
      __$$FutureNodeImplCopyWithImpl<T, _$FutureNodeImpl<T>>(this, _$identity);
}

abstract class _FutureNode<T> extends FutureNode<T> {
  const factory _FutureNode(
      {required final String id,
      required final Future<T>? future,
      required final WoFormElementMixin Function(String, AsyncSnapshot<T?>)
          builder,
      final T? initialData,
      final bool willResetToInitialValues}) = _$FutureNodeImpl<T>;
  const _FutureNode._() : super._();

  @override
  String get id;
  @override
  Future<T>? get future;
  @override
  WoFormElementMixin Function(String, AsyncSnapshot<T?>) get builder;
  @override
  T? get initialData;
  @override

  /// If true, when the future will be completed, the values of
  /// the children inputs will be reseted to their initialValues.
  bool get willResetToInitialValues;
  @override
  @JsonKey(ignore: true)
  _$$FutureNodeImplCopyWith<T, _$FutureNodeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
