// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WoFormInput _$WoFormInputFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'boolean':
      return BooleanInput.fromJson(json);
    case 'inputsList':
      return InputsListInput.fromJson(json);
    case 'num':
      return NumInput.fromJson(json);
    case 'selectString':
      return SelectStringInput.fromJson(json);
    case 'string':
      return StringInput.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormInput',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormInput {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  Object get fieldSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputsList,
    required TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult? Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(InputsListInput value) inputsList,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(InputsListInput value)? inputsList,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(InputsListInput value)? inputsList,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WoFormInputCopyWith<WoFormInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormInputCopyWith<$Res> {
  factory $WoFormInputCopyWith(
          WoFormInput value, $Res Function(WoFormInput) then) =
      _$WoFormInputCopyWithImpl<$Res, WoFormInput>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$WoFormInputCopyWithImpl<$Res, $Val extends WoFormInput>
    implements $WoFormInputCopyWith<$Res> {
  _$WoFormInputCopyWithImpl(this._value, this._then);

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
abstract class _$$BooleanInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$BooleanInputImplCopyWith(
          _$BooleanInputImpl value, $Res Function(_$BooleanInputImpl) then) =
      __$$BooleanInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool? value,
      bool isRequired,
      @JsonKey(toJson: BooleanFieldSettings.staticToJson)
      BooleanFieldSettings fieldSettings});

  $BooleanFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$BooleanInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$BooleanInputImpl>
    implements _$$BooleanInputImplCopyWith<$Res> {
  __$$BooleanInputImplCopyWithImpl(
      _$BooleanInputImpl _value, $Res Function(_$BooleanInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$BooleanInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as BooleanFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BooleanFieldSettingsCopyWith<$Res> get fieldSettings {
    return $BooleanFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanInputImpl extends BooleanInput {
  const _$BooleanInputImpl(
      {required this.id,
      this.value,
      this.isRequired = false,
      @JsonKey(toJson: BooleanFieldSettings.staticToJson)
      this.fieldSettings = const BooleanFieldSettings(),
      final String? $type})
      : $type = $type ?? 'boolean',
        super._();

  factory _$BooleanInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanInputImplFromJson(json);

  @override
  final String id;
  @override
  final bool? value;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  final BooleanFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.boolean(id: $id, value: $value, isRequired: $isRequired, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, value, isRequired, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanInputImplCopyWith<_$BooleanInputImpl> get copyWith =>
      __$$BooleanInputImplCopyWithImpl<_$BooleanInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputsList,
    required TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return boolean(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult? Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return boolean?.call(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(id, value, isRequired, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(InputsListInput value) inputsList,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(InputsListInput value)? inputsList,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(InputsListInput value)? inputsList,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanInputImplToJson(
      this,
    );
  }
}

abstract class BooleanInput extends WoFormInput {
  const factory BooleanInput(
      {required final String id,
      final bool? value,
      final bool isRequired,
      @JsonKey(toJson: BooleanFieldSettings.staticToJson)
      final BooleanFieldSettings fieldSettings}) = _$BooleanInputImpl;
  const BooleanInput._() : super._();

  factory BooleanInput.fromJson(Map<String, dynamic> json) =
      _$BooleanInputImpl.fromJson;

  @override
  String get id;
  bool? get value;
  bool get isRequired;
  @override
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  BooleanFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$BooleanInputImplCopyWith<_$BooleanInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputsListInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$InputsListInputImplCopyWith(_$InputsListInputImpl value,
          $Res Function(_$InputsListInputImpl) then) =
      __$$InputsListInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @InputsListConverter() List<WoFormInputMixin>? value,
      bool isRequired,
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      MapFieldSettings fieldSettings});

  $MapFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$InputsListInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$InputsListInputImpl>
    implements _$$InputsListInputImplCopyWith<$Res> {
  __$$InputsListInputImplCopyWithImpl(
      _$InputsListInputImpl _value, $Res Function(_$InputsListInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$InputsListInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<WoFormInputMixin>?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$InputsListInputImpl extends InputsListInput {
  const _$InputsListInputImpl(
      {required this.id,
      @InputsListConverter() final List<WoFormInputMixin>? value,
      this.isRequired = false,
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      this.fieldSettings = const MapFieldSettings(),
      final String? $type})
      : _value = value,
        $type = $type ?? 'inputsList',
        super._();

  factory _$InputsListInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputsListInputImplFromJson(json);

  @override
  final String id;
  final List<WoFormInputMixin>? _value;
  @override
  @InputsListConverter()
  List<WoFormInputMixin>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey(toJson: MapFieldSettings.staticToJson)
  final MapFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.inputsList(id: $id, value: $value, isRequired: $isRequired, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputsListInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_value), isRequired, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputsListInputImplCopyWith<_$InputsListInputImpl> get copyWith =>
      __$$InputsListInputImplCopyWithImpl<_$InputsListInputImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputsList,
    required TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return inputsList(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult? Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return inputsList?.call(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (inputsList != null) {
      return inputsList(id, value, isRequired, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(InputsListInput value) inputsList,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return inputsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(InputsListInput value)? inputsList,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return inputsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(InputsListInput value)? inputsList,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (inputsList != null) {
      return inputsList(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputsListInputImplToJson(
      this,
    );
  }
}

abstract class InputsListInput extends WoFormInput {
  const factory InputsListInput(
      {required final String id,
      @InputsListConverter() final List<WoFormInputMixin>? value,
      final bool isRequired,
      @JsonKey(toJson: MapFieldSettings.staticToJson)
      final MapFieldSettings fieldSettings}) = _$InputsListInputImpl;
  const InputsListInput._() : super._();

  factory InputsListInput.fromJson(Map<String, dynamic> json) =
      _$InputsListInputImpl.fromJson;

  @override
  String get id;
  @InputsListConverter()
  List<WoFormInputMixin>? get value;
  bool get isRequired;
  @override
  @JsonKey(toJson: MapFieldSettings.staticToJson)
  MapFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$InputsListInputImplCopyWith<_$InputsListInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$NumInputImplCopyWith(
          _$NumInputImpl value, $Res Function(_$NumInputImpl) then) =
      __$$NumInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, num? value, bool isRequired, NumFieldSettings fieldSettings});

  $NumFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$NumInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$NumInputImpl>
    implements _$$NumInputImplCopyWith<$Res> {
  __$$NumInputImplCopyWithImpl(
      _$NumInputImpl _value, $Res Function(_$NumInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$NumInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as num?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as NumFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NumFieldSettingsCopyWith<$Res> get fieldSettings {
    return $NumFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$NumInputImpl extends NumInput {
  const _$NumInputImpl(
      {required this.id,
      this.value,
      this.isRequired = false,
      this.fieldSettings = const NumFieldSettings(),
      final String? $type})
      : $type = $type ?? 'num',
        super._();

  factory _$NumInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$NumInputImplFromJson(json);

  @override
  final String id;
  @override
  final num? value;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final NumFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.num(id: $id, value: $value, isRequired: $isRequired, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, value, isRequired, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumInputImplCopyWith<_$NumInputImpl> get copyWith =>
      __$$NumInputImplCopyWithImpl<_$NumInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputsList,
    required TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return num(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult? Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return num?.call(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(id, value, isRequired, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(InputsListInput value) inputsList,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return num(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(InputsListInput value)? inputsList,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return num?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(InputsListInput value)? inputsList,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (num != null) {
      return num(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NumInputImplToJson(
      this,
    );
  }
}

abstract class NumInput extends WoFormInput {
  const factory NumInput(
      {required final String id,
      final num? value,
      final bool isRequired,
      final NumFieldSettings fieldSettings}) = _$NumInputImpl;
  const NumInput._() : super._();

  factory NumInput.fromJson(Map<String, dynamic> json) =
      _$NumInputImpl.fromJson;

  @override
  String get id;
  num? get value;
  bool get isRequired;
  @override
  NumFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$NumInputImplCopyWith<_$NumInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectStringInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$SelectStringInputImplCopyWith(_$SelectStringInputImpl value,
          $Res Function(_$SelectStringInputImpl) then) =
      __$$SelectStringInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? maxCount,
      List<String>? selectedValues,
      List<String>? availibleValues,
      int? minCount,
      SelectFieldSettings fieldSettings});

  $SelectFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$SelectStringInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$SelectStringInputImpl>
    implements _$$SelectStringInputImplCopyWith<$Res> {
  __$$SelectStringInputImplCopyWithImpl(_$SelectStringInputImpl _value,
      $Res Function(_$SelectStringInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? selectedValues = freezed,
    Object? availibleValues = freezed,
    Object? minCount = freezed,
    Object? fieldSettings = null,
  }) {
    return _then(_$SelectStringInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedValues: freezed == selectedValues
          ? _value._selectedValues
          : selectedValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      availibleValues: freezed == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minCount: freezed == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<$Res> get fieldSettings {
    return $SelectFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectStringInputImpl extends SelectStringInput {
  const _$SelectStringInputImpl(
      {required this.id,
      required this.maxCount,
      final List<String>? selectedValues,
      final List<String>? availibleValues,
      this.minCount,
      this.fieldSettings = const SelectFieldSettings(),
      final String? $type})
      : _selectedValues = selectedValues,
        _availibleValues = availibleValues,
        $type = $type ?? 'selectString',
        super._();

  factory _$SelectStringInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectStringInputImplFromJson(json);

  @override
  final String id;
  @override
  final int? maxCount;
  final List<String>? _selectedValues;
  @override
  List<String>? get selectedValues {
    final value = _selectedValues;
    if (value == null) return null;
    if (_selectedValues is EqualUnmodifiableListView) return _selectedValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _availibleValues;
  @override
  List<String>? get availibleValues {
    final value = _availibleValues;
    if (value == null) return null;
    if (_availibleValues is EqualUnmodifiableListView) return _availibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? minCount;
  @override
  @JsonKey()
  final SelectFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.selectString(id: $id, maxCount: $maxCount, selectedValues: $selectedValues, availibleValues: $availibleValues, minCount: $minCount, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStringInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            const DeepCollectionEquality()
                .equals(other._selectedValues, _selectedValues) &&
            const DeepCollectionEquality()
                .equals(other._availibleValues, _availibleValues) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      const DeepCollectionEquality().hash(_selectedValues),
      const DeepCollectionEquality().hash(_availibleValues),
      minCount,
      fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectStringInputImplCopyWith<_$SelectStringInputImpl> get copyWith =>
      __$$SelectStringInputImplCopyWithImpl<_$SelectStringInputImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputsList,
    required TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return selectString(
        id, maxCount, selectedValues, availibleValues, minCount, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult? Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return selectString?.call(
        id, maxCount, selectedValues, availibleValues, minCount, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (selectString != null) {
      return selectString(id, maxCount, selectedValues, availibleValues,
          minCount, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(InputsListInput value) inputsList,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return selectString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(InputsListInput value)? inputsList,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return selectString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(InputsListInput value)? inputsList,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (selectString != null) {
      return selectString(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectStringInputImplToJson(
      this,
    );
  }
}

abstract class SelectStringInput extends WoFormInput {
  const factory SelectStringInput(
      {required final String id,
      required final int? maxCount,
      final List<String>? selectedValues,
      final List<String>? availibleValues,
      final int? minCount,
      final SelectFieldSettings fieldSettings}) = _$SelectStringInputImpl;
  const SelectStringInput._() : super._();

  factory SelectStringInput.fromJson(Map<String, dynamic> json) =
      _$SelectStringInputImpl.fromJson;

  @override
  String get id;
  int? get maxCount;
  List<String>? get selectedValues;
  List<String>? get availibleValues;
  int? get minCount;
  @override
  SelectFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$SelectStringInputImplCopyWith<_$SelectStringInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringInputImplCopyWith<$Res>
    implements $WoFormInputCopyWith<$Res> {
  factory _$$StringInputImplCopyWith(
          _$StringInputImpl value, $Res Function(_$StringInputImpl) then) =
      __$$StringInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? value,
      bool isRequired,
      String? regexPattern,
      @JsonKey(toJson: StringFieldSettings.staticToJson)
      StringFieldSettings fieldSettings});

  $StringFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$StringInputImplCopyWithImpl<$Res>
    extends _$WoFormInputCopyWithImpl<$Res, _$StringInputImpl>
    implements _$$StringInputImplCopyWith<$Res> {
  __$$StringInputImplCopyWithImpl(
      _$StringInputImpl _value, $Res Function(_$StringInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? isRequired = null,
    Object? regexPattern = freezed,
    Object? fieldSettings = null,
  }) {
    return _then(_$StringInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      regexPattern: freezed == regexPattern
          ? _value.regexPattern
          : regexPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as StringFieldSettings,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StringFieldSettingsCopyWith<$Res> get fieldSettings {
    return $StringFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$StringInputImpl extends StringInput {
  const _$StringInputImpl(
      {required this.id,
      this.value,
      this.isRequired = false,
      this.regexPattern,
      @JsonKey(toJson: StringFieldSettings.staticToJson)
      this.fieldSettings = const StringFieldSettings(),
      final String? $type})
      : $type = $type ?? 'string',
        super._();

  factory _$StringInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringInputImplFromJson(json);

  @override
  final String id;
  @override
  final String? value;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  final String? regexPattern;
  @override
  @JsonKey(toJson: StringFieldSettings.staticToJson)
  final StringFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.string(id: $id, value: $value, isRequired: $isRequired, regexPattern: $regexPattern, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.regexPattern, regexPattern) ||
                other.regexPattern == regexPattern) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, value, isRequired, regexPattern, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringInputImplCopyWith<_$StringInputImpl> get copyWith =>
      __$$StringInputImplCopyWithImpl<_$StringInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)
        inputsList,
    required TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)
        num,
    required TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)
        selectString,
    required TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
  }) {
    return string(id, value, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult? Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult? Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult? Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
  }) {
    return string?.call(id, value, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool? value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            @InputsListConverter() List<WoFormInputMixin>? value,
            bool isRequired,
            @JsonKey(toJson: MapFieldSettings.staticToJson)
            MapFieldSettings fieldSettings)?
        inputsList,
    TResult Function(String id, num? value, bool isRequired,
            NumFieldSettings fieldSettings)?
        num,
    TResult Function(
            String id,
            int? maxCount,
            List<String>? selectedValues,
            List<String>? availibleValues,
            int? minCount,
            SelectFieldSettings fieldSettings)?
        selectString,
    TResult Function(
            String id,
            String? value,
            bool isRequired,
            String? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(id, value, isRequired, regexPattern, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(InputsListInput value) inputsList,
    required TResult Function(NumInput value) num,
    required TResult Function(SelectStringInput value) selectString,
    required TResult Function(StringInput value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(InputsListInput value)? inputsList,
    TResult? Function(NumInput value)? num,
    TResult? Function(SelectStringInput value)? selectString,
    TResult? Function(StringInput value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(InputsListInput value)? inputsList,
    TResult Function(NumInput value)? num,
    TResult Function(SelectStringInput value)? selectString,
    TResult Function(StringInput value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringInputImplToJson(
      this,
    );
  }
}

abstract class StringInput extends WoFormInput {
  const factory StringInput(
      {required final String id,
      final String? value,
      final bool isRequired,
      final String? regexPattern,
      @JsonKey(toJson: StringFieldSettings.staticToJson)
      final StringFieldSettings fieldSettings}) = _$StringInputImpl;
  const StringInput._() : super._();

  factory StringInput.fromJson(Map<String, dynamic> json) =
      _$StringInputImpl.fromJson;

  @override
  String get id;
  String? get value;
  bool get isRequired;
  String? get regexPattern;
  @override
  @JsonKey(toJson: StringFieldSettings.staticToJson)
  StringFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$StringInputImplCopyWith<_$StringInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ListInput<T> {
  String get id => throw _privateConstructorUsedError;
  List<T>? get value => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListInputCopyWith<T, ListInput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListInputCopyWith<T, $Res> {
  factory $ListInputCopyWith(
          ListInput<T> value, $Res Function(ListInput<T>) then) =
      _$ListInputCopyWithImpl<T, $Res, ListInput<T>>;
  @useResult
  $Res call(
      {String id,
      List<T>? value,
      bool isRequired,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});
}

/// @nodoc
class _$ListInputCopyWithImpl<T, $Res, $Val extends ListInput<T>>
    implements $ListInputCopyWith<T, $Res> {
  _$ListInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? isRequired = null,
    Object? toJsonT = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListInputImplCopyWith<T, $Res>
    implements $ListInputCopyWith<T, $Res> {
  factory _$$ListInputImplCopyWith(
          _$ListInputImpl<T> value, $Res Function(_$ListInputImpl<T>) then) =
      __$$ListInputImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<T>? value,
      bool isRequired,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});
}

/// @nodoc
class __$$ListInputImplCopyWithImpl<T, $Res>
    extends _$ListInputCopyWithImpl<T, $Res, _$ListInputImpl<T>>
    implements _$$ListInputImplCopyWith<T, $Res> {
  __$$ListInputImplCopyWithImpl(
      _$ListInputImpl<T> _value, $Res Function(_$ListInputImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? isRequired = null,
    Object? toJsonT = freezed,
  }) {
    return _then(_$ListInputImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ));
  }
}

/// @nodoc

class _$ListInputImpl<T> extends _ListInput<T> {
  const _$ListInputImpl(
      {required this.id,
      final List<T>? value,
      this.isRequired = false,
      @JsonKey(includeToJson: false, includeFromJson: false) this.toJsonT})
      : _value = value,
        super._();

  @override
  final String id;
  final List<T>? _value;
  @override
  List<T>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Object? Function(T)? toJsonT;

  @override
  String toString() {
    return 'ListInput<$T>(id: $id, value: $value, isRequired: $isRequired, toJsonT: $toJsonT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListInputImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_value), isRequired, toJsonT);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListInputImplCopyWith<T, _$ListInputImpl<T>> get copyWith =>
      __$$ListInputImplCopyWithImpl<T, _$ListInputImpl<T>>(this, _$identity);
}

abstract class _ListInput<T> extends ListInput<T> {
  const factory _ListInput(
      {required final String id,
      final List<T>? value,
      final bool isRequired,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Object? Function(T)? toJsonT}) = _$ListInputImpl<T>;
  const _ListInput._() : super._();

  @override
  String get id;
  @override
  List<T>? get value;
  @override
  bool get isRequired;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT;
  @override
  @JsonKey(ignore: true)
  _$$ListInputImplCopyWith<T, _$ListInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectInput<T> {
  String get id => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  List<T>? get selectedValues => throw _privateConstructorUsedError;
  List<T>? get availibleValues => throw _privateConstructorUsedError;
  int? get minCount => throw _privateConstructorUsedError;
  SelectFieldSettings get fieldSettings => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectInputCopyWith<T, SelectInput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectInputCopyWith<T, $Res> {
  factory $SelectInputCopyWith(
          SelectInput<T> value, $Res Function(SelectInput<T>) then) =
      _$SelectInputCopyWithImpl<T, $Res, SelectInput<T>>;
  @useResult
  $Res call(
      {String id,
      int? maxCount,
      List<T>? selectedValues,
      List<T>? availibleValues,
      int? minCount,
      SelectFieldSettings fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  $SelectFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class _$SelectInputCopyWithImpl<T, $Res, $Val extends SelectInput<T>>
    implements $SelectInputCopyWith<T, $Res> {
  _$SelectInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? selectedValues = freezed,
    Object? availibleValues = freezed,
    Object? minCount = freezed,
    Object? fieldSettings = null,
    Object? toJsonT = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedValues: freezed == selectedValues
          ? _value.selectedValues
          : selectedValues // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      availibleValues: freezed == availibleValues
          ? _value.availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      minCount: freezed == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<$Res> get fieldSettings {
    return $SelectFieldSettingsCopyWith<$Res>(_value.fieldSettings, (value) {
      return _then(_value.copyWith(fieldSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SelectInputImplCopyWith<T, $Res>
    implements $SelectInputCopyWith<T, $Res> {
  factory _$$SelectInputImplCopyWith(_$SelectInputImpl<T> value,
          $Res Function(_$SelectInputImpl<T>) then) =
      __$$SelectInputImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? maxCount,
      List<T>? selectedValues,
      List<T>? availibleValues,
      int? minCount,
      SelectFieldSettings fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  @override
  $SelectFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$SelectInputImplCopyWithImpl<T, $Res>
    extends _$SelectInputCopyWithImpl<T, $Res, _$SelectInputImpl<T>>
    implements _$$SelectInputImplCopyWith<T, $Res> {
  __$$SelectInputImplCopyWithImpl(
      _$SelectInputImpl<T> _value, $Res Function(_$SelectInputImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? maxCount = freezed,
    Object? selectedValues = freezed,
    Object? availibleValues = freezed,
    Object? minCount = freezed,
    Object? fieldSettings = null,
    Object? toJsonT = freezed,
  }) {
    return _then(_$SelectInputImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedValues: freezed == selectedValues
          ? _value._selectedValues
          : selectedValues // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      availibleValues: freezed == availibleValues
          ? _value._availibleValues
          : availibleValues // ignore: cast_nullable_to_non_nullable
              as List<T>?,
      minCount: freezed == minCount
          ? _value.minCount
          : minCount // ignore: cast_nullable_to_non_nullable
              as int?,
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ));
  }
}

/// @nodoc

class _$SelectInputImpl<T> extends _SelectInput<T> {
  const _$SelectInputImpl(
      {required this.id,
      required this.maxCount,
      final List<T>? selectedValues,
      final List<T>? availibleValues,
      this.minCount,
      this.fieldSettings = const SelectFieldSettings(),
      @JsonKey(includeToJson: false, includeFromJson: false) this.toJsonT})
      : _selectedValues = selectedValues,
        _availibleValues = availibleValues,
        super._();

  @override
  final String id;
  @override
  final int? maxCount;
  final List<T>? _selectedValues;
  @override
  List<T>? get selectedValues {
    final value = _selectedValues;
    if (value == null) return null;
    if (_selectedValues is EqualUnmodifiableListView) return _selectedValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<T>? _availibleValues;
  @override
  List<T>? get availibleValues {
    final value = _availibleValues;
    if (value == null) return null;
    if (_availibleValues is EqualUnmodifiableListView) return _availibleValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? minCount;
  @override
  @JsonKey()
  final SelectFieldSettings fieldSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Object? Function(T)? toJsonT;

  @override
  String toString() {
    return 'SelectInput<$T>(id: $id, maxCount: $maxCount, selectedValues: $selectedValues, availibleValues: $availibleValues, minCount: $minCount, fieldSettings: $fieldSettings, toJsonT: $toJsonT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectInputImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            const DeepCollectionEquality()
                .equals(other._selectedValues, _selectedValues) &&
            const DeepCollectionEquality()
                .equals(other._availibleValues, _availibleValues) &&
            (identical(other.minCount, minCount) ||
                other.minCount == minCount) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings) &&
            (identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      maxCount,
      const DeepCollectionEquality().hash(_selectedValues),
      const DeepCollectionEquality().hash(_availibleValues),
      minCount,
      fieldSettings,
      toJsonT);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      __$$SelectInputImplCopyWithImpl<T, _$SelectInputImpl<T>>(
          this, _$identity);
}

abstract class _SelectInput<T> extends SelectInput<T> {
  const factory _SelectInput(
      {required final String id,
      required final int? maxCount,
      final List<T>? selectedValues,
      final List<T>? availibleValues,
      final int? minCount,
      final SelectFieldSettings fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Object? Function(T)? toJsonT}) = _$SelectInputImpl<T>;
  const _SelectInput._() : super._();

  @override
  String get id;
  @override
  int? get maxCount;
  @override
  List<T>? get selectedValues;
  @override
  List<T>? get availibleValues;
  @override
  int? get minCount;
  @override
  SelectFieldSettings get fieldSettings;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT;
  @override
  @JsonKey(ignore: true)
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
