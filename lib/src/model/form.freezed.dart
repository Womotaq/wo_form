// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WoForm _$WoFormFromJson(Map<String, dynamic> json) {
  return _WoForm.fromJson(json);
}

/// @nodoc
mixin _$WoForm {
  Map<String, dynamic>? get unmodifiableValuesJson =>
      throw _privateConstructorUsedError;
  @InputsListConverter()
  List<WoFormElementMixin> get inputs => throw _privateConstructorUsedError;
  bool get initialStatusIsSubmitted => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Future<bool?> Function(BuildContext)? get onUnsubmittedQuit =>
      throw _privateConstructorUsedError;
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  WoFormUiSettings get uiSettings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WoFormCopyWith<WoForm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormCopyWith<$Res> {
  factory $WoFormCopyWith(WoForm value, $Res Function(WoForm) then) =
      _$WoFormCopyWithImpl<$Res, WoForm>;
  @useResult
  $Res call(
      {Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() List<WoFormElementMixin> inputs,
      bool initialStatusIsSubmitted,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<bool?> Function(BuildContext)? onUnsubmittedQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      WoFormUiSettings uiSettings});

  $WoFormUiSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class _$WoFormCopyWithImpl<$Res, $Val extends WoForm>
    implements $WoFormCopyWith<$Res> {
  _$WoFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unmodifiableValuesJson = freezed,
    Object? inputs = null,
    Object? initialStatusIsSubmitted = null,
    Object? onUnsubmittedQuit = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_value.copyWith(
      unmodifiableValuesJson: freezed == unmodifiableValuesJson
          ? _value.unmodifiableValuesJson
          : unmodifiableValuesJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      initialStatusIsSubmitted: null == initialStatusIsSubmitted
          ? _value.initialStatusIsSubmitted
          : initialStatusIsSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      onUnsubmittedQuit: freezed == onUnsubmittedQuit
          ? _value.onUnsubmittedQuit
          : onUnsubmittedQuit // ignore: cast_nullable_to_non_nullable
              as Future<bool?> Function(BuildContext)?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as WoFormUiSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WoFormUiSettingsCopyWith<$Res> get uiSettings {
    return $WoFormUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WoFormImplCopyWith<$Res> implements $WoFormCopyWith<$Res> {
  factory _$$WoFormImplCopyWith(
          _$WoFormImpl value, $Res Function(_$WoFormImpl) then) =
      __$$WoFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() List<WoFormElementMixin> inputs,
      bool initialStatusIsSubmitted,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<bool?> Function(BuildContext)? onUnsubmittedQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      WoFormUiSettings uiSettings});

  @override
  $WoFormUiSettingsCopyWith<$Res> get uiSettings;
}

/// @nodoc
class __$$WoFormImplCopyWithImpl<$Res>
    extends _$WoFormCopyWithImpl<$Res, _$WoFormImpl>
    implements _$$WoFormImplCopyWith<$Res> {
  __$$WoFormImplCopyWithImpl(
      _$WoFormImpl _value, $Res Function(_$WoFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unmodifiableValuesJson = freezed,
    Object? inputs = null,
    Object? initialStatusIsSubmitted = null,
    Object? onUnsubmittedQuit = freezed,
    Object? uiSettings = null,
  }) {
    return _then(_$WoFormImpl(
      unmodifiableValuesJson: freezed == unmodifiableValuesJson
          ? _value._unmodifiableValuesJson
          : unmodifiableValuesJson // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      initialStatusIsSubmitted: null == initialStatusIsSubmitted
          ? _value.initialStatusIsSubmitted
          : initialStatusIsSubmitted // ignore: cast_nullable_to_non_nullable
              as bool,
      onUnsubmittedQuit: freezed == onUnsubmittedQuit
          ? _value.onUnsubmittedQuit
          : onUnsubmittedQuit // ignore: cast_nullable_to_non_nullable
              as Future<bool?> Function(BuildContext)?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as WoFormUiSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoFormImpl extends _WoForm {
  const _$WoFormImpl(
      {final Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() final List<WoFormElementMixin> inputs = const [],
      this.initialStatusIsSubmitted = false,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onUnsubmittedQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      this.uiSettings = const WoFormUiSettings()})
      : _unmodifiableValuesJson = unmodifiableValuesJson,
        _inputs = inputs,
        super._();

  factory _$WoFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoFormImplFromJson(json);

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
  final bool initialStatusIsSubmitted;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Future<bool?> Function(BuildContext)? onUnsubmittedQuit;
  @override
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  final WoFormUiSettings uiSettings;

  @override
  String toString() {
    return 'WoForm(unmodifiableValuesJson: $unmodifiableValuesJson, inputs: $inputs, initialStatusIsSubmitted: $initialStatusIsSubmitted, onUnsubmittedQuit: $onUnsubmittedQuit, uiSettings: $uiSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormImpl &&
            const DeepCollectionEquality().equals(
                other._unmodifiableValuesJson, _unmodifiableValuesJson) &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            (identical(
                    other.initialStatusIsSubmitted, initialStatusIsSubmitted) ||
                other.initialStatusIsSubmitted == initialStatusIsSubmitted) &&
            (identical(other.onUnsubmittedQuit, onUnsubmittedQuit) ||
                other.onUnsubmittedQuit == onUnsubmittedQuit) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_unmodifiableValuesJson),
      const DeepCollectionEquality().hash(_inputs),
      initialStatusIsSubmitted,
      onUnsubmittedQuit,
      uiSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WoFormImplCopyWith<_$WoFormImpl> get copyWith =>
      __$$WoFormImplCopyWithImpl<_$WoFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WoFormImplToJson(
      this,
    );
  }
}

abstract class _WoForm extends WoForm {
  const factory _WoForm(
      {final Map<String, dynamic>? unmodifiableValuesJson,
      @InputsListConverter() final List<WoFormElementMixin> inputs,
      final bool initialStatusIsSubmitted,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Future<bool?> Function(BuildContext)? onUnsubmittedQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      final WoFormUiSettings uiSettings}) = _$WoFormImpl;
  const _WoForm._() : super._();

  factory _WoForm.fromJson(Map<String, dynamic> json) = _$WoFormImpl.fromJson;

  @override
  Map<String, dynamic>? get unmodifiableValuesJson;
  @override
  @InputsListConverter()
  List<WoFormElementMixin> get inputs;
  @override
  bool get initialStatusIsSubmitted;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Future<bool?> Function(BuildContext)? get onUnsubmittedQuit;
  @override
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  WoFormUiSettings get uiSettings;
  @override
  @JsonKey(ignore: true)
  _$$WoFormImplCopyWith<_$WoFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
