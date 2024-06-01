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
    case 'string':
      return StringInput.fromJson(json);
    case 'selectString':
      return SelectStringInput.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormInput',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormInput {
  String get id => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;
  bool get isRequired =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  Object get fieldSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
    required TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)
        selectString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult? Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(StringInput value) string,
    required TResult Function(SelectStringInput value) selectString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(StringInput value)? string,
    TResult? Function(SelectStringInput value)? selectString,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(StringInput value)? string,
    TResult Function(SelectStringInput value)? selectString,
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
  $Res call({String id, bool isRequired});
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
    Object? isRequired = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
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
      bool value,
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
    Object? value = null,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$BooleanInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
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
      this.value = false,
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
  @JsonKey()
  final bool value;
  @override
  @JsonKey()
  final bool isRequired;
// ignore: invalid_annotation_target
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
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
    required TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)
        selectString,
  }) {
    return boolean(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult? Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
  }) {
    return boolean?.call(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
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
    required TResult Function(StringInput value) string,
    required TResult Function(SelectStringInput value) selectString,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(StringInput value)? string,
    TResult? Function(SelectStringInput value)? selectString,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(StringInput value)? string,
    TResult Function(SelectStringInput value)? selectString,
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
      final bool value,
      final bool isRequired,
      @JsonKey(toJson: BooleanFieldSettings.staticToJson)
      final BooleanFieldSettings fieldSettings}) = _$BooleanInputImpl;
  const BooleanInput._() : super._();

  factory BooleanInput.fromJson(Map<String, dynamic> json) =
      _$BooleanInputImpl.fromJson;

  @override
  String get id;
  @override
  bool get value;
  @override
  bool get isRequired;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: BooleanFieldSettings.staticToJson)
  BooleanFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$BooleanInputImplCopyWith<_$BooleanInputImpl> get copyWith =>
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
      String value,
      bool isRequired,
      RegexPattern? regexPattern,
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
    Object? value = null,
    Object? isRequired = null,
    Object? regexPattern = freezed,
    Object? fieldSettings = null,
  }) {
    return _then(_$StringInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      regexPattern: freezed == regexPattern
          ? _value.regexPattern
          : regexPattern // ignore: cast_nullable_to_non_nullable
              as RegexPattern?,
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
      this.value = '',
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
  @JsonKey()
  final String value;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  final RegexPattern? regexPattern;
// ignore: invalid_annotation_target
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
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
    required TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)
        selectString,
  }) {
    return string(id, value, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult? Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
  }) {
    return string?.call(id, value, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
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
    required TResult Function(StringInput value) string,
    required TResult Function(SelectStringInput value) selectString,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(StringInput value)? string,
    TResult? Function(SelectStringInput value)? selectString,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(StringInput value)? string,
    TResult Function(SelectStringInput value)? selectString,
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
      final String value,
      final bool isRequired,
      final RegexPattern? regexPattern,
      @JsonKey(toJson: StringFieldSettings.staticToJson)
      final StringFieldSettings fieldSettings}) = _$StringInputImpl;
  const StringInput._() : super._();

  factory StringInput.fromJson(Map<String, dynamic> json) =
      _$StringInputImpl.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  bool get isRequired;
  RegexPattern? get regexPattern;
  @override // ignore: invalid_annotation_target
  @JsonKey(toJson: StringFieldSettings.staticToJson)
  StringFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$StringInputImplCopyWith<_$StringInputImpl> get copyWith =>
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
      String? value,
      bool isRequired,
      SelectFieldSettings<String> fieldSettings});

  $SelectFieldSettingsCopyWith<String, $Res> get fieldSettings;
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
    Object? value = freezed,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$SelectStringInputImpl(
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
      fieldSettings: null == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings<String>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<String, $Res> get fieldSettings {
    return $SelectFieldSettingsCopyWith<String, $Res>(_value.fieldSettings,
        (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectStringInputImpl extends SelectStringInput {
  const _$SelectStringInputImpl(
      {required this.id,
      this.value,
      this.isRequired = false,
      this.fieldSettings = const SelectFieldSettings<String>(),
      final String? $type})
      : $type = $type ?? 'selectString',
        super._();

  factory _$SelectStringInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectStringInputImplFromJson(json);

  @override
  final String id;
  @override
  final String? value;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final SelectFieldSettings<String> fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput.selectString(id: $id, value: $value, isRequired: $isRequired, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStringInputImpl &&
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
  _$$SelectStringInputImplCopyWith<_$SelectStringInputImpl> get copyWith =>
      __$$SelectStringInputImplCopyWithImpl<_$SelectStringInputImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)
        string,
    required TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)
        selectString,
  }) {
    return selectString(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult? Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
  }) {
    return selectString?.call(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            bool value,
            bool isRequired,
            @JsonKey(toJson: BooleanFieldSettings.staticToJson)
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(
            String id,
            String value,
            bool isRequired,
            RegexPattern? regexPattern,
            @JsonKey(toJson: StringFieldSettings.staticToJson)
            StringFieldSettings fieldSettings)?
        string,
    TResult Function(String id, String? value, bool isRequired,
            SelectFieldSettings<String> fieldSettings)?
        selectString,
    required TResult orElse(),
  }) {
    if (selectString != null) {
      return selectString(id, value, isRequired, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput value) boolean,
    required TResult Function(StringInput value) string,
    required TResult Function(SelectStringInput value) selectString,
  }) {
    return selectString(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput value)? boolean,
    TResult? Function(StringInput value)? string,
    TResult? Function(SelectStringInput value)? selectString,
  }) {
    return selectString?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput value)? boolean,
    TResult Function(StringInput value)? string,
    TResult Function(SelectStringInput value)? selectString,
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
          final String? value,
          final bool isRequired,
          final SelectFieldSettings<String> fieldSettings}) =
      _$SelectStringInputImpl;
  const SelectStringInput._() : super._();

  factory SelectStringInput.fromJson(Map<String, dynamic> json) =
      _$SelectStringInputImpl.fromJson;

  @override
  String get id;
  @override
  String? get value;
  @override
  bool get isRequired;
  @override
  SelectFieldSettings<String> get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$SelectStringInputImplCopyWith<_$SelectStringInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectInput<T> {
  String get id => throw _privateConstructorUsedError;
  T? get value => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  SelectFieldSettings<T>? get fieldSettings =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
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
      T? value,
      bool isRequired,
      SelectFieldSettings<T>? fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings;
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
    Object? value = freezed,
    Object? isRequired = null,
    Object? fieldSettings = freezed,
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
              as T?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldSettings: freezed == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings<T>?,
      toJsonT: freezed == toJsonT
          ? _value.toJsonT
          : toJsonT // ignore: cast_nullable_to_non_nullable
              as Object? Function(T)?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings {
    if (_value.fieldSettings == null) {
      return null;
    }

    return $SelectFieldSettingsCopyWith<T, $Res>(_value.fieldSettings!,
        (value) {
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
      T? value,
      bool isRequired,
      SelectFieldSettings<T>? fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Object? Function(T)? toJsonT});

  @override
  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings;
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
    Object? value = freezed,
    Object? isRequired = null,
    Object? fieldSettings = freezed,
    Object? toJsonT = freezed,
  }) {
    return _then(_$SelectInputImpl<T>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      fieldSettings: freezed == fieldSettings
          ? _value.fieldSettings
          : fieldSettings // ignore: cast_nullable_to_non_nullable
              as SelectFieldSettings<T>?,
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
      this.value,
      this.isRequired = false,
      this.fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false) this.toJsonT})
      : super._();

  @override
  final String id;
  @override
  final T? value;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  final SelectFieldSettings<T>? fieldSettings;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final Object? Function(T)? toJsonT;

  @override
  String toString() {
    return 'SelectInput<$T>(id: $id, value: $value, isRequired: $isRequired, fieldSettings: $fieldSettings, toJsonT: $toJsonT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectInputImpl<T> &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.fieldSettings, fieldSettings) ||
                other.fieldSettings == fieldSettings) &&
            (identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(value),
      isRequired,
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
      final T? value,
      final bool isRequired,
      final SelectFieldSettings<T>? fieldSettings,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Object? Function(T)? toJsonT}) = _$SelectInputImpl<T>;
  const _SelectInput._() : super._();

  @override
  String get id;
  @override
  T? get value;
  @override
  bool get isRequired;
  @override
  SelectFieldSettings<T>? get fieldSettings;
  @override // ignore: invalid_annotation_target
  @JsonKey(includeToJson: false, includeFromJson: false)
  Object? Function(T)? get toJsonT;
  @override
  @JsonKey(ignore: true)
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
