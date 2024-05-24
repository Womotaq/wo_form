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

WoFormInput<T> _$WoFormInputFromJson<T>(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'boolean':
      return BooleanInput<T>.fromJson(json);
    case 'select':
      return SelectInput<T>.fromJson(json);
    case 'string':
      return StringInput<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'WoFormInput',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$WoFormInput<T> {
  String get id => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;
  bool get isRequired => throw _privateConstructorUsedError;
  Object? get fieldSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)
        select,
    required TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult? Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
        string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput<T> value) boolean,
    required TResult Function(SelectInput<T> value) select,
    required TResult Function(StringInput<T> value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput<T> value)? boolean,
    TResult? Function(SelectInput<T> value)? select,
    TResult? Function(StringInput<T> value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput<T> value)? boolean,
    TResult Function(SelectInput<T> value)? select,
    TResult Function(StringInput<T> value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WoFormInputCopyWith<T, WoFormInput<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormInputCopyWith<T, $Res> {
  factory $WoFormInputCopyWith(
          WoFormInput<T> value, $Res Function(WoFormInput<T>) then) =
      _$WoFormInputCopyWithImpl<T, $Res, WoFormInput<T>>;
  @useResult
  $Res call({String id, bool isRequired});
}

/// @nodoc
class _$WoFormInputCopyWithImpl<T, $Res, $Val extends WoFormInput<T>>
    implements $WoFormInputCopyWith<T, $Res> {
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
abstract class _$$BooleanInputImplCopyWith<T, $Res>
    implements $WoFormInputCopyWith<T, $Res> {
  factory _$$BooleanInputImplCopyWith(_$BooleanInputImpl<T> value,
          $Res Function(_$BooleanInputImpl<T>) then) =
      __$$BooleanInputImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool value,
      bool isRequired,
      BooleanFieldSettings fieldSettings});

  $BooleanFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$BooleanInputImplCopyWithImpl<T, $Res>
    extends _$WoFormInputCopyWithImpl<T, $Res, _$BooleanInputImpl<T>>
    implements _$$BooleanInputImplCopyWith<T, $Res> {
  __$$BooleanInputImplCopyWithImpl(
      _$BooleanInputImpl<T> _value, $Res Function(_$BooleanInputImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
    Object? isRequired = null,
    Object? fieldSettings = null,
  }) {
    return _then(_$BooleanInputImpl<T>(
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
class _$BooleanInputImpl<T> extends BooleanInput<T> {
  const _$BooleanInputImpl(
      {required this.id,
      this.value = false,
      this.isRequired = false,
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
  @override
  @JsonKey()
  final BooleanFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput<$T>.boolean(id: $id, value: $value, isRequired: $isRequired, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanInputImpl<T> &&
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
  _$$BooleanInputImplCopyWith<T, _$BooleanInputImpl<T>> get copyWith =>
      __$$BooleanInputImplCopyWithImpl<T, _$BooleanInputImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)
        select,
    required TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)
        string,
  }) {
    return boolean(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult? Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
        string,
  }) {
    return boolean?.call(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
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
    required TResult Function(BooleanInput<T> value) boolean,
    required TResult Function(SelectInput<T> value) select,
    required TResult Function(StringInput<T> value) string,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput<T> value)? boolean,
    TResult? Function(SelectInput<T> value)? select,
    TResult? Function(StringInput<T> value)? string,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput<T> value)? boolean,
    TResult Function(SelectInput<T> value)? select,
    TResult Function(StringInput<T> value)? string,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanInputImplToJson<T>(
      this,
    );
  }
}

abstract class BooleanInput<T> extends WoFormInput<T> {
  const factory BooleanInput(
      {required final String id,
      final bool value,
      final bool isRequired,
      final BooleanFieldSettings fieldSettings}) = _$BooleanInputImpl<T>;
  const BooleanInput._() : super._();

  factory BooleanInput.fromJson(Map<String, dynamic> json) =
      _$BooleanInputImpl<T>.fromJson;

  @override
  String get id;
  @override
  bool get value;
  @override
  bool get isRequired;
  @override
  BooleanFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$BooleanInputImplCopyWith<T, _$BooleanInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectInputImplCopyWith<T, $Res>
    implements $WoFormInputCopyWith<T, $Res> {
  factory _$$SelectInputImplCopyWith(_$SelectInputImpl<T> value,
          $Res Function(_$SelectInputImpl<T>) then) =
      __$$SelectInputImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @UnknownTypeConverter<T>() T? value,
      bool isRequired,
      SelectFieldSettings<T>? fieldSettings});

  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings;
}

/// @nodoc
class __$$SelectInputImplCopyWithImpl<T, $Res>
    extends _$WoFormInputCopyWithImpl<T, $Res, _$SelectInputImpl<T>>
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
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SelectFieldSettingsCopyWith<T, $Res>? get fieldSettings {
    if (_value.fieldSettings == null) {
      return null;
    }

    return $SelectFieldSettingsCopyWith<T, $Res>(_value.fieldSettings!,
        (value) {
      return _then(_value.copyWith(fieldSettings: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectInputImpl<T> extends SelectInput<T> {
  const _$SelectInputImpl(
      {required this.id,
      @UnknownTypeConverter<T>() this.value,
      this.isRequired = false,
      this.fieldSettings,
      final String? $type})
      : $type = $type ?? 'select',
        super._();

  factory _$SelectInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectInputImplFromJson(json);

  @override
  final String id;
  @override
  @UnknownTypeConverter<T>()
  final T? value;
  @override
  @JsonKey()
  final bool isRequired;
  @override
  final SelectFieldSettings<T>? fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput<$T>.select(id: $id, value: $value, isRequired: $isRequired, fieldSettings: $fieldSettings)';
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
                other.fieldSettings == fieldSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(value), isRequired, fieldSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      __$$SelectInputImplCopyWithImpl<T, _$SelectInputImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)
        select,
    required TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)
        string,
  }) {
    return select(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult? Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
        string,
  }) {
    return select?.call(id, value, isRequired, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
        string,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(id, value, isRequired, fieldSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BooleanInput<T> value) boolean,
    required TResult Function(SelectInput<T> value) select,
    required TResult Function(StringInput<T> value) string,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput<T> value)? boolean,
    TResult? Function(SelectInput<T> value)? select,
    TResult? Function(StringInput<T> value)? string,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput<T> value)? boolean,
    TResult Function(SelectInput<T> value)? select,
    TResult Function(StringInput<T> value)? string,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectInputImplToJson<T>(
      this,
    );
  }
}

abstract class SelectInput<T> extends WoFormInput<T> {
  const factory SelectInput(
      {required final String id,
      @UnknownTypeConverter<T>() final T? value,
      final bool isRequired,
      final SelectFieldSettings<T>? fieldSettings}) = _$SelectInputImpl<T>;
  const SelectInput._() : super._();

  factory SelectInput.fromJson(Map<String, dynamic> json) =
      _$SelectInputImpl<T>.fromJson;

  @override
  String get id;
  @override
  @UnknownTypeConverter<T>()
  T? get value;
  @override
  bool get isRequired;
  @override
  SelectFieldSettings<T>? get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$SelectInputImplCopyWith<T, _$SelectInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringInputImplCopyWith<T, $Res>
    implements $WoFormInputCopyWith<T, $Res> {
  factory _$$StringInputImplCopyWith(_$StringInputImpl<T> value,
          $Res Function(_$StringInputImpl<T>) then) =
      __$$StringInputImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String value,
      bool isRequired,
      RegexPattern? regexPattern,
      StringFieldSettings fieldSettings});

  $StringFieldSettingsCopyWith<$Res> get fieldSettings;
}

/// @nodoc
class __$$StringInputImplCopyWithImpl<T, $Res>
    extends _$WoFormInputCopyWithImpl<T, $Res, _$StringInputImpl<T>>
    implements _$$StringInputImplCopyWith<T, $Res> {
  __$$StringInputImplCopyWithImpl(
      _$StringInputImpl<T> _value, $Res Function(_$StringInputImpl<T>) _then)
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
    return _then(_$StringInputImpl<T>(
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
class _$StringInputImpl<T> extends StringInput<T> {
  const _$StringInputImpl(
      {required this.id,
      this.value = '',
      this.isRequired = false,
      this.regexPattern,
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
  @override
  @JsonKey()
  final StringFieldSettings fieldSettings;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'WoFormInput<$T>.string(id: $id, value: $value, isRequired: $isRequired, regexPattern: $regexPattern, fieldSettings: $fieldSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringInputImpl<T> &&
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
  _$$StringInputImplCopyWith<T, _$StringInputImpl<T>> get copyWith =>
      __$$StringInputImplCopyWithImpl<T, _$StringInputImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)
        boolean,
    required TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)
        select,
    required TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)
        string,
  }) {
    return string(id, value, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult? Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult? Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
        string,
  }) {
    return string?.call(id, value, isRequired, regexPattern, fieldSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, bool value, bool isRequired,
            BooleanFieldSettings fieldSettings)?
        boolean,
    TResult Function(String id, @UnknownTypeConverter<T>() T? value,
            bool isRequired, SelectFieldSettings<T>? fieldSettings)?
        select,
    TResult Function(String id, String value, bool isRequired,
            RegexPattern? regexPattern, StringFieldSettings fieldSettings)?
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
    required TResult Function(BooleanInput<T> value) boolean,
    required TResult Function(SelectInput<T> value) select,
    required TResult Function(StringInput<T> value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(BooleanInput<T> value)? boolean,
    TResult? Function(SelectInput<T> value)? select,
    TResult? Function(StringInput<T> value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BooleanInput<T> value)? boolean,
    TResult Function(SelectInput<T> value)? select,
    TResult Function(StringInput<T> value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StringInputImplToJson<T>(
      this,
    );
  }
}

abstract class StringInput<T> extends WoFormInput<T> {
  const factory StringInput(
      {required final String id,
      final String value,
      final bool isRequired,
      final RegexPattern? regexPattern,
      final StringFieldSettings fieldSettings}) = _$StringInputImpl<T>;
  const StringInput._() : super._();

  factory StringInput.fromJson(Map<String, dynamic> json) =
      _$StringInputImpl<T>.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  bool get isRequired;
  RegexPattern? get regexPattern;
  @override
  StringFieldSettings get fieldSettings;
  @override
  @JsonKey(ignore: true)
  _$$StringInputImplCopyWith<T, _$StringInputImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
