// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_form.dart';

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
  @InputsListConverter()
  List<WoFormElementMixin> get inputs => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Future<void> Function(WoForm, Map<String, dynamic>)? get onSubmitting =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  OnSubmitErrorDef? get onSubmitError => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(BuildContext)? get onSubmitSuccess =>
      throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormStatus get initialStatus => throw _privateConstructorUsedError;
  bool get canModifySubmittedValues => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Future<bool?> Function(BuildContext)? get canQuit =>
      throw _privateConstructorUsedError;
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  WoFormUiSettings get uiSettings => throw _privateConstructorUsedError;
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  ThemeData Function(BuildContext)? get themeBuilder =>
      throw _privateConstructorUsedError;

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
      {@InputsListConverter() List<WoFormElementMixin> inputs,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<void> Function(WoForm, Map<String, dynamic>)? onSubmitting,
      @JsonKey(includeToJson: false, includeFromJson: false)
      OnSubmitErrorDef? onSubmitError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(BuildContext)? onSubmitSuccess,
      @JsonKey(includeToJson: false, includeFromJson: false)
      WoFormStatus initialStatus,
      bool canModifySubmittedValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<bool?> Function(BuildContext)? canQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      WoFormUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      ExportSettings exportSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      ThemeData Function(BuildContext)? themeBuilder});

  $WoFormStatusCopyWith<$Res> get initialStatus;
  $WoFormUiSettingsCopyWith<$Res> get uiSettings;
  $ExportSettingsCopyWith<$Res> get exportSettings;
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
    Object? inputs = null,
    Object? onSubmitting = freezed,
    Object? onSubmitError = freezed,
    Object? onSubmitSuccess = freezed,
    Object? initialStatus = null,
    Object? canModifySubmittedValues = null,
    Object? canQuit = freezed,
    Object? uiSettings = null,
    Object? exportSettings = null,
    Object? themeBuilder = freezed,
  }) {
    return _then(_value.copyWith(
      inputs: null == inputs
          ? _value.inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      onSubmitting: freezed == onSubmitting
          ? _value.onSubmitting
          : onSubmitting // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(WoForm, Map<String, dynamic>)?,
      onSubmitError: freezed == onSubmitError
          ? _value.onSubmitError
          : onSubmitError // ignore: cast_nullable_to_non_nullable
              as OnSubmitErrorDef?,
      onSubmitSuccess: freezed == onSubmitSuccess
          ? _value.onSubmitSuccess
          : onSubmitSuccess // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext)?,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as WoFormStatus,
      canModifySubmittedValues: null == canModifySubmittedValues
          ? _value.canModifySubmittedValues
          : canModifySubmittedValues // ignore: cast_nullable_to_non_nullable
              as bool,
      canQuit: freezed == canQuit
          ? _value.canQuit
          : canQuit // ignore: cast_nullable_to_non_nullable
              as Future<bool?> Function(BuildContext)?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as WoFormUiSettings,
      exportSettings: null == exportSettings
          ? _value.exportSettings
          : exportSettings // ignore: cast_nullable_to_non_nullable
              as ExportSettings,
      themeBuilder: freezed == themeBuilder
          ? _value.themeBuilder
          : themeBuilder // ignore: cast_nullable_to_non_nullable
              as ThemeData Function(BuildContext)?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WoFormStatusCopyWith<$Res> get initialStatus {
    return $WoFormStatusCopyWith<$Res>(_value.initialStatus, (value) {
      return _then(_value.copyWith(initialStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WoFormUiSettingsCopyWith<$Res> get uiSettings {
    return $WoFormUiSettingsCopyWith<$Res>(_value.uiSettings, (value) {
      return _then(_value.copyWith(uiSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExportSettingsCopyWith<$Res> get exportSettings {
    return $ExportSettingsCopyWith<$Res>(_value.exportSettings, (value) {
      return _then(_value.copyWith(exportSettings: value) as $Val);
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
      {@InputsListConverter() List<WoFormElementMixin> inputs,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<void> Function(WoForm, Map<String, dynamic>)? onSubmitting,
      @JsonKey(includeToJson: false, includeFromJson: false)
      OnSubmitErrorDef? onSubmitError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      void Function(BuildContext)? onSubmitSuccess,
      @JsonKey(includeToJson: false, includeFromJson: false)
      WoFormStatus initialStatus,
      bool canModifySubmittedValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Future<bool?> Function(BuildContext)? canQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      WoFormUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      ExportSettings exportSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      ThemeData Function(BuildContext)? themeBuilder});

  @override
  $WoFormStatusCopyWith<$Res> get initialStatus;
  @override
  $WoFormUiSettingsCopyWith<$Res> get uiSettings;
  @override
  $ExportSettingsCopyWith<$Res> get exportSettings;
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
    Object? inputs = null,
    Object? onSubmitting = freezed,
    Object? onSubmitError = freezed,
    Object? onSubmitSuccess = freezed,
    Object? initialStatus = null,
    Object? canModifySubmittedValues = null,
    Object? canQuit = freezed,
    Object? uiSettings = null,
    Object? exportSettings = null,
    Object? themeBuilder = freezed,
  }) {
    return _then(_$WoFormImpl(
      inputs: null == inputs
          ? _value._inputs
          : inputs // ignore: cast_nullable_to_non_nullable
              as List<WoFormElementMixin>,
      onSubmitting: freezed == onSubmitting
          ? _value.onSubmitting
          : onSubmitting // ignore: cast_nullable_to_non_nullable
              as Future<void> Function(WoForm, Map<String, dynamic>)?,
      onSubmitError: freezed == onSubmitError
          ? _value.onSubmitError
          : onSubmitError // ignore: cast_nullable_to_non_nullable
              as OnSubmitErrorDef?,
      onSubmitSuccess: freezed == onSubmitSuccess
          ? _value.onSubmitSuccess
          : onSubmitSuccess // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext)?,
      initialStatus: null == initialStatus
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as WoFormStatus,
      canModifySubmittedValues: null == canModifySubmittedValues
          ? _value.canModifySubmittedValues
          : canModifySubmittedValues // ignore: cast_nullable_to_non_nullable
              as bool,
      canQuit: freezed == canQuit
          ? _value.canQuit
          : canQuit // ignore: cast_nullable_to_non_nullable
              as Future<bool?> Function(BuildContext)?,
      uiSettings: null == uiSettings
          ? _value.uiSettings
          : uiSettings // ignore: cast_nullable_to_non_nullable
              as WoFormUiSettings,
      exportSettings: null == exportSettings
          ? _value.exportSettings
          : exportSettings // ignore: cast_nullable_to_non_nullable
              as ExportSettings,
      themeBuilder: freezed == themeBuilder
          ? _value.themeBuilder
          : themeBuilder // ignore: cast_nullable_to_non_nullable
              as ThemeData Function(BuildContext)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoFormImpl extends _WoForm {
  const _$WoFormImpl(
      {@InputsListConverter() final List<WoFormElementMixin> inputs = const [],
      @JsonKey(includeToJson: false, includeFromJson: false) this.onSubmitting,
      @JsonKey(includeToJson: false, includeFromJson: false) this.onSubmitError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.onSubmitSuccess,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.initialStatus = const InitialStatus(),
      this.canModifySubmittedValues = true,
      @JsonKey(includeToJson: false, includeFromJson: false) this.canQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      this.uiSettings = const WoFormUiSettings(),
      @JsonKey(toJson: ExportSettings.staticToJson)
      this.exportSettings = const ExportSettings(),
      @JsonKey(includeToJson: false, includeFromJson: false) this.themeBuilder})
      : _inputs = inputs,
        super._();

  factory _$WoFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoFormImplFromJson(json);

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
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Future<void> Function(WoForm, Map<String, dynamic>)? onSubmitting;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final OnSubmitErrorDef? onSubmitError;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final void Function(BuildContext)? onSubmitSuccess;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final WoFormStatus initialStatus;
  @override
  @JsonKey()
  final bool canModifySubmittedValues;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Future<bool?> Function(BuildContext)? canQuit;
  @override
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  final WoFormUiSettings uiSettings;
  @override
  @JsonKey(toJson: ExportSettings.staticToJson)
  final ExportSettings exportSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final ThemeData Function(BuildContext)? themeBuilder;

  @override
  String toString() {
    return 'WoForm(inputs: $inputs, onSubmitting: $onSubmitting, onSubmitError: $onSubmitError, onSubmitSuccess: $onSubmitSuccess, initialStatus: $initialStatus, canModifySubmittedValues: $canModifySubmittedValues, canQuit: $canQuit, uiSettings: $uiSettings, exportSettings: $exportSettings, themeBuilder: $themeBuilder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormImpl &&
            const DeepCollectionEquality().equals(other._inputs, _inputs) &&
            (identical(other.onSubmitting, onSubmitting) ||
                other.onSubmitting == onSubmitting) &&
            (identical(other.onSubmitError, onSubmitError) ||
                other.onSubmitError == onSubmitError) &&
            (identical(other.onSubmitSuccess, onSubmitSuccess) ||
                other.onSubmitSuccess == onSubmitSuccess) &&
            (identical(other.initialStatus, initialStatus) ||
                other.initialStatus == initialStatus) &&
            (identical(
                    other.canModifySubmittedValues, canModifySubmittedValues) ||
                other.canModifySubmittedValues == canModifySubmittedValues) &&
            (identical(other.canQuit, canQuit) || other.canQuit == canQuit) &&
            (identical(other.uiSettings, uiSettings) ||
                other.uiSettings == uiSettings) &&
            (identical(other.exportSettings, exportSettings) ||
                other.exportSettings == exportSettings) &&
            (identical(other.themeBuilder, themeBuilder) ||
                other.themeBuilder == themeBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_inputs),
      onSubmitting,
      onSubmitError,
      onSubmitSuccess,
      initialStatus,
      canModifySubmittedValues,
      canQuit,
      uiSettings,
      exportSettings,
      themeBuilder);

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
      {@InputsListConverter() final List<WoFormElementMixin> inputs,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Future<void> Function(WoForm, Map<String, dynamic>)? onSubmitting,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final OnSubmitErrorDef? onSubmitError,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final void Function(BuildContext)? onSubmitSuccess,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final WoFormStatus initialStatus,
      final bool canModifySubmittedValues,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Future<bool?> Function(BuildContext)? canQuit,
      @JsonKey(toJson: WoFormUiSettings.staticToJson)
      final WoFormUiSettings uiSettings,
      @JsonKey(toJson: ExportSettings.staticToJson)
      final ExportSettings exportSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final ThemeData Function(BuildContext)? themeBuilder}) = _$WoFormImpl;
  const _WoForm._() : super._();

  factory _WoForm.fromJson(Map<String, dynamic> json) = _$WoFormImpl.fromJson;

  @override
  @InputsListConverter()
  List<WoFormElementMixin> get inputs;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Future<void> Function(WoForm, Map<String, dynamic>)? get onSubmitting;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  OnSubmitErrorDef? get onSubmitError;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  void Function(BuildContext)? get onSubmitSuccess;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  WoFormStatus get initialStatus;
  @override
  bool get canModifySubmittedValues;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Future<bool?> Function(BuildContext)? get canQuit;
  @override
  @JsonKey(toJson: WoFormUiSettings.staticToJson)
  WoFormUiSettings get uiSettings;
  @override
  @JsonKey(toJson: ExportSettings.staticToJson)
  ExportSettings get exportSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  ThemeData Function(BuildContext)? get themeBuilder;
  @override
  @JsonKey(ignore: true)
  _$$WoFormImplCopyWith<_$WoFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
