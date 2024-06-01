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
  @InputsMapConverter()
  Map<String, WoFormInputMixin> get inputsMap =>
      throw _privateConstructorUsedError;
  WoFormStatus get status => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

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
      {@InputsMapConverter() Map<String, WoFormInputMixin> inputsMap,
      WoFormStatus status,
      String? errorCode});
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
    Object? inputsMap = null,
    Object? status = null,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      inputsMap: null == inputsMap
          ? _value.inputsMap
          : inputsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WoFormInputMixin>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WoFormStatus,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
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
      {@InputsMapConverter() Map<String, WoFormInputMixin> inputsMap,
      WoFormStatus status,
      String? errorCode});
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
    Object? inputsMap = null,
    Object? status = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$WoFormImpl(
      inputsMap: null == inputsMap
          ? _value._inputsMap
          : inputsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WoFormInputMixin>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WoFormStatus,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WoFormImpl extends _WoForm {
  const _$WoFormImpl(
      {@InputsMapConverter()
      required final Map<String, WoFormInputMixin> inputsMap,
      this.status = WoFormStatus.idle,
      this.errorCode})
      : _inputsMap = inputsMap,
        super._();

  factory _$WoFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$WoFormImplFromJson(json);

  final Map<String, WoFormInputMixin> _inputsMap;
  @override
  @InputsMapConverter()
  Map<String, WoFormInputMixin> get inputsMap {
    if (_inputsMap is EqualUnmodifiableMapView) return _inputsMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_inputsMap);
  }

  @override
  @JsonKey()
  final WoFormStatus status;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'WoForm(inputsMap: $inputsMap, status: $status, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormImpl &&
            const DeepCollectionEquality()
                .equals(other._inputsMap, _inputsMap) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_inputsMap), status, errorCode);

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
      {@InputsMapConverter()
      required final Map<String, WoFormInputMixin> inputsMap,
      final WoFormStatus status,
      final String? errorCode}) = _$WoFormImpl;
  const _WoForm._() : super._();

  factory _WoForm.fromJson(Map<String, dynamic> json) = _$WoFormImpl.fromJson;

  @override
  @InputsMapConverter()
  Map<String, WoFormInputMixin> get inputsMap;
  @override
  WoFormStatus get status;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$WoFormImplCopyWith<_$WoFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
