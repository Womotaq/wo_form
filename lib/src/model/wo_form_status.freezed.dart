// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_form_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WoFormStatus _$WoFormStatusFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'initial':
          return InitialStatus.fromJson(
            json
          );
                case 'inProgress':
          return InProgressStatus.fromJson(
            json
          );
                case 'submitting':
          return SubmittingStatus.fromJson(
            json
          );
                case 'submitError':
          return SubmitErrorStatus.fromJson(
            json
          );
                case 'submitSuccess':
          return SubmitSuccessStatus.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WoFormStatus',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WoFormStatus {



  /// Serializes this WoFormStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WoFormStatus);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WoFormStatus()';
}


}

/// @nodoc
class $WoFormStatusCopyWith<$Res>  {
$WoFormStatusCopyWith(WoFormStatus _, $Res Function(WoFormStatus) __);
}



/// @nodoc
@JsonSerializable()

class InitialStatus implements WoFormStatus {
  const InitialStatus({final  String? $type}): $type = $type ?? 'initial';
  factory InitialStatus.fromJson(Map<String, dynamic> json) => _$InitialStatusFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$InitialStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialStatus);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WoFormStatus.initial()';
}


}




/// @nodoc
@JsonSerializable()

class InProgressStatus implements WoFormStatus {
  const InProgressStatus({@notSerializable final  List<WoFormInputError> errors = const [], final  String? $type}): _errors = errors,$type = $type ?? 'inProgress';
  factory InProgressStatus.fromJson(Map<String, dynamic> json) => _$InProgressStatusFromJson(json);

 final  List<WoFormInputError> _errors;
@notSerializable List<WoFormInputError> get errors {
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_errors);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InProgressStatusCopyWith<InProgressStatus> get copyWith => _$InProgressStatusCopyWithImpl<InProgressStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InProgressStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InProgressStatus&&const DeepCollectionEquality().equals(other._errors, _errors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'WoFormStatus.inProgress(errors: $errors)';
}


}

/// @nodoc
abstract mixin class $InProgressStatusCopyWith<$Res> implements $WoFormStatusCopyWith<$Res> {
  factory $InProgressStatusCopyWith(InProgressStatus value, $Res Function(InProgressStatus) _then) = _$InProgressStatusCopyWithImpl;
@useResult
$Res call({
@notSerializable List<WoFormInputError> errors
});




}
/// @nodoc
class _$InProgressStatusCopyWithImpl<$Res>
    implements $InProgressStatusCopyWith<$Res> {
  _$InProgressStatusCopyWithImpl(this._self, this._then);

  final InProgressStatus _self;
  final $Res Function(InProgressStatus) _then;

/// Create a copy of WoFormStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errors = null,}) {
  return _then(InProgressStatus(
errors: null == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<WoFormInputError>,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SubmittingStatus implements WoFormStatus {
  const SubmittingStatus({final  String? $type}): $type = $type ?? 'submitting';
  factory SubmittingStatus.fromJson(Map<String, dynamic> json) => _$SubmittingStatusFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$SubmittingStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmittingStatus);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WoFormStatus.submitting()';
}


}




/// @nodoc
@JsonSerializable()

class SubmitErrorStatus implements WoFormStatus {
  const SubmitErrorStatus({@notSerializable this.error = 'error', @notSerializable this.stackTrace, final  String? $type}): $type = $type ?? 'submitError';
  factory SubmitErrorStatus.fromJson(Map<String, dynamic> json) => _$SubmitErrorStatusFromJson(json);

@notSerializable final  Object error;
@notSerializable final  StackTrace? stackTrace;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitErrorStatusCopyWith<SubmitErrorStatus> get copyWith => _$SubmitErrorStatusCopyWithImpl<SubmitErrorStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubmitErrorStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitErrorStatus&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'WoFormStatus.submitError(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class $SubmitErrorStatusCopyWith<$Res> implements $WoFormStatusCopyWith<$Res> {
  factory $SubmitErrorStatusCopyWith(SubmitErrorStatus value, $Res Function(SubmitErrorStatus) _then) = _$SubmitErrorStatusCopyWithImpl;
@useResult
$Res call({
@notSerializable Object error,@notSerializable StackTrace? stackTrace
});




}
/// @nodoc
class _$SubmitErrorStatusCopyWithImpl<$Res>
    implements $SubmitErrorStatusCopyWith<$Res> {
  _$SubmitErrorStatusCopyWithImpl(this._self, this._then);

  final SubmitErrorStatus _self;
  final $Res Function(SubmitErrorStatus) _then;

/// Create a copy of WoFormStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,}) {
  return _then(SubmitErrorStatus(
error: null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class SubmitSuccessStatus implements WoFormStatus {
  const SubmitSuccessStatus({final  String? $type}): $type = $type ?? 'submitSuccess';
  factory SubmitSuccessStatus.fromJson(Map<String, dynamic> json) => _$SubmitSuccessStatusFromJson(json);



@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$SubmitSuccessStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitSuccessStatus);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WoFormStatus.submitSuccess()';
}


}




// dart format on
