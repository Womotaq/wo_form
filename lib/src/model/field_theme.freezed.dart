// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooleanFieldTheme _$BooleanFieldThemeFromJson(Map<String, dynamic> json) {
  return _BooleanFieldTheme.fromJson(json);
}

/// @nodoc
mixin _$BooleanFieldTheme {
  String? get labelText => throw _privateConstructorUsedError;
  BooleanFieldOnOffType? get onOffType => throw _privateConstructorUsedError;
  ListTileControlAffinity? get onOffPosition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooleanFieldThemeCopyWith<BooleanFieldTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanFieldThemeCopyWith<$Res> {
  factory $BooleanFieldThemeCopyWith(
          BooleanFieldTheme value, $Res Function(BooleanFieldTheme) then) =
      _$BooleanFieldThemeCopyWithImpl<$Res, BooleanFieldTheme>;
  @useResult
  $Res call(
      {String? labelText,
      BooleanFieldOnOffType? onOffType,
      ListTileControlAffinity? onOffPosition});
}

/// @nodoc
class _$BooleanFieldThemeCopyWithImpl<$Res, $Val extends BooleanFieldTheme>
    implements $BooleanFieldThemeCopyWith<$Res> {
  _$BooleanFieldThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? onOffType = freezed,
    Object? onOffPosition = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      onOffType: freezed == onOffType
          ? _value.onOffType
          : onOffType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldOnOffType?,
      onOffPosition: freezed == onOffPosition
          ? _value.onOffPosition
          : onOffPosition // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooleanFieldThemeImplCopyWith<$Res>
    implements $BooleanFieldThemeCopyWith<$Res> {
  factory _$$BooleanFieldThemeImplCopyWith(_$BooleanFieldThemeImpl value,
          $Res Function(_$BooleanFieldThemeImpl) then) =
      __$$BooleanFieldThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      BooleanFieldOnOffType? onOffType,
      ListTileControlAffinity? onOffPosition});
}

/// @nodoc
class __$$BooleanFieldThemeImplCopyWithImpl<$Res>
    extends _$BooleanFieldThemeCopyWithImpl<$Res, _$BooleanFieldThemeImpl>
    implements _$$BooleanFieldThemeImplCopyWith<$Res> {
  __$$BooleanFieldThemeImplCopyWithImpl(_$BooleanFieldThemeImpl _value,
      $Res Function(_$BooleanFieldThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? onOffType = freezed,
    Object? onOffPosition = freezed,
  }) {
    return _then(_$BooleanFieldThemeImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      onOffType: freezed == onOffType
          ? _value.onOffType
          : onOffType // ignore: cast_nullable_to_non_nullable
              as BooleanFieldOnOffType?,
      onOffPosition: freezed == onOffPosition
          ? _value.onOffPosition
          : onOffPosition // ignore: cast_nullable_to_non_nullable
              as ListTileControlAffinity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BooleanFieldThemeImpl extends _BooleanFieldTheme {
  _$BooleanFieldThemeImpl({this.labelText, this.onOffType, this.onOffPosition})
      : super._();

  factory _$BooleanFieldThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanFieldThemeImplFromJson(json);

  @override
  final String? labelText;
  @override
  final BooleanFieldOnOffType? onOffType;
  @override
  final ListTileControlAffinity? onOffPosition;

  @override
  String toString() {
    return 'BooleanFieldTheme(labelText: $labelText, onOffType: $onOffType, onOffPosition: $onOffPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanFieldThemeImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.onOffType, onOffType) ||
                other.onOffType == onOffType) &&
            (identical(other.onOffPosition, onOffPosition) ||
                other.onOffPosition == onOffPosition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, labelText, onOffType, onOffPosition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanFieldThemeImplCopyWith<_$BooleanFieldThemeImpl> get copyWith =>
      __$$BooleanFieldThemeImplCopyWithImpl<_$BooleanFieldThemeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanFieldThemeImplToJson(
      this,
    );
  }
}

abstract class _BooleanFieldTheme extends BooleanFieldTheme {
  factory _BooleanFieldTheme(
      {final String? labelText,
      final BooleanFieldOnOffType? onOffType,
      final ListTileControlAffinity? onOffPosition}) = _$BooleanFieldThemeImpl;
  _BooleanFieldTheme._() : super._();

  factory _BooleanFieldTheme.fromJson(Map<String, dynamic> json) =
      _$BooleanFieldThemeImpl.fromJson;

  @override
  String? get labelText;
  @override
  BooleanFieldOnOffType? get onOffType;
  @override
  ListTileControlAffinity? get onOffPosition;
  @override
  @JsonKey(ignore: true)
  _$$BooleanFieldThemeImplCopyWith<_$BooleanFieldThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectStringFieldTheme _$SelectStringFieldThemeFromJson(
    Map<String, dynamic> json) {
  return _SelectStringFieldTheme.fromJson(json);
}

/// @nodoc
mixin _$SelectStringFieldTheme {
  String? get labelText => throw _privateConstructorUsedError;
  List<String>? get values => throw _privateConstructorUsedError;
  SelectFieldDisplayMode? get displayMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectStringFieldThemeCopyWith<SelectStringFieldTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectStringFieldThemeCopyWith<$Res> {
  factory $SelectStringFieldThemeCopyWith(SelectStringFieldTheme value,
          $Res Function(SelectStringFieldTheme) then) =
      _$SelectStringFieldThemeCopyWithImpl<$Res, SelectStringFieldTheme>;
  @useResult
  $Res call(
      {String? labelText,
      List<String>? values,
      SelectFieldDisplayMode? displayMode});
}

/// @nodoc
class _$SelectStringFieldThemeCopyWithImpl<$Res,
        $Val extends SelectStringFieldTheme>
    implements $SelectStringFieldThemeCopyWith<$Res> {
  _$SelectStringFieldThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? values = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectStringFieldThemeImplCopyWith<$Res>
    implements $SelectStringFieldThemeCopyWith<$Res> {
  factory _$$SelectStringFieldThemeImplCopyWith(
          _$SelectStringFieldThemeImpl value,
          $Res Function(_$SelectStringFieldThemeImpl) then) =
      __$$SelectStringFieldThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      List<String>? values,
      SelectFieldDisplayMode? displayMode});
}

/// @nodoc
class __$$SelectStringFieldThemeImplCopyWithImpl<$Res>
    extends _$SelectStringFieldThemeCopyWithImpl<$Res,
        _$SelectStringFieldThemeImpl>
    implements _$$SelectStringFieldThemeImplCopyWith<$Res> {
  __$$SelectStringFieldThemeImplCopyWithImpl(
      _$SelectStringFieldThemeImpl _value,
      $Res Function(_$SelectStringFieldThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? values = freezed,
    Object? displayMode = freezed,
  }) {
    return _then(_$SelectStringFieldThemeImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayMode: freezed == displayMode
          ? _value.displayMode
          : displayMode // ignore: cast_nullable_to_non_nullable
              as SelectFieldDisplayMode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectStringFieldThemeImpl extends _SelectStringFieldTheme {
  _$SelectStringFieldThemeImpl(
      {this.labelText, final List<String>? values, this.displayMode})
      : _values = values,
        super._();

  factory _$SelectStringFieldThemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectStringFieldThemeImplFromJson(json);

  @override
  final String? labelText;
  final List<String>? _values;
  @override
  List<String>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SelectFieldDisplayMode? displayMode;

  @override
  String toString() {
    return 'SelectStringFieldTheme(labelText: $labelText, values: $values, displayMode: $displayMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectStringFieldThemeImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.displayMode, displayMode) ||
                other.displayMode == displayMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, labelText,
      const DeepCollectionEquality().hash(_values), displayMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectStringFieldThemeImplCopyWith<_$SelectStringFieldThemeImpl>
      get copyWith => __$$SelectStringFieldThemeImplCopyWithImpl<
          _$SelectStringFieldThemeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectStringFieldThemeImplToJson(
      this,
    );
  }
}

abstract class _SelectStringFieldTheme extends SelectStringFieldTheme {
  factory _SelectStringFieldTheme(
          {final String? labelText,
          final List<String>? values,
          final SelectFieldDisplayMode? displayMode}) =
      _$SelectStringFieldThemeImpl;
  _SelectStringFieldTheme._() : super._();

  factory _SelectStringFieldTheme.fromJson(Map<String, dynamic> json) =
      _$SelectStringFieldThemeImpl.fromJson;

  @override
  String? get labelText;
  @override
  List<String>? get values;
  @override
  SelectFieldDisplayMode? get displayMode;
  @override
  @JsonKey(ignore: true)
  _$$SelectStringFieldThemeImplCopyWith<_$SelectStringFieldThemeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StringFieldTheme {
  String? get labelText => throw _privateConstructorUsedError;
  StringFieldAction? get action => throw _privateConstructorUsedError;
  bool? get submitFormOnFieldSubmitted => throw _privateConstructorUsedError;
  TextInputType? get keyboardType => throw _privateConstructorUsedError;
  bool? get obscureText => throw _privateConstructorUsedError;
  bool? get autocorrect => throw _privateConstructorUsedError;
  List<String>? get autofillHints => throw _privateConstructorUsedError;
  bool? get autofocus => throw _privateConstructorUsedError;
  TextInputAction? get textInputAction => throw _privateConstructorUsedError;
  TextCapitalization? get textCapitalization =>
      throw _privateConstructorUsedError;
  TextStyle? get style => throw _privateConstructorUsedError;
  int? get maxLines => throw _privateConstructorUsedError;
  String? get hintText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StringFieldThemeCopyWith<StringFieldTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringFieldThemeCopyWith<$Res> {
  factory $StringFieldThemeCopyWith(
          StringFieldTheme value, $Res Function(StringFieldTheme) then) =
      _$StringFieldThemeCopyWithImpl<$Res, StringFieldTheme>;
  @useResult
  $Res call(
      {String? labelText,
      StringFieldAction? action,
      bool? submitFormOnFieldSubmitted,
      TextInputType? keyboardType,
      bool? obscureText,
      bool? autocorrect,
      List<String>? autofillHints,
      bool? autofocus,
      TextInputAction? textInputAction,
      TextCapitalization? textCapitalization,
      TextStyle? style,
      int? maxLines,
      String? hintText});
}

/// @nodoc
class _$StringFieldThemeCopyWithImpl<$Res, $Val extends StringFieldTheme>
    implements $StringFieldThemeCopyWith<$Res> {
  _$StringFieldThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? action = freezed,
    Object? submitFormOnFieldSubmitted = freezed,
    Object? keyboardType = freezed,
    Object? obscureText = freezed,
    Object? autocorrect = freezed,
    Object? autofillHints = freezed,
    Object? autofocus = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = freezed,
    Object? style = freezed,
    Object? maxLines = freezed,
    Object? hintText = freezed,
  }) {
    return _then(_value.copyWith(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StringFieldAction?,
      submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted
          ? _value.submitFormOnFieldSubmitted
          : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _value.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      obscureText: freezed == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: freezed == autocorrect
          ? _value.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofillHints: freezed == autofillHints
          ? _value.autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autofocus: freezed == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      textInputAction: freezed == textInputAction
          ? _value.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: freezed == textCapitalization
          ? _value.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringFieldThemeImplCopyWith<$Res>
    implements $StringFieldThemeCopyWith<$Res> {
  factory _$$StringFieldThemeImplCopyWith(_$StringFieldThemeImpl value,
          $Res Function(_$StringFieldThemeImpl) then) =
      __$$StringFieldThemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? labelText,
      StringFieldAction? action,
      bool? submitFormOnFieldSubmitted,
      TextInputType? keyboardType,
      bool? obscureText,
      bool? autocorrect,
      List<String>? autofillHints,
      bool? autofocus,
      TextInputAction? textInputAction,
      TextCapitalization? textCapitalization,
      TextStyle? style,
      int? maxLines,
      String? hintText});
}

/// @nodoc
class __$$StringFieldThemeImplCopyWithImpl<$Res>
    extends _$StringFieldThemeCopyWithImpl<$Res, _$StringFieldThemeImpl>
    implements _$$StringFieldThemeImplCopyWith<$Res> {
  __$$StringFieldThemeImplCopyWithImpl(_$StringFieldThemeImpl _value,
      $Res Function(_$StringFieldThemeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelText = freezed,
    Object? action = freezed,
    Object? submitFormOnFieldSubmitted = freezed,
    Object? keyboardType = freezed,
    Object? obscureText = freezed,
    Object? autocorrect = freezed,
    Object? autofillHints = freezed,
    Object? autofocus = freezed,
    Object? textInputAction = freezed,
    Object? textCapitalization = freezed,
    Object? style = freezed,
    Object? maxLines = freezed,
    Object? hintText = freezed,
  }) {
    return _then(_$StringFieldThemeImpl(
      labelText: freezed == labelText
          ? _value.labelText
          : labelText // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StringFieldAction?,
      submitFormOnFieldSubmitted: freezed == submitFormOnFieldSubmitted
          ? _value.submitFormOnFieldSubmitted
          : submitFormOnFieldSubmitted // ignore: cast_nullable_to_non_nullable
              as bool?,
      keyboardType: freezed == keyboardType
          ? _value.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as TextInputType?,
      obscureText: freezed == obscureText
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool?,
      autocorrect: freezed == autocorrect
          ? _value.autocorrect
          : autocorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      autofillHints: freezed == autofillHints
          ? _value._autofillHints
          : autofillHints // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autofocus: freezed == autofocus
          ? _value.autofocus
          : autofocus // ignore: cast_nullable_to_non_nullable
              as bool?,
      textInputAction: freezed == textInputAction
          ? _value.textInputAction
          : textInputAction // ignore: cast_nullable_to_non_nullable
              as TextInputAction?,
      textCapitalization: freezed == textCapitalization
          ? _value.textCapitalization
          : textCapitalization // ignore: cast_nullable_to_non_nullable
              as TextCapitalization?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
      hintText: freezed == hintText
          ? _value.hintText
          : hintText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StringFieldThemeImpl implements _StringFieldTheme {
  _$StringFieldThemeImpl(
      {this.labelText,
      this.action,
      this.submitFormOnFieldSubmitted,
      this.keyboardType,
      this.obscureText,
      this.autocorrect,
      final List<String>? autofillHints,
      this.autofocus,
      this.textInputAction,
      this.textCapitalization,
      this.style,
      this.maxLines,
      this.hintText})
      : _autofillHints = autofillHints;

  @override
  final String? labelText;
  @override
  final StringFieldAction? action;
  @override
  final bool? submitFormOnFieldSubmitted;
  @override
  final TextInputType? keyboardType;
  @override
  final bool? obscureText;
  @override
  final bool? autocorrect;
  final List<String>? _autofillHints;
  @override
  List<String>? get autofillHints {
    final value = _autofillHints;
    if (value == null) return null;
    if (_autofillHints is EqualUnmodifiableListView) return _autofillHints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? autofocus;
  @override
  final TextInputAction? textInputAction;
  @override
  final TextCapitalization? textCapitalization;
  @override
  final TextStyle? style;
  @override
  final int? maxLines;
  @override
  final String? hintText;

  @override
  String toString() {
    return 'StringFieldTheme(labelText: $labelText, action: $action, submitFormOnFieldSubmitted: $submitFormOnFieldSubmitted, keyboardType: $keyboardType, obscureText: $obscureText, autocorrect: $autocorrect, autofillHints: $autofillHints, autofocus: $autofocus, textInputAction: $textInputAction, textCapitalization: $textCapitalization, style: $style, maxLines: $maxLines, hintText: $hintText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringFieldThemeImpl &&
            (identical(other.labelText, labelText) ||
                other.labelText == labelText) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.submitFormOnFieldSubmitted,
                    submitFormOnFieldSubmitted) ||
                other.submitFormOnFieldSubmitted ==
                    submitFormOnFieldSubmitted) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType) &&
            (identical(other.obscureText, obscureText) ||
                other.obscureText == obscureText) &&
            (identical(other.autocorrect, autocorrect) ||
                other.autocorrect == autocorrect) &&
            const DeepCollectionEquality()
                .equals(other._autofillHints, _autofillHints) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.textInputAction, textInputAction) ||
                other.textInputAction == textInputAction) &&
            (identical(other.textCapitalization, textCapitalization) ||
                other.textCapitalization == textCapitalization) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines) &&
            (identical(other.hintText, hintText) ||
                other.hintText == hintText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      labelText,
      action,
      submitFormOnFieldSubmitted,
      keyboardType,
      obscureText,
      autocorrect,
      const DeepCollectionEquality().hash(_autofillHints),
      autofocus,
      textInputAction,
      textCapitalization,
      style,
      maxLines,
      hintText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringFieldThemeImplCopyWith<_$StringFieldThemeImpl> get copyWith =>
      __$$StringFieldThemeImplCopyWithImpl<_$StringFieldThemeImpl>(
          this, _$identity);
}

abstract class _StringFieldTheme implements StringFieldTheme {
  factory _StringFieldTheme(
      {final String? labelText,
      final StringFieldAction? action,
      final bool? submitFormOnFieldSubmitted,
      final TextInputType? keyboardType,
      final bool? obscureText,
      final bool? autocorrect,
      final List<String>? autofillHints,
      final bool? autofocus,
      final TextInputAction? textInputAction,
      final TextCapitalization? textCapitalization,
      final TextStyle? style,
      final int? maxLines,
      final String? hintText}) = _$StringFieldThemeImpl;

  @override
  String? get labelText;
  @override
  StringFieldAction? get action;
  @override
  bool? get submitFormOnFieldSubmitted;
  @override
  TextInputType? get keyboardType;
  @override
  bool? get obscureText;
  @override
  bool? get autocorrect;
  @override
  List<String>? get autofillHints;
  @override
  bool? get autofocus;
  @override
  TextInputAction? get textInputAction;
  @override
  TextCapitalization? get textCapitalization;
  @override
  TextStyle? get style;
  @override
  int? get maxLines;
  @override
  String? get hintText;
  @override
  @JsonKey(ignore: true)
  _$$StringFieldThemeImplCopyWith<_$StringFieldThemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
