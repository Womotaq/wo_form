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

/// @nodoc
mixin _$WoForm {
  WoFormStatus get status => throw _privateConstructorUsedError;
  Map<String, WoFormInput> get inputsMap => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WoFormCopyWith<WoForm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WoFormCopyWith<$Res> {
  factory $WoFormCopyWith(WoForm value, $Res Function(WoForm) then) =
      _$WoFormCopyWithImpl<$Res, WoForm>;
  @useResult
  $Res call(
      {WoFormStatus status,
      Map<String, WoFormInput> inputsMap,
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
    Object? status = null,
    Object? inputsMap = null,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WoFormStatus,
      inputsMap: null == inputsMap
          ? _value.inputsMap
          : inputsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WoFormInput>,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WoFormWIPImplCopyWith<$Res> implements $WoFormCopyWith<$Res> {
  factory _$$WoFormWIPImplCopyWith(
          _$WoFormWIPImpl value, $Res Function(_$WoFormWIPImpl) then) =
      __$$WoFormWIPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WoFormStatus status,
      Map<String, WoFormInput> inputsMap,
      String? errorCode});
}

/// @nodoc
class __$$WoFormWIPImplCopyWithImpl<$Res>
    extends _$WoFormCopyWithImpl<$Res, _$WoFormWIPImpl>
    implements _$$WoFormWIPImplCopyWith<$Res> {
  __$$WoFormWIPImplCopyWithImpl(
      _$WoFormWIPImpl _value, $Res Function(_$WoFormWIPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? inputsMap = null,
    Object? errorCode = freezed,
  }) {
    return _then(_$WoFormWIPImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WoFormStatus,
      inputsMap: null == inputsMap
          ? _value._inputsMap
          : inputsMap // ignore: cast_nullable_to_non_nullable
              as Map<String, WoFormInput>,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WoFormWIPImpl extends _WoFormWIP {
  const _$WoFormWIPImpl(
      {required this.status,
      required final Map<String, WoFormInput> inputsMap,
      this.errorCode})
      : _inputsMap = inputsMap,
        super._();

  @override
  final WoFormStatus status;
  final Map<String, WoFormInput> _inputsMap;
  @override
  Map<String, WoFormInput> get inputsMap {
    if (_inputsMap is EqualUnmodifiableMapView) return _inputsMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_inputsMap);
  }

  @override
  final String? errorCode;

  @override
  String toString() {
    return 'WoForm(status: $status, inputsMap: $inputsMap, errorCode: $errorCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WoFormWIPImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._inputsMap, _inputsMap) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_inputsMap), errorCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WoFormWIPImplCopyWith<_$WoFormWIPImpl> get copyWith =>
      __$$WoFormWIPImplCopyWithImpl<_$WoFormWIPImpl>(this, _$identity);
}

abstract class _WoFormWIP extends WoForm {
  const factory _WoFormWIP(
      {required final WoFormStatus status,
      required final Map<String, WoFormInput> inputsMap,
      final String? errorCode}) = _$WoFormWIPImpl;
  const _WoFormWIP._() : super._();

  @override
  WoFormStatus get status;
  @override
  Map<String, WoFormInput> get inputsMap;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$$WoFormWIPImplCopyWith<_$WoFormWIPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
