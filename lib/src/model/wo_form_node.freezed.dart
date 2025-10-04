// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wo_form_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
WoFormNode<T> _$WoFormNodeFromJson<T extends Object?>(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'conditionnal':
          return ConditionnalNode<T>.fromJson(
            json
          );
                case 'dynamicInputs':
          return DynamicInputsNode<T>.fromJson(
            json
          );
                case 'empty':
          return EmptyNode<T>.fromJson(
            json
          );
                case 'future':
          return FutureNode<T>.fromJson(
            json
          );
                case 'inputs':
          return InputsNode<T>.fromJson(
            json
          );
                case 'pathBuilder':
          return PathBuilderNode<T>.fromJson(
            json
          );
                case 'root':
          return RootNode<T>.fromJson(
            json
          );
                case 'selector':
          return SelectorNode<T>.fromJson(
            json
          );
                case 'valueBuilder':
          return ValueBuilderNode<T>.fromJson(
            json
          );
                case 'valuesBuilder':
          return ValuesBuilderNode<T>.fromJson(
            json
          );
                case 'valueListener':
          return ValueListenerNode<T>.fromJson(
            json
          );
                case 'widget':
          return WidgetNode<T>.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WoFormNode',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WoFormNode<T extends Object?> {

// The root's id should never be used
 String get id;
/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WoFormNodeCopyWith<T, WoFormNode<T>> get copyWith => _$WoFormNodeCopyWithImpl<T, WoFormNode<T>>(this as WoFormNode<T>, _$identity);

  /// Serializes this WoFormNode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WoFormNode<T>&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WoFormNode<$T>(id: $id)';
}


}

/// @nodoc
abstract mixin class $WoFormNodeCopyWith<T extends Object?,$Res>  {
  factory $WoFormNodeCopyWith(WoFormNode<T> value, $Res Function(WoFormNode<T>) _then) = _$WoFormNodeCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$WoFormNodeCopyWithImpl<T extends Object?,$Res>
    implements $WoFormNodeCopyWith<T, $Res> {
  _$WoFormNodeCopyWithImpl(this._self, this._then);

  final WoFormNode<T> _self;
  final $Res Function(WoFormNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc
@JsonSerializable()

class ConditionnalNode<T extends Object?> extends WoFormNode<T> {
  const ConditionnalNode({required this.id, required this.condition, @InputConverter() required this.child, this.conditionIsInitiallyMet = false, this.resetChildrenWhenHidden = true, this.uiSettings = const InputUiSettings(), final  String? $type}): $type = $type ?? 'conditionnal',super._();
  factory ConditionnalNode.fromJson(Map<String, dynamic> json) => _$ConditionnalNodeFromJson(json);

@override final  String id;
 final  Condition condition;
@InputConverter() final  WoFormNode child;
@JsonKey() final  bool conditionIsInitiallyMet;
/// If true, when the condition goes from met to not met, the values of the
/// child and its descendant nodes are reset to their initial state.
@JsonKey() final  bool resetChildrenWhenHidden;
@JsonKey() final  InputUiSettings uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionnalNodeCopyWith<T, ConditionnalNode<T>> get copyWith => _$ConditionnalNodeCopyWithImpl<T, ConditionnalNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionnalNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionnalNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.child, child) || other.child == child)&&(identical(other.conditionIsInitiallyMet, conditionIsInitiallyMet) || other.conditionIsInitiallyMet == conditionIsInitiallyMet)&&(identical(other.resetChildrenWhenHidden, resetChildrenWhenHidden) || other.resetChildrenWhenHidden == resetChildrenWhenHidden)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,condition,child,conditionIsInitiallyMet,resetChildrenWhenHidden,uiSettings);

@override
String toString() {
  return 'WoFormNode<$T>.conditionnal(id: $id, condition: $condition, child: $child, conditionIsInitiallyMet: $conditionIsInitiallyMet, resetChildrenWhenHidden: $resetChildrenWhenHidden, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $ConditionnalNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $ConditionnalNodeCopyWith(ConditionnalNode<T> value, $Res Function(ConditionnalNode<T>) _then) = _$ConditionnalNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, Condition condition,@InputConverter() WoFormNode child, bool conditionIsInitiallyMet, bool resetChildrenWhenHidden, InputUiSettings uiSettings
});


$ConditionCopyWith<$Res> get condition;$WoFormNodeCopyWith<Object?, $Res> get child;$InputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$ConditionnalNodeCopyWithImpl<T extends Object?,$Res>
    implements $ConditionnalNodeCopyWith<T, $Res> {
  _$ConditionnalNodeCopyWithImpl(this._self, this._then);

  final ConditionnalNode<T> _self;
  final $Res Function(ConditionnalNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? condition = null,Object? child = null,Object? conditionIsInitiallyMet = null,Object? resetChildrenWhenHidden = null,Object? uiSettings = null,}) {
  return _then(ConditionnalNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition,child: null == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WoFormNode,conditionIsInitiallyMet: null == conditionIsInitiallyMet ? _self.conditionIsInitiallyMet : conditionIsInitiallyMet // ignore: cast_nullable_to_non_nullable
as bool,resetChildrenWhenHidden: null == resetChildrenWhenHidden ? _self.resetChildrenWhenHidden : resetChildrenWhenHidden // ignore: cast_nullable_to_non_nullable
as bool,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as InputUiSettings,
  ));
}

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionCopyWith<$Res> get condition {
  
  return $ConditionCopyWith<$Res>(_self.condition, (value) {
    return _then(_self.copyWith(condition: value));
  });
}/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormNodeCopyWith<Object?, $Res> get child {
  
  return $WoFormNodeCopyWith<Object?, $Res>(_self.child, (value) {
    return _then(_self.copyWith(child: value));
  });
}/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $InputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class DynamicInputsNode<T extends Object?> extends WoFormNode<T> {
  const DynamicInputsNode({required this.id, final  List<DynamicInputTemplate> templates = const [], @InputsListConverter() final  List<WoFormNode>? initialChildren, this.uiSettings = const DynamicInputsNodeUiSettings(), this.exportSettings = const ExportSettings(), final  String? $type}): _templates = templates,_initialChildren = initialChildren,$type = $type ?? 'dynamicInputs',super._();
  factory DynamicInputsNode.fromJson(Map<String, dynamic> json) => _$DynamicInputsNodeFromJson(json);

@override final  String id;
// @DynamicInputTemplatesConverter()
 final  List<DynamicInputTemplate> _templates;
// @DynamicInputTemplatesConverter()
@JsonKey() List<DynamicInputTemplate> get templates {
  if (_templates is EqualUnmodifiableListView) return _templates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_templates);
}

 final  List<WoFormNode>? _initialChildren;
@InputsListConverter() List<WoFormNode>? get initialChildren {
  final value = _initialChildren;
  if (value == null) return null;
  if (_initialChildren is EqualUnmodifiableListView) return _initialChildren;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@JsonKey() final  DynamicInputsNodeUiSettings uiSettings;
@JsonKey() final  ExportSettings exportSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicInputsNodeCopyWith<T, DynamicInputsNode<T>> get copyWith => _$DynamicInputsNodeCopyWithImpl<T, DynamicInputsNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicInputsNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicInputsNode<T>&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._templates, _templates)&&const DeepCollectionEquality().equals(other._initialChildren, _initialChildren)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.exportSettings, exportSettings) || other.exportSettings == exportSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_templates),const DeepCollectionEquality().hash(_initialChildren),uiSettings,exportSettings);

@override
String toString() {
  return 'WoFormNode<$T>.dynamicInputs(id: $id, templates: $templates, initialChildren: $initialChildren, uiSettings: $uiSettings, exportSettings: $exportSettings)';
}


}

/// @nodoc
abstract mixin class $DynamicInputsNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $DynamicInputsNodeCopyWith(DynamicInputsNode<T> value, $Res Function(DynamicInputsNode<T>) _then) = _$DynamicInputsNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, List<DynamicInputTemplate> templates,@InputsListConverter() List<WoFormNode>? initialChildren, DynamicInputsNodeUiSettings uiSettings, ExportSettings exportSettings
});


$DynamicInputsNodeUiSettingsCopyWith<$Res> get uiSettings;$ExportSettingsCopyWith<$Res> get exportSettings;

}
/// @nodoc
class _$DynamicInputsNodeCopyWithImpl<T extends Object?,$Res>
    implements $DynamicInputsNodeCopyWith<T, $Res> {
  _$DynamicInputsNodeCopyWithImpl(this._self, this._then);

  final DynamicInputsNode<T> _self;
  final $Res Function(DynamicInputsNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? templates = null,Object? initialChildren = freezed,Object? uiSettings = null,Object? exportSettings = null,}) {
  return _then(DynamicInputsNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,templates: null == templates ? _self._templates : templates // ignore: cast_nullable_to_non_nullable
as List<DynamicInputTemplate>,initialChildren: freezed == initialChildren ? _self._initialChildren : initialChildren // ignore: cast_nullable_to_non_nullable
as List<WoFormNode>?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as DynamicInputsNodeUiSettings,exportSettings: null == exportSettings ? _self.exportSettings : exportSettings // ignore: cast_nullable_to_non_nullable
as ExportSettings,
  ));
}

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicInputsNodeUiSettingsCopyWith<$Res> get uiSettings {
  
  return $DynamicInputsNodeUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExportSettingsCopyWith<$Res> get exportSettings {
  
  return $ExportSettingsCopyWith<$Res>(_self.exportSettings, (value) {
    return _then(_self.copyWith(exportSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class EmptyNode<T extends Object?> extends WoFormNode<T> {
  const EmptyNode({this.id = 'EmptyNode', final  String? $type}): $type = $type ?? 'empty',super._();
  factory EmptyNode.fromJson(Map<String, dynamic> json) => _$EmptyNodeFromJson(json);

@override@JsonKey() final  String id;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyNodeCopyWith<T, EmptyNode<T>> get copyWith => _$EmptyNodeCopyWithImpl<T, EmptyNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmptyNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyNode<T>&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WoFormNode<$T>.empty(id: $id)';
}


}

/// @nodoc
abstract mixin class $EmptyNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $EmptyNodeCopyWith(EmptyNode<T> value, $Res Function(EmptyNode<T>) _then) = _$EmptyNodeCopyWithImpl;
@override @useResult
$Res call({
 String id
});




}
/// @nodoc
class _$EmptyNodeCopyWithImpl<T extends Object?,$Res>
    implements $EmptyNodeCopyWith<T, $Res> {
  _$EmptyNodeCopyWithImpl(this._self, this._then);

  final EmptyNode<T> _self;
  final $Res Function(EmptyNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(EmptyNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class FutureNode<T extends Object?> extends WoFormNode<T> {
  const FutureNode({required this.id, @notSerializable this.future, @notSerializable this.builder, @notSerializable this.initialData, this.willResetToInitialValues = true, this.uiSettings = const InputUiSettings(), final  String? $type}): assert(future != null, 'FutureNode.future cannot be null'),assert(builder != null, 'FutureNode.builder cannot be null'),$type = $type ?? 'future',super._();
  factory FutureNode.fromJson(Map<String, dynamic> json) => _$FutureNodeFromJson(json);

@override final  String id;
@notSerializable final  Future<T>? future;
@notSerializable final  WoFormNode Function(AsyncSnapshot<T?> snapshot)? builder;
@notSerializable final  T? initialData;
/// If true, when the future will be completed, the values of
/// the children inputs will be reseted to their getInitialValues.
@JsonKey() final  bool willResetToInitialValues;
@JsonKey() final  InputUiSettings uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FutureNodeCopyWith<T, FutureNode<T>> get copyWith => _$FutureNodeCopyWithImpl<T, FutureNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FutureNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FutureNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.future, future) || other.future == future)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other.initialData, initialData)&&(identical(other.willResetToInitialValues, willResetToInitialValues) || other.willResetToInitialValues == willResetToInitialValues)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,future,builder,const DeepCollectionEquality().hash(initialData),willResetToInitialValues,uiSettings);

@override
String toString() {
  return 'WoFormNode<$T>.future(id: $id, future: $future, builder: $builder, initialData: $initialData, willResetToInitialValues: $willResetToInitialValues, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $FutureNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $FutureNodeCopyWith(FutureNode<T> value, $Res Function(FutureNode<T>) _then) = _$FutureNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@notSerializable Future<T>? future,@notSerializable WoFormNode Function(AsyncSnapshot<T?> snapshot)? builder,@notSerializable T? initialData, bool willResetToInitialValues, InputUiSettings uiSettings
});


$InputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$FutureNodeCopyWithImpl<T extends Object?,$Res>
    implements $FutureNodeCopyWith<T, $Res> {
  _$FutureNodeCopyWithImpl(this._self, this._then);

  final FutureNode<T> _self;
  final $Res Function(FutureNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? future = freezed,Object? builder = freezed,Object? initialData = freezed,Object? willResetToInitialValues = null,Object? uiSettings = null,}) {
  return _then(FutureNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,future: freezed == future ? _self.future : future // ignore: cast_nullable_to_non_nullable
as Future<T>?,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNode Function(AsyncSnapshot<T?> snapshot)?,initialData: freezed == initialData ? _self.initialData : initialData // ignore: cast_nullable_to_non_nullable
as T?,willResetToInitialValues: null == willResetToInitialValues ? _self.willResetToInitialValues : willResetToInitialValues // ignore: cast_nullable_to_non_nullable
as bool,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as InputUiSettings,
  ));
}

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $InputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class InputsNode<T extends Object?> extends WoFormNode<T> {
  const InputsNode({required this.id, @InputsListConverter() final  List<WoFormNode> children = const [], this.uiSettings = const InputsNodeUiSettings(), this.exportSettings = const ExportSettings(), final  String? $type}): _children = children,$type = $type ?? 'inputs',super._();
  factory InputsNode.fromJson(Map<String, dynamic> json) => _$InputsNodeFromJson(json);

@override final  String id;
 final  List<WoFormNode> _children;
@JsonKey()@InputsListConverter() List<WoFormNode> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}

@JsonKey() final  InputsNodeUiSettings uiSettings;
@JsonKey() final  ExportSettings exportSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputsNodeCopyWith<T, InputsNode<T>> get copyWith => _$InputsNodeCopyWithImpl<T, InputsNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputsNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputsNode<T>&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.exportSettings, exportSettings) || other.exportSettings == exportSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_children),uiSettings,exportSettings);

@override
String toString() {
  return 'WoFormNode<$T>.inputs(id: $id, children: $children, uiSettings: $uiSettings, exportSettings: $exportSettings)';
}


}

/// @nodoc
abstract mixin class $InputsNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $InputsNodeCopyWith(InputsNode<T> value, $Res Function(InputsNode<T>) _then) = _$InputsNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@InputsListConverter() List<WoFormNode> children, InputsNodeUiSettings uiSettings, ExportSettings exportSettings
});


$InputsNodeUiSettingsCopyWith<$Res> get uiSettings;$ExportSettingsCopyWith<$Res> get exportSettings;

}
/// @nodoc
class _$InputsNodeCopyWithImpl<T extends Object?,$Res>
    implements $InputsNodeCopyWith<T, $Res> {
  _$InputsNodeCopyWithImpl(this._self, this._then);

  final InputsNode<T> _self;
  final $Res Function(InputsNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? children = null,Object? uiSettings = null,Object? exportSettings = null,}) {
  return _then(InputsNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<WoFormNode>,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as InputsNodeUiSettings,exportSettings: null == exportSettings ? _self.exportSettings : exportSettings // ignore: cast_nullable_to_non_nullable
as ExportSettings,
  ));
}

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputsNodeUiSettingsCopyWith<$Res> get uiSettings {
  
  return $InputsNodeUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExportSettingsCopyWith<$Res> get exportSettings {
  
  return $ExportSettingsCopyWith<$Res>(_self.exportSettings, (value) {
    return _then(_self.copyWith(exportSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class PathBuilderNode<T extends Object?> extends WoFormNode<T> {
  const PathBuilderNode({required this.id, @notSerializable this.builder, final  String? $type}): assert(builder != null, 'PathBuilderNode.builder cannot be null'),$type = $type ?? 'pathBuilder',super._();
  factory PathBuilderNode.fromJson(Map<String, dynamic> json) => _$PathBuilderNodeFromJson(json);

@override final  String id;
/// [path] is the path of this node, wich includes its own id.
@notSerializable final  WoFormNode Function(String path)? builder;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PathBuilderNodeCopyWith<T, PathBuilderNode<T>> get copyWith => _$PathBuilderNodeCopyWithImpl<T, PathBuilderNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PathBuilderNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PathBuilderNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.builder, builder) || other.builder == builder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,builder);

@override
String toString() {
  return 'WoFormNode<$T>.pathBuilder(id: $id, builder: $builder)';
}


}

/// @nodoc
abstract mixin class $PathBuilderNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $PathBuilderNodeCopyWith(PathBuilderNode<T> value, $Res Function(PathBuilderNode<T>) _then) = _$PathBuilderNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@notSerializable WoFormNode Function(String path)? builder
});




}
/// @nodoc
class _$PathBuilderNodeCopyWithImpl<T extends Object?,$Res>
    implements $PathBuilderNodeCopyWith<T, $Res> {
  _$PathBuilderNodeCopyWithImpl(this._self, this._then);

  final PathBuilderNode<T> _self;
  final $Res Function(PathBuilderNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? builder = freezed,}) {
  return _then(PathBuilderNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNode Function(String path)?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class RootNode<T extends Object?> extends WoFormNode<T> {
  const RootNode({this.id = 'root', final  Json initialValues = const {}, @InputsListConverter() final  List<WoFormNode> children = const [], this.uiSettings = const WoFormUiSettings(), this.exportSettings = const ExportSettings(), this.hydratationId = '', final  String? $type}): _initialValues = initialValues,_children = children,$type = $type ?? 'root',super._();
  factory RootNode.fromJson(Map<String, dynamic> json) => _$RootNodeFromJson(json);

// The root's id should never be used
@override@JsonKey() final  String id;
 final  Json _initialValues;
@JsonKey() Json get initialValues {
  if (_initialValues is EqualUnmodifiableMapView) return _initialValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_initialValues);
}

 final  List<WoFormNode> _children;
@JsonKey()@InputsListConverter() List<WoFormNode> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}

@JsonKey() final  WoFormUiSettings uiSettings;
@JsonKey() final  ExportSettings exportSettings;
// LATER : issue, how to modify an in-production corrupted data ?
// give a way to override it ?
//
/// If not empty, this form will be locally persistent, using HydratedCubit.
@JsonKey() final  String hydratationId;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RootNodeCopyWith<T, RootNode<T>> get copyWith => _$RootNodeCopyWithImpl<T, RootNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RootNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RootNode<T>&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._initialValues, _initialValues)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.exportSettings, exportSettings) || other.exportSettings == exportSettings)&&(identical(other.hydratationId, hydratationId) || other.hydratationId == hydratationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_initialValues),const DeepCollectionEquality().hash(_children),uiSettings,exportSettings,hydratationId);

@override
String toString() {
  return 'WoFormNode<$T>.root(id: $id, initialValues: $initialValues, children: $children, uiSettings: $uiSettings, exportSettings: $exportSettings, hydratationId: $hydratationId)';
}


}

/// @nodoc
abstract mixin class $RootNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $RootNodeCopyWith(RootNode<T> value, $Res Function(RootNode<T>) _then) = _$RootNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, Json initialValues,@InputsListConverter() List<WoFormNode> children, WoFormUiSettings uiSettings, ExportSettings exportSettings, String hydratationId
});


$WoFormUiSettingsCopyWith<$Res> get uiSettings;$ExportSettingsCopyWith<$Res> get exportSettings;

}
/// @nodoc
class _$RootNodeCopyWithImpl<T extends Object?,$Res>
    implements $RootNodeCopyWith<T, $Res> {
  _$RootNodeCopyWithImpl(this._self, this._then);

  final RootNode<T> _self;
  final $Res Function(RootNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialValues = null,Object? children = null,Object? uiSettings = null,Object? exportSettings = null,Object? hydratationId = null,}) {
  return _then(RootNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValues: null == initialValues ? _self._initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as Json,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<WoFormNode>,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as WoFormUiSettings,exportSettings: null == exportSettings ? _self.exportSettings : exportSettings // ignore: cast_nullable_to_non_nullable
as ExportSettings,hydratationId: null == hydratationId ? _self.hydratationId : hydratationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormUiSettingsCopyWith<$Res> get uiSettings {
  
  return $WoFormUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExportSettingsCopyWith<$Res> get exportSettings {
  
  return $ExportSettingsCopyWith<$Res>(_self.exportSettings, (value) {
    return _then(_self.copyWith(exportSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class SelectorNode<T extends Object?> extends WoFormNode<T> {
  const SelectorNode({required this.id, @notSerializable this.selector, @notSerializable this.builder, this.initialValue, this.uiSettings = const InputUiSettings(), final  String? $type}): assert(selector != null, 'SelectorNode.selector cannot be null'),assert(builder != null, 'SelectorNode.builder cannot be null'),$type = $type ?? 'selector',super._();
  factory SelectorNode.fromJson(Map<String, dynamic> json) => _$SelectorNodeFromJson(json);

@override final  String id;
@notSerializable final  Object? Function(WoFormValues values)? selector;
@notSerializable final  WoFormNode Function(Object? value)? builder;
 final  Object? initialValue;
@JsonKey() final  InputUiSettings uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectorNodeCopyWith<T, SelectorNode<T>> get copyWith => _$SelectorNodeCopyWithImpl<T, SelectorNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SelectorNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectorNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.selector, selector) || other.selector == selector)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other.initialValue, initialValue)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,selector,builder,const DeepCollectionEquality().hash(initialValue),uiSettings);

@override
String toString() {
  return 'WoFormNode<$T>.selector(id: $id, selector: $selector, builder: $builder, initialValue: $initialValue, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $SelectorNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $SelectorNodeCopyWith(SelectorNode<T> value, $Res Function(SelectorNode<T>) _then) = _$SelectorNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@notSerializable Object? Function(WoFormValues values)? selector,@notSerializable WoFormNode Function(Object? value)? builder, Object? initialValue, InputUiSettings uiSettings
});


$InputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$SelectorNodeCopyWithImpl<T extends Object?,$Res>
    implements $SelectorNodeCopyWith<T, $Res> {
  _$SelectorNodeCopyWithImpl(this._self, this._then);

  final SelectorNode<T> _self;
  final $Res Function(SelectorNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? selector = freezed,Object? builder = freezed,Object? initialValue = freezed,Object? uiSettings = null,}) {
  return _then(SelectorNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,selector: freezed == selector ? _self.selector : selector // ignore: cast_nullable_to_non_nullable
as Object? Function(WoFormValues values)?,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNode Function(Object? value)?,initialValue: freezed == initialValue ? _self.initialValue : initialValue ,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as InputUiSettings,
  ));
}

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $InputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class ValueBuilderNode<T extends Object?> extends WoFormNode<T> {
  const ValueBuilderNode({required this.id, required this.path, @notSerializable this.builder, this.initialValue, final  String? $type}): assert(builder != null, 'ValueBuilderNode.builder cannot be null'),$type = $type ?? 'valueBuilder',super._();
  factory ValueBuilderNode.fromJson(Map<String, dynamic> json) => _$ValueBuilderNodeFromJson(json);

@override final  String id;
 final  String path;
@notSerializable final  WoFormNode Function(Object? value)? builder;
 final  Object? initialValue;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueBuilderNodeCopyWith<T, ValueBuilderNode<T>> get copyWith => _$ValueBuilderNodeCopyWithImpl<T, ValueBuilderNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValueBuilderNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueBuilderNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other.initialValue, initialValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,path,builder,const DeepCollectionEquality().hash(initialValue));

@override
String toString() {
  return 'WoFormNode<$T>.valueBuilder(id: $id, path: $path, builder: $builder, initialValue: $initialValue)';
}


}

/// @nodoc
abstract mixin class $ValueBuilderNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $ValueBuilderNodeCopyWith(ValueBuilderNode<T> value, $Res Function(ValueBuilderNode<T>) _then) = _$ValueBuilderNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String path,@notSerializable WoFormNode Function(Object? value)? builder, Object? initialValue
});




}
/// @nodoc
class _$ValueBuilderNodeCopyWithImpl<T extends Object?,$Res>
    implements $ValueBuilderNodeCopyWith<T, $Res> {
  _$ValueBuilderNodeCopyWithImpl(this._self, this._then);

  final ValueBuilderNode<T> _self;
  final $Res Function(ValueBuilderNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? builder = freezed,Object? initialValue = freezed,}) {
  return _then(ValueBuilderNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNode Function(Object? value)?,initialValue: freezed == initialValue ? _self.initialValue : initialValue ,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ValuesBuilderNode<T extends Object?> extends WoFormNode<T> {
  const ValuesBuilderNode({required this.id, required final  List<String> paths, @notSerializable this.builder, final  Map<String, Object?>? initialValues, final  String? $type}): assert(builder != null, 'ValuesBuilderNode.builder cannot be null'),_paths = paths,_initialValues = initialValues,$type = $type ?? 'valuesBuilder',super._();
  factory ValuesBuilderNode.fromJson(Map<String, dynamic> json) => _$ValuesBuilderNodeFromJson(json);

@override final  String id;
 final  List<String> _paths;
 List<String> get paths {
  if (_paths is EqualUnmodifiableListView) return _paths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paths);
}

@notSerializable final  WoFormNode Function(Map<String, Object?> values)? builder;
 final  Map<String, Object?>? _initialValues;
 Map<String, Object?>? get initialValues {
  final value = _initialValues;
  if (value == null) return null;
  if (_initialValues is EqualUnmodifiableMapView) return _initialValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValuesBuilderNodeCopyWith<T, ValuesBuilderNode<T>> get copyWith => _$ValuesBuilderNodeCopyWithImpl<T, ValuesBuilderNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValuesBuilderNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValuesBuilderNode<T>&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._paths, _paths)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other._initialValues, _initialValues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_paths),builder,const DeepCollectionEquality().hash(_initialValues));

@override
String toString() {
  return 'WoFormNode<$T>.valuesBuilder(id: $id, paths: $paths, builder: $builder, initialValues: $initialValues)';
}


}

/// @nodoc
abstract mixin class $ValuesBuilderNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $ValuesBuilderNodeCopyWith(ValuesBuilderNode<T> value, $Res Function(ValuesBuilderNode<T>) _then) = _$ValuesBuilderNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> paths,@notSerializable WoFormNode Function(Map<String, Object?> values)? builder, Map<String, Object?>? initialValues
});




}
/// @nodoc
class _$ValuesBuilderNodeCopyWithImpl<T extends Object?,$Res>
    implements $ValuesBuilderNodeCopyWith<T, $Res> {
  _$ValuesBuilderNodeCopyWithImpl(this._self, this._then);

  final ValuesBuilderNode<T> _self;
  final $Res Function(ValuesBuilderNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paths = null,Object? builder = freezed,Object? initialValues = freezed,}) {
  return _then(ValuesBuilderNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paths: null == paths ? _self._paths : paths // ignore: cast_nullable_to_non_nullable
as List<String>,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNode Function(Map<String, Object?> values)?,initialValues: freezed == initialValues ? _self._initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ValueListenerNode<T extends Object?> extends WoFormNode<T> {
  const ValueListenerNode({required this.path, this.id = 'ValueListenerNode', @notSerializable this.listenWhen, @notSerializable this.listener, final  String? $type}): assert(listener != null, 'ValueListenerNode.listener cannot be null'),$type = $type ?? 'valueListener',super._();
  factory ValueListenerNode.fromJson(Map<String, dynamic> json) => _$ValueListenerNodeFromJson(json);

 final  String path;
@override@JsonKey() final  String id;
@notSerializable final  bool Function(Object? previous, Object? current)? listenWhen;
@notSerializable final  void Function(BuildContext context, String parentPath, Object? value)? listener;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueListenerNodeCopyWith<T, ValueListenerNode<T>> get copyWith => _$ValueListenerNodeCopyWithImpl<T, ValueListenerNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValueListenerNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueListenerNode<T>&&(identical(other.path, path) || other.path == path)&&(identical(other.id, id) || other.id == id)&&(identical(other.listenWhen, listenWhen) || other.listenWhen == listenWhen)&&(identical(other.listener, listener) || other.listener == listener));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,id,listenWhen,listener);

@override
String toString() {
  return 'WoFormNode<$T>.valueListener(path: $path, id: $id, listenWhen: $listenWhen, listener: $listener)';
}


}

/// @nodoc
abstract mixin class $ValueListenerNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $ValueListenerNodeCopyWith(ValueListenerNode<T> value, $Res Function(ValueListenerNode<T>) _then) = _$ValueListenerNodeCopyWithImpl;
@override @useResult
$Res call({
 String path, String id,@notSerializable bool Function(Object? previous, Object? current)? listenWhen,@notSerializable void Function(BuildContext context, String parentPath, Object? value)? listener
});




}
/// @nodoc
class _$ValueListenerNodeCopyWithImpl<T extends Object?,$Res>
    implements $ValueListenerNodeCopyWith<T, $Res> {
  _$ValueListenerNodeCopyWithImpl(this._self, this._then);

  final ValueListenerNode<T> _self;
  final $Res Function(ValueListenerNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? id = null,Object? listenWhen = freezed,Object? listener = freezed,}) {
  return _then(ValueListenerNode<T>(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listenWhen: freezed == listenWhen ? _self.listenWhen : listenWhen // ignore: cast_nullable_to_non_nullable
as bool Function(Object? previous, Object? current)?,listener: freezed == listener ? _self.listener : listener // ignore: cast_nullable_to_non_nullable
as void Function(BuildContext context, String parentPath, Object? value)?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class WidgetNode<T extends Object?> extends WoFormNode<T> {
  const WidgetNode({this.id = 'WidgetNode', @notSerializable this.builder, this.uiSettings = const InputUiSettings(), final  String? $type}): $type = $type ?? 'widget',super._();
  factory WidgetNode.fromJson(Map<String, dynamic> json) => _$WidgetNodeFromJson(json);

@override@JsonKey() final  String id;
@notSerializable final  Widget Function(BuildContext context)? builder;
@JsonKey() final  InputUiSettings uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WidgetNodeCopyWith<T, WidgetNode<T>> get copyWith => _$WidgetNodeCopyWithImpl<T, WidgetNode<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetNodeToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.builder, builder) || other.builder == builder)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,builder,uiSettings);

@override
String toString() {
  return 'WoFormNode<$T>.widget(id: $id, builder: $builder, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $WidgetNodeCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $WidgetNodeCopyWith(WidgetNode<T> value, $Res Function(WidgetNode<T>) _then) = _$WidgetNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@notSerializable Widget Function(BuildContext context)? builder, InputUiSettings uiSettings
});


$InputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$WidgetNodeCopyWithImpl<T extends Object?,$Res>
    implements $WidgetNodeCopyWith<T, $Res> {
  _$WidgetNodeCopyWithImpl(this._self, this._then);

  final WidgetNode<T> _self;
  final $Res Function(WidgetNode<T>) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? builder = freezed,Object? uiSettings = null,}) {
  return _then(WidgetNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as Widget Function(BuildContext context)?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as InputUiSettings,
  ));
}

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $InputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}


/// @nodoc
mixin _$DynamicInputTemplate {

@InputNullableConverter() WoFormNode? get child;@notSerializable WoFormNode Function()? get childBuilder; DynamicInputUiSettings get uiSettings;
/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DynamicInputTemplateCopyWith<DynamicInputTemplate> get copyWith => _$DynamicInputTemplateCopyWithImpl<DynamicInputTemplate>(this as DynamicInputTemplate, _$identity);

  /// Serializes this DynamicInputTemplate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicInputTemplate&&(identical(other.child, child) || other.child == child)&&(identical(other.childBuilder, childBuilder) || other.childBuilder == childBuilder)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child,childBuilder,uiSettings);

@override
String toString() {
  return 'DynamicInputTemplate(child: $child, childBuilder: $childBuilder, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $DynamicInputTemplateCopyWith<$Res>  {
  factory $DynamicInputTemplateCopyWith(DynamicInputTemplate value, $Res Function(DynamicInputTemplate) _then) = _$DynamicInputTemplateCopyWithImpl;
@useResult
$Res call({
@InputNullableConverter() WoFormNode? child,@notSerializable WoFormNode Function()? childBuilder, DynamicInputUiSettings uiSettings
});


$WoFormNodeCopyWith<Object?, $Res>? get child;$DynamicInputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$DynamicInputTemplateCopyWithImpl<$Res>
    implements $DynamicInputTemplateCopyWith<$Res> {
  _$DynamicInputTemplateCopyWithImpl(this._self, this._then);

  final DynamicInputTemplate _self;
  final $Res Function(DynamicInputTemplate) _then;

/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? child = freezed,Object? childBuilder = freezed,Object? uiSettings = null,}) {
  return _then(_self.copyWith(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WoFormNode?,childBuilder: freezed == childBuilder ? _self.childBuilder : childBuilder // ignore: cast_nullable_to_non_nullable
as WoFormNode Function()?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as DynamicInputUiSettings,
  ));
}
/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormNodeCopyWith<Object?, $Res>? get child {
    if (_self.child == null) {
    return null;
  }

  return $WoFormNodeCopyWith<Object?, $Res>(_self.child!, (value) {
    return _then(_self.copyWith(child: value));
  });
}/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicInputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $DynamicInputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}



/// @nodoc
@JsonSerializable()

class _DynamicInputTemplate extends DynamicInputTemplate {
   _DynamicInputTemplate({@InputNullableConverter() this.child, @notSerializable this.childBuilder, this.uiSettings = const DynamicInputUiSettings()}): assert((child == null) != (childBuilder == null), 'One of child or childBuilder must be specified'),super._();
  factory _DynamicInputTemplate.fromJson(Map<String, dynamic> json) => _$DynamicInputTemplateFromJson(json);

@override@InputNullableConverter() final  WoFormNode? child;
@override@notSerializable final  WoFormNode Function()? childBuilder;
@override@JsonKey() final  DynamicInputUiSettings uiSettings;

/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DynamicInputTemplateCopyWith<_DynamicInputTemplate> get copyWith => __$DynamicInputTemplateCopyWithImpl<_DynamicInputTemplate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicInputTemplateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DynamicInputTemplate&&(identical(other.child, child) || other.child == child)&&(identical(other.childBuilder, childBuilder) || other.childBuilder == childBuilder)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,child,childBuilder,uiSettings);

@override
String toString() {
  return 'DynamicInputTemplate(child: $child, childBuilder: $childBuilder, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class _$DynamicInputTemplateCopyWith<$Res> implements $DynamicInputTemplateCopyWith<$Res> {
  factory _$DynamicInputTemplateCopyWith(_DynamicInputTemplate value, $Res Function(_DynamicInputTemplate) _then) = __$DynamicInputTemplateCopyWithImpl;
@override @useResult
$Res call({
@InputNullableConverter() WoFormNode? child,@notSerializable WoFormNode Function()? childBuilder, DynamicInputUiSettings uiSettings
});


@override $WoFormNodeCopyWith<Object?, $Res>? get child;@override $DynamicInputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class __$DynamicInputTemplateCopyWithImpl<$Res>
    implements _$DynamicInputTemplateCopyWith<$Res> {
  __$DynamicInputTemplateCopyWithImpl(this._self, this._then);

  final _DynamicInputTemplate _self;
  final $Res Function(_DynamicInputTemplate) _then;

/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? child = freezed,Object? childBuilder = freezed,Object? uiSettings = null,}) {
  return _then(_DynamicInputTemplate(
child: freezed == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WoFormNode?,childBuilder: freezed == childBuilder ? _self.childBuilder : childBuilder // ignore: cast_nullable_to_non_nullable
as WoFormNode Function()?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as DynamicInputUiSettings,
  ));
}

/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormNodeCopyWith<Object?, $Res>? get child {
    if (_self.child == null) {
    return null;
  }

  return $WoFormNodeCopyWith<Object?, $Res>(_self.child!, (value) {
    return _then(_self.copyWith(child: value));
  });
}/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicInputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $DynamicInputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

WoFormInput<T> _$WoFormInputFromJson<T extends Object?>(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'boolean':
          return BooleanInput<T>.fromJson(
            json
          );
                case 'dateTime':
          return DateTimeInput<T>.fromJson(
            json
          );
                case 'duration':
          return DurationInput<T>.fromJson(
            json
          );
                case 'media':
          return MediaInput<T>.fromJson(
            json
          );
                case 'num':
          return NumInput<T>.fromJson(
            json
          );
                case 'string':
          return StringInput<T>.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'WoFormInput',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$WoFormInput<T extends Object?> {

 String get id;@notSerializable WoFormInputError? Function(Never, String)? get getCustomError; Object? get uiSettings;
/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WoFormInputCopyWith<T, WoFormInput<T>> get copyWith => _$WoFormInputCopyWithImpl<T, WoFormInput<T>>(this as WoFormInput<T>, _$identity);

  /// Serializes this WoFormInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WoFormInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&const DeepCollectionEquality().equals(other.uiSettings, uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,getCustomError,const DeepCollectionEquality().hash(uiSettings));

@override
String toString() {
  return 'WoFormInput<$T>(id: $id, getCustomError: $getCustomError, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $WoFormInputCopyWith<T extends Object?,$Res> implements $WoFormNodeCopyWith<T, $Res> {
  factory $WoFormInputCopyWith(WoFormInput<T> value, $Res Function(WoFormInput<T>) _then) = _$WoFormInputCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$WoFormInputCopyWithImpl<T extends Object?,$Res>
    implements $WoFormInputCopyWith<T, $Res> {
  _$WoFormInputCopyWithImpl(this._self, this._then);

  final WoFormInput<T> _self;
  final $Res Function(WoFormInput<T>) _then;

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc
@JsonSerializable()

class BooleanInput<T extends Object?> extends WoFormInput<T> {
  const BooleanInput({required this.id, this.initialValue, this.isRequired = false, @notSerializable this.getCustomError, @notSerializable this.onValueChanged, this.uiSettings, final  String? $type}): $type = $type ?? 'boolean',super._();
  factory BooleanInput.fromJson(Map<String, dynamic> json) => _$BooleanInputFromJson(json);

@override final  String id;
 final  bool? initialValue;
@JsonKey() final  bool isRequired;
@override@notSerializable final  GetCustomErrorDef<bool>? getCustomError;
/// An optionnal callback when the value changed
@notSerializable final  void Function(bool? value)? onValueChanged;
@override final  BooleanInputUiSettings? uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BooleanInputCopyWith<T, BooleanInput<T>> get copyWith => _$BooleanInputCopyWithImpl<T, BooleanInput<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BooleanInputToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BooleanInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.onValueChanged, onValueChanged) || other.onValueChanged == onValueChanged)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,initialValue,isRequired,getCustomError,onValueChanged,uiSettings);

@override
String toString() {
  return 'WoFormInput<$T>.boolean(id: $id, initialValue: $initialValue, isRequired: $isRequired, getCustomError: $getCustomError, onValueChanged: $onValueChanged, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $BooleanInputCopyWith<T extends Object?,$Res> implements $WoFormInputCopyWith<T, $Res> {
  factory $BooleanInputCopyWith(BooleanInput<T> value, $Res Function(BooleanInput<T>) _then) = _$BooleanInputCopyWithImpl;
@override @useResult
$Res call({
 String id, bool? initialValue, bool isRequired,@notSerializable GetCustomErrorDef<bool>? getCustomError,@notSerializable void Function(bool? value)? onValueChanged, BooleanInputUiSettings? uiSettings
});


$BooleanInputUiSettingsCopyWith<$Res>? get uiSettings;

}
/// @nodoc
class _$BooleanInputCopyWithImpl<T extends Object?,$Res>
    implements $BooleanInputCopyWith<T, $Res> {
  _$BooleanInputCopyWithImpl(this._self, this._then);

  final BooleanInput<T> _self;
  final $Res Function(BooleanInput<T>) _then;

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialValue = freezed,Object? isRequired = null,Object? getCustomError = freezed,Object? onValueChanged = freezed,Object? uiSettings = freezed,}) {
  return _then(BooleanInput<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValue: freezed == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as bool?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorDef<bool>?,onValueChanged: freezed == onValueChanged ? _self.onValueChanged : onValueChanged // ignore: cast_nullable_to_non_nullable
as void Function(bool? value)?,uiSettings: freezed == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as BooleanInputUiSettings?,
  ));
}

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BooleanInputUiSettingsCopyWith<$Res>? get uiSettings {
    if (_self.uiSettings == null) {
    return null;
  }

  return $BooleanInputUiSettingsCopyWith<$Res>(_self.uiSettings!, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class DateTimeInput<T extends Object?> extends WoFormInput<T> {
  const DateTimeInput({required this.id, this.initialValue, this.isRequired = false, this.maxDate, this.minDate, @notSerializable this.getCustomError, this.uiSettings, final  String? $type}): $type = $type ?? 'dateTime',super._();
  factory DateTimeInput.fromJson(Map<String, dynamic> json) => _$DateTimeInputFromJson(json);

@override final  String id;
 final  FlexibleDateTime? initialValue;
@JsonKey() final  bool isRequired;
 final  FlexibleDateTime? maxDate;
 final  FlexibleDateTime? minDate;
@override@notSerializable final  GetCustomErrorDef<DateTime>? getCustomError;
@override final  DateTimeInputUiSettings? uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateTimeInputCopyWith<T, DateTimeInput<T>> get copyWith => _$DateTimeInputCopyWithImpl<T, DateTimeInput<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DateTimeInputToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateTimeInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.maxDate, maxDate) || other.maxDate == maxDate)&&(identical(other.minDate, minDate) || other.minDate == minDate)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,initialValue,isRequired,maxDate,minDate,getCustomError,uiSettings);

@override
String toString() {
  return 'WoFormInput<$T>.dateTime(id: $id, initialValue: $initialValue, isRequired: $isRequired, maxDate: $maxDate, minDate: $minDate, getCustomError: $getCustomError, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $DateTimeInputCopyWith<T extends Object?,$Res> implements $WoFormInputCopyWith<T, $Res> {
  factory $DateTimeInputCopyWith(DateTimeInput<T> value, $Res Function(DateTimeInput<T>) _then) = _$DateTimeInputCopyWithImpl;
@override @useResult
$Res call({
 String id, FlexibleDateTime? initialValue, bool isRequired, FlexibleDateTime? maxDate, FlexibleDateTime? minDate,@notSerializable GetCustomErrorDef<DateTime>? getCustomError, DateTimeInputUiSettings? uiSettings
});


$FlexibleDateTimeCopyWith<$Res>? get initialValue;$FlexibleDateTimeCopyWith<$Res>? get maxDate;$FlexibleDateTimeCopyWith<$Res>? get minDate;$DateTimeInputUiSettingsCopyWith<$Res>? get uiSettings;

}
/// @nodoc
class _$DateTimeInputCopyWithImpl<T extends Object?,$Res>
    implements $DateTimeInputCopyWith<T, $Res> {
  _$DateTimeInputCopyWithImpl(this._self, this._then);

  final DateTimeInput<T> _self;
  final $Res Function(DateTimeInput<T>) _then;

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialValue = freezed,Object? isRequired = null,Object? maxDate = freezed,Object? minDate = freezed,Object? getCustomError = freezed,Object? uiSettings = freezed,}) {
  return _then(DateTimeInput<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValue: freezed == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as FlexibleDateTime?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,maxDate: freezed == maxDate ? _self.maxDate : maxDate // ignore: cast_nullable_to_non_nullable
as FlexibleDateTime?,minDate: freezed == minDate ? _self.minDate : minDate // ignore: cast_nullable_to_non_nullable
as FlexibleDateTime?,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorDef<DateTime>?,uiSettings: freezed == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as DateTimeInputUiSettings?,
  ));
}

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlexibleDateTimeCopyWith<$Res>? get initialValue {
    if (_self.initialValue == null) {
    return null;
  }

  return $FlexibleDateTimeCopyWith<$Res>(_self.initialValue!, (value) {
    return _then(_self.copyWith(initialValue: value));
  });
}/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlexibleDateTimeCopyWith<$Res>? get maxDate {
    if (_self.maxDate == null) {
    return null;
  }

  return $FlexibleDateTimeCopyWith<$Res>(_self.maxDate!, (value) {
    return _then(_self.copyWith(maxDate: value));
  });
}/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FlexibleDateTimeCopyWith<$Res>? get minDate {
    if (_self.minDate == null) {
    return null;
  }

  return $FlexibleDateTimeCopyWith<$Res>(_self.minDate!, (value) {
    return _then(_self.copyWith(minDate: value));
  });
}/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DateTimeInputUiSettingsCopyWith<$Res>? get uiSettings {
    if (_self.uiSettings == null) {
    return null;
  }

  return $DateTimeInputUiSettingsCopyWith<$Res>(_self.uiSettings!, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class DurationInput<T extends Object?> extends WoFormInput<T> {
  const DurationInput({required this.id, @DurationNullableConverter() this.initialValue, this.isRequired = false, this.startDatePath, @DurationNullableConverter() this.maxDuration, @DurationNullableConverter() this.minDuration, @notSerializable this.getCustomError, this.uiSettings, final  String? $type}): $type = $type ?? 'duration',super._();
  factory DurationInput.fromJson(Map<String, dynamic> json) => _$DurationInputFromJson(json);

@override final  String id;
@DurationNullableConverter() final  Duration? initialValue;
@JsonKey() final  bool isRequired;
/// If provided, this should point to a DateTime in the WoFormValuesCubit.
/// When provided, the user will be able to choose between
/// DurationEditMode.dateTime and DurationEditMode.duration.
 final  String? startDatePath;
@DurationNullableConverter() final  Duration? maxDuration;
@DurationNullableConverter() final  Duration? minDuration;
@override@notSerializable final  GetCustomErrorDef<Duration>? getCustomError;
@override final  DurationInputUiSettings? uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DurationInputCopyWith<T, DurationInput<T>> get copyWith => _$DurationInputCopyWithImpl<T, DurationInput<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DurationInputToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DurationInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.startDatePath, startDatePath) || other.startDatePath == startDatePath)&&(identical(other.maxDuration, maxDuration) || other.maxDuration == maxDuration)&&(identical(other.minDuration, minDuration) || other.minDuration == minDuration)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,initialValue,isRequired,startDatePath,maxDuration,minDuration,getCustomError,uiSettings);

@override
String toString() {
  return 'WoFormInput<$T>.duration(id: $id, initialValue: $initialValue, isRequired: $isRequired, startDatePath: $startDatePath, maxDuration: $maxDuration, minDuration: $minDuration, getCustomError: $getCustomError, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $DurationInputCopyWith<T extends Object?,$Res> implements $WoFormInputCopyWith<T, $Res> {
  factory $DurationInputCopyWith(DurationInput<T> value, $Res Function(DurationInput<T>) _then) = _$DurationInputCopyWithImpl;
@override @useResult
$Res call({
 String id,@DurationNullableConverter() Duration? initialValue, bool isRequired, String? startDatePath,@DurationNullableConverter() Duration? maxDuration,@DurationNullableConverter() Duration? minDuration,@notSerializable GetCustomErrorDef<Duration>? getCustomError, DurationInputUiSettings? uiSettings
});


$DurationInputUiSettingsCopyWith<$Res>? get uiSettings;

}
/// @nodoc
class _$DurationInputCopyWithImpl<T extends Object?,$Res>
    implements $DurationInputCopyWith<T, $Res> {
  _$DurationInputCopyWithImpl(this._self, this._then);

  final DurationInput<T> _self;
  final $Res Function(DurationInput<T>) _then;

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialValue = freezed,Object? isRequired = null,Object? startDatePath = freezed,Object? maxDuration = freezed,Object? minDuration = freezed,Object? getCustomError = freezed,Object? uiSettings = freezed,}) {
  return _then(DurationInput<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValue: freezed == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as Duration?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,startDatePath: freezed == startDatePath ? _self.startDatePath : startDatePath // ignore: cast_nullable_to_non_nullable
as String?,maxDuration: freezed == maxDuration ? _self.maxDuration : maxDuration // ignore: cast_nullable_to_non_nullable
as Duration?,minDuration: freezed == minDuration ? _self.minDuration : minDuration // ignore: cast_nullable_to_non_nullable
as Duration?,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorDef<Duration>?,uiSettings: freezed == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as DurationInputUiSettings?,
  ));
}

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DurationInputUiSettingsCopyWith<$Res>? get uiSettings {
    if (_self.uiSettings == null) {
    return null;
  }

  return $DurationInputUiSettingsCopyWith<$Res>(_self.uiSettings!, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class MediaInput<T extends Object?> extends WoFormInput<T> {
  const MediaInput({required this.id, required this.importSettings, required this.maxCount, this.minCount = 0, final  List<Media>? initialValues, @notSerializable this.getCustomError, @notSerializable this.onValueChanged, this.submitFormOnSelect = false, this.uploadPath, this.uiSettings, final  String? $type}): assert(maxCount == null || minCount <= maxCount, 'maxCount must be higher or equal to minCount'),_initialValues = initialValues,$type = $type ?? 'media',super._();
  factory MediaInput.fromJson(Map<String, dynamic> json) => _$MediaInputFromJson(json);

@override final  String id;
 final  MediaImportSettings importSettings;
 final  int? maxCount;
@JsonKey() final  int minCount;
 final  List<Media>? _initialValues;
 List<Media>? get initialValues {
  final value = _initialValues;
  if (value == null) return null;
  if (_initialValues is EqualUnmodifiableListView) return _initialValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@notSerializable final  GetCustomErrorForListDef<Media>? getCustomError;
/// An optionnal callback when the value changed
@notSerializable final  void Function(List<Media>? value)? onValueChanged;
/// Only applies if maxCount is 1
@JsonKey() final  bool submitFormOnSelect;
/// Required if you use MediaInput.export()
 final  String? uploadPath;
@override final  MediaInputUiSettings? uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaInputCopyWith<T, MediaInput<T>> get copyWith => _$MediaInputCopyWithImpl<T, MediaInput<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaInputToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.importSettings, importSettings) || other.importSettings == importSettings)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.minCount, minCount) || other.minCount == minCount)&&const DeepCollectionEquality().equals(other._initialValues, _initialValues)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.onValueChanged, onValueChanged) || other.onValueChanged == onValueChanged)&&(identical(other.submitFormOnSelect, submitFormOnSelect) || other.submitFormOnSelect == submitFormOnSelect)&&(identical(other.uploadPath, uploadPath) || other.uploadPath == uploadPath)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,importSettings,maxCount,minCount,const DeepCollectionEquality().hash(_initialValues),getCustomError,onValueChanged,submitFormOnSelect,uploadPath,uiSettings);

@override
String toString() {
  return 'WoFormInput<$T>.media(id: $id, importSettings: $importSettings, maxCount: $maxCount, minCount: $minCount, initialValues: $initialValues, getCustomError: $getCustomError, onValueChanged: $onValueChanged, submitFormOnSelect: $submitFormOnSelect, uploadPath: $uploadPath, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $MediaInputCopyWith<T extends Object?,$Res> implements $WoFormInputCopyWith<T, $Res> {
  factory $MediaInputCopyWith(MediaInput<T> value, $Res Function(MediaInput<T>) _then) = _$MediaInputCopyWithImpl;
@override @useResult
$Res call({
 String id, MediaImportSettings importSettings, int? maxCount, int minCount, List<Media>? initialValues,@notSerializable GetCustomErrorForListDef<Media>? getCustomError,@notSerializable void Function(List<Media>? value)? onValueChanged, bool submitFormOnSelect, String? uploadPath, MediaInputUiSettings? uiSettings
});


$MediaImportSettingsCopyWith<$Res> get importSettings;$MediaInputUiSettingsCopyWith<$Res>? get uiSettings;

}
/// @nodoc
class _$MediaInputCopyWithImpl<T extends Object?,$Res>
    implements $MediaInputCopyWith<T, $Res> {
  _$MediaInputCopyWithImpl(this._self, this._then);

  final MediaInput<T> _self;
  final $Res Function(MediaInput<T>) _then;

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? importSettings = null,Object? maxCount = freezed,Object? minCount = null,Object? initialValues = freezed,Object? getCustomError = freezed,Object? onValueChanged = freezed,Object? submitFormOnSelect = null,Object? uploadPath = freezed,Object? uiSettings = freezed,}) {
  return _then(MediaInput<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,importSettings: null == importSettings ? _self.importSettings : importSettings // ignore: cast_nullable_to_non_nullable
as MediaImportSettings,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,minCount: null == minCount ? _self.minCount : minCount // ignore: cast_nullable_to_non_nullable
as int,initialValues: freezed == initialValues ? _self._initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as List<Media>?,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorForListDef<Media>?,onValueChanged: freezed == onValueChanged ? _self.onValueChanged : onValueChanged // ignore: cast_nullable_to_non_nullable
as void Function(List<Media>? value)?,submitFormOnSelect: null == submitFormOnSelect ? _self.submitFormOnSelect : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
as bool,uploadPath: freezed == uploadPath ? _self.uploadPath : uploadPath // ignore: cast_nullable_to_non_nullable
as String?,uiSettings: freezed == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as MediaInputUiSettings?,
  ));
}

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaImportSettingsCopyWith<$Res> get importSettings {
  
  return $MediaImportSettingsCopyWith<$Res>(_self.importSettings, (value) {
    return _then(_self.copyWith(importSettings: value));
  });
}/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MediaInputUiSettingsCopyWith<$Res>? get uiSettings {
    if (_self.uiSettings == null) {
    return null;
  }

  return $MediaInputUiSettingsCopyWith<$Res>(_self.uiSettings!, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class NumInput<T extends Object?> extends WoFormInput<T> {
  const NumInput({required this.id, this.initialValue, this.isRequired = false, this.maxBound, this.minBound = 0, @notSerializable this.getCustomError, @notSerializable this.onValueChanged, this.uiSettings, final  String? $type}): assert(maxBound == null || minBound <= maxBound, 'maxBound must be higher or equal to minBound'),$type = $type ?? 'num',super._();
  factory NumInput.fromJson(Map<String, dynamic> json) => _$NumInputFromJson(json);

@override final  String id;
 final  num? initialValue;
@JsonKey() final  bool isRequired;
 final  int? maxBound;
@JsonKey() final  int minBound;
@override@notSerializable final  GetCustomErrorDef<num>? getCustomError;
/// An optionnal callback when the value changed
@notSerializable final  void Function(num? value)? onValueChanged;
@override final  NumInputUiSettings? uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumInputCopyWith<T, NumInput<T>> get copyWith => _$NumInputCopyWithImpl<T, NumInput<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NumInputToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.maxBound, maxBound) || other.maxBound == maxBound)&&(identical(other.minBound, minBound) || other.minBound == minBound)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.onValueChanged, onValueChanged) || other.onValueChanged == onValueChanged)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,initialValue,isRequired,maxBound,minBound,getCustomError,onValueChanged,uiSettings);

@override
String toString() {
  return 'WoFormInput<$T>.num(id: $id, initialValue: $initialValue, isRequired: $isRequired, maxBound: $maxBound, minBound: $minBound, getCustomError: $getCustomError, onValueChanged: $onValueChanged, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $NumInputCopyWith<T extends Object?,$Res> implements $WoFormInputCopyWith<T, $Res> {
  factory $NumInputCopyWith(NumInput<T> value, $Res Function(NumInput<T>) _then) = _$NumInputCopyWithImpl;
@override @useResult
$Res call({
 String id, num? initialValue, bool isRequired, int? maxBound, int minBound,@notSerializable GetCustomErrorDef<num>? getCustomError,@notSerializable void Function(num? value)? onValueChanged, NumInputUiSettings? uiSettings
});


$NumInputUiSettingsCopyWith<$Res>? get uiSettings;

}
/// @nodoc
class _$NumInputCopyWithImpl<T extends Object?,$Res>
    implements $NumInputCopyWith<T, $Res> {
  _$NumInputCopyWithImpl(this._self, this._then);

  final NumInput<T> _self;
  final $Res Function(NumInput<T>) _then;

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialValue = freezed,Object? isRequired = null,Object? maxBound = freezed,Object? minBound = null,Object? getCustomError = freezed,Object? onValueChanged = freezed,Object? uiSettings = freezed,}) {
  return _then(NumInput<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValue: freezed == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as num?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,maxBound: freezed == maxBound ? _self.maxBound : maxBound // ignore: cast_nullable_to_non_nullable
as int?,minBound: null == minBound ? _self.minBound : minBound // ignore: cast_nullable_to_non_nullable
as int,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorDef<num>?,onValueChanged: freezed == onValueChanged ? _self.onValueChanged : onValueChanged // ignore: cast_nullable_to_non_nullable
as void Function(num? value)?,uiSettings: freezed == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as NumInputUiSettings?,
  ));
}

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NumInputUiSettingsCopyWith<$Res>? get uiSettings {
    if (_self.uiSettings == null) {
    return null;
  }

  return $NumInputUiSettingsCopyWith<$Res>(_self.uiSettings!, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class StringInput<T extends Object?> extends WoFormInput<T> {
  const StringInput({required this.id, this.initialValue, this.isRequired = false, this.regexPattern, this.placeAutocompleteSettings, @notSerializable this.getCustomError, this.uiSettings = const StringInputUiSettings(), final  String? $type}): $type = $type ?? 'string',super._();
  factory StringInput.fromJson(Map<String, dynamic> json) => _$StringInputFromJson(json);

@override final  String id;
 final  String? initialValue;
@JsonKey() final  bool isRequired;
 final  String? regexPattern;
/// If set, the field will be a place autocomplete.
 final  PlaceAutocompleteSettings? placeAutocompleteSettings;
@override@notSerializable final  GetCustomErrorDef<String>? getCustomError;
@override@JsonKey() final  StringInputUiSettings uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StringInputCopyWith<T, StringInput<T>> get copyWith => _$StringInputCopyWithImpl<T, StringInput<T>>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StringInputToJson<T>(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StringInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.initialValue, initialValue) || other.initialValue == initialValue)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.regexPattern, regexPattern) || other.regexPattern == regexPattern)&&(identical(other.placeAutocompleteSettings, placeAutocompleteSettings) || other.placeAutocompleteSettings == placeAutocompleteSettings)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,initialValue,isRequired,regexPattern,placeAutocompleteSettings,getCustomError,uiSettings);

@override
String toString() {
  return 'WoFormInput<$T>.string(id: $id, initialValue: $initialValue, isRequired: $isRequired, regexPattern: $regexPattern, placeAutocompleteSettings: $placeAutocompleteSettings, getCustomError: $getCustomError, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $StringInputCopyWith<T extends Object?,$Res> implements $WoFormInputCopyWith<T, $Res> {
  factory $StringInputCopyWith(StringInput<T> value, $Res Function(StringInput<T>) _then) = _$StringInputCopyWithImpl;
@override @useResult
$Res call({
 String id, String? initialValue, bool isRequired, String? regexPattern, PlaceAutocompleteSettings? placeAutocompleteSettings,@notSerializable GetCustomErrorDef<String>? getCustomError, StringInputUiSettings uiSettings
});


$PlaceAutocompleteSettingsCopyWith<$Res>? get placeAutocompleteSettings;$StringInputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$StringInputCopyWithImpl<T extends Object?,$Res>
    implements $StringInputCopyWith<T, $Res> {
  _$StringInputCopyWithImpl(this._self, this._then);

  final StringInput<T> _self;
  final $Res Function(StringInput<T>) _then;

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialValue = freezed,Object? isRequired = null,Object? regexPattern = freezed,Object? placeAutocompleteSettings = freezed,Object? getCustomError = freezed,Object? uiSettings = null,}) {
  return _then(StringInput<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValue: freezed == initialValue ? _self.initialValue : initialValue // ignore: cast_nullable_to_non_nullable
as String?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,regexPattern: freezed == regexPattern ? _self.regexPattern : regexPattern // ignore: cast_nullable_to_non_nullable
as String?,placeAutocompleteSettings: freezed == placeAutocompleteSettings ? _self.placeAutocompleteSettings : placeAutocompleteSettings // ignore: cast_nullable_to_non_nullable
as PlaceAutocompleteSettings?,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorDef<String>?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as StringInputUiSettings,
  ));
}

/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlaceAutocompleteSettingsCopyWith<$Res>? get placeAutocompleteSettings {
    if (_self.placeAutocompleteSettings == null) {
    return null;
  }

  return $PlaceAutocompleteSettingsCopyWith<$Res>(_self.placeAutocompleteSettings!, (value) {
    return _then(_self.copyWith(placeAutocompleteSettings: value));
  });
}/// Create a copy of WoFormInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StringInputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $StringInputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

/// @nodoc
mixin _$SelectInput<T> {

 String get id; int? get maxCount; int get minCount; List<T>? get initialValues; List<T> get availibleValues;/// idsOfAvailibleValues allows to set an identifier to each value.
/// This way, we keep the advantage of a list : the order
/// and we gain the advantage of a map : the identifiers
/// while staying jsonifiable.
/// If set, the object stored at the path of this input in WoFormValuesCubit
/// will be the id of the selected value.
 List<String>? get idsOfAvailibleValues;/// An optionnal callback when the value changed
@notSerializable void Function(List<T>? value)? get onValueChanged;@notSerializable GetCustomErrorForListDef<T>? get getCustomError;/// Only applies if maxCount is 1
 bool get submitFormOnSelect; SelectInputUiSettings<T>? get uiSettings; QuizSettings? get quizSettings;/// The following fields are mostly usefull for hydrataion
///
/// Ex :
/// SelectInput&lt;TimeControl&gt;(
///   toJsonT: (value) => value.toJson(),
///   fromJsonT: (json) => TimeControl.fromJson(json as Json),
/// ),
@notSerializable Object? Function(T)? get toJsonT;@notSerializable T Function(Object?)? get fromJsonT;
/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectInputCopyWith<T, SelectInput<T>> get copyWith => _$SelectInputCopyWithImpl<T, SelectInput<T>>(this as SelectInput<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.minCount, minCount) || other.minCount == minCount)&&const DeepCollectionEquality().equals(other.initialValues, initialValues)&&const DeepCollectionEquality().equals(other.availibleValues, availibleValues)&&const DeepCollectionEquality().equals(other.idsOfAvailibleValues, idsOfAvailibleValues)&&(identical(other.onValueChanged, onValueChanged) || other.onValueChanged == onValueChanged)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.submitFormOnSelect, submitFormOnSelect) || other.submitFormOnSelect == submitFormOnSelect)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.quizSettings, quizSettings) || other.quizSettings == quizSettings)&&(identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT)&&(identical(other.fromJsonT, fromJsonT) || other.fromJsonT == fromJsonT));
}


@override
int get hashCode => Object.hash(runtimeType,id,maxCount,minCount,const DeepCollectionEquality().hash(initialValues),const DeepCollectionEquality().hash(availibleValues),const DeepCollectionEquality().hash(idsOfAvailibleValues),onValueChanged,getCustomError,submitFormOnSelect,uiSettings,quizSettings,toJsonT,fromJsonT);

@override
String toString() {
  return 'SelectInput<$T>(id: $id, maxCount: $maxCount, minCount: $minCount, initialValues: $initialValues, availibleValues: $availibleValues, idsOfAvailibleValues: $idsOfAvailibleValues, onValueChanged: $onValueChanged, getCustomError: $getCustomError, submitFormOnSelect: $submitFormOnSelect, uiSettings: $uiSettings, quizSettings: $quizSettings, toJsonT: $toJsonT, fromJsonT: $fromJsonT)';
}


}

/// @nodoc
abstract mixin class $SelectInputCopyWith<T,$Res> implements $WoFormInputCopyWith<T, $Res> {
  factory $SelectInputCopyWith(SelectInput<T> value, $Res Function(SelectInput<T>) _then) = _$SelectInputCopyWithImpl;
@useResult
$Res call({
 String id, int? maxCount, int minCount, List<T>? initialValues, List<T> availibleValues, List<String>? idsOfAvailibleValues,@notSerializable void Function(List<T>? value)? onValueChanged,@notSerializable GetCustomErrorForListDef<T>? getCustomError, bool submitFormOnSelect, SelectInputUiSettings<T>? uiSettings, QuizSettings? quizSettings,@notSerializable Object? Function(T)? toJsonT,@notSerializable T Function(Object?)? fromJsonT
});


$SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings;$QuizSettingsCopyWith<$Res>? get quizSettings;

}
/// @nodoc
class _$SelectInputCopyWithImpl<T,$Res>
    implements $SelectInputCopyWith<T, $Res> {
  _$SelectInputCopyWithImpl(this._self, this._then);

  final SelectInput<T> _self;
  final $Res Function(SelectInput<T>) _then;

/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? maxCount = freezed,Object? minCount = null,Object? initialValues = freezed,Object? availibleValues = null,Object? idsOfAvailibleValues = freezed,Object? onValueChanged = freezed,Object? getCustomError = freezed,Object? submitFormOnSelect = null,Object? uiSettings = freezed,Object? quizSettings = freezed,Object? toJsonT = freezed,Object? fromJsonT = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,minCount: null == minCount ? _self.minCount : minCount // ignore: cast_nullable_to_non_nullable
as int,initialValues: freezed == initialValues ? _self.initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as List<T>?,availibleValues: null == availibleValues ? _self.availibleValues : availibleValues // ignore: cast_nullable_to_non_nullable
as List<T>,idsOfAvailibleValues: freezed == idsOfAvailibleValues ? _self.idsOfAvailibleValues : idsOfAvailibleValues // ignore: cast_nullable_to_non_nullable
as List<String>?,onValueChanged: freezed == onValueChanged ? _self.onValueChanged : onValueChanged // ignore: cast_nullable_to_non_nullable
as void Function(List<T>? value)?,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorForListDef<T>?,submitFormOnSelect: null == submitFormOnSelect ? _self.submitFormOnSelect : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
as bool,uiSettings: freezed == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as SelectInputUiSettings<T>?,quizSettings: freezed == quizSettings ? _self.quizSettings : quizSettings // ignore: cast_nullable_to_non_nullable
as QuizSettings?,toJsonT: freezed == toJsonT ? _self.toJsonT : toJsonT // ignore: cast_nullable_to_non_nullable
as Object? Function(T)?,fromJsonT: freezed == fromJsonT ? _self.fromJsonT : fromJsonT // ignore: cast_nullable_to_non_nullable
as T Function(Object?)?,
  ));
}
/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings {
    if (_self.uiSettings == null) {
    return null;
  }

  return $SelectInputUiSettingsCopyWith<T, $Res>(_self.uiSettings!, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuizSettingsCopyWith<$Res>? get quizSettings {
    if (_self.quizSettings == null) {
    return null;
  }

  return $QuizSettingsCopyWith<$Res>(_self.quizSettings!, (value) {
    return _then(_self.copyWith(quizSettings: value));
  });
}
}



/// @nodoc


class _SelectInput<T> extends SelectInput<T> {
  const _SelectInput({required this.id, required this.maxCount, this.minCount = 0, final  List<T>? initialValues, final  List<T> availibleValues = const [], final  List<String>? idsOfAvailibleValues, @notSerializable this.onValueChanged, @notSerializable this.getCustomError, this.submitFormOnSelect = false, this.uiSettings, this.quizSettings, @notSerializable this.toJsonT, @notSerializable this.fromJsonT}): assert(maxCount == null || minCount <= maxCount, 'maxCount must be higher or equal to minCount'),_initialValues = initialValues,_availibleValues = availibleValues,_idsOfAvailibleValues = idsOfAvailibleValues,super._();
  

@override final  String id;
@override final  int? maxCount;
@override@JsonKey() final  int minCount;
 final  List<T>? _initialValues;
@override List<T>? get initialValues {
  final value = _initialValues;
  if (value == null) return null;
  if (_initialValues is EqualUnmodifiableListView) return _initialValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<T> _availibleValues;
@override@JsonKey() List<T> get availibleValues {
  if (_availibleValues is EqualUnmodifiableListView) return _availibleValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availibleValues);
}

/// idsOfAvailibleValues allows to set an identifier to each value.
/// This way, we keep the advantage of a list : the order
/// and we gain the advantage of a map : the identifiers
/// while staying jsonifiable.
/// If set, the object stored at the path of this input in WoFormValuesCubit
/// will be the id of the selected value.
 final  List<String>? _idsOfAvailibleValues;
/// idsOfAvailibleValues allows to set an identifier to each value.
/// This way, we keep the advantage of a list : the order
/// and we gain the advantage of a map : the identifiers
/// while staying jsonifiable.
/// If set, the object stored at the path of this input in WoFormValuesCubit
/// will be the id of the selected value.
@override List<String>? get idsOfAvailibleValues {
  final value = _idsOfAvailibleValues;
  if (value == null) return null;
  if (_idsOfAvailibleValues is EqualUnmodifiableListView) return _idsOfAvailibleValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// An optionnal callback when the value changed
@override@notSerializable final  void Function(List<T>? value)? onValueChanged;
@override@notSerializable final  GetCustomErrorForListDef<T>? getCustomError;
/// Only applies if maxCount is 1
@override@JsonKey() final  bool submitFormOnSelect;
@override final  SelectInputUiSettings<T>? uiSettings;
@override final  QuizSettings? quizSettings;
/// The following fields are mostly usefull for hydrataion
///
/// Ex :
/// SelectInput&lt;TimeControl&gt;(
///   toJsonT: (value) => value.toJson(),
///   fromJsonT: (json) => TimeControl.fromJson(json as Json),
/// ),
@override@notSerializable final  Object? Function(T)? toJsonT;
@override@notSerializable final  T Function(Object?)? fromJsonT;

/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SelectInputCopyWith<T, _SelectInput<T>> get copyWith => __$SelectInputCopyWithImpl<T, _SelectInput<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SelectInput<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.minCount, minCount) || other.minCount == minCount)&&const DeepCollectionEquality().equals(other._initialValues, _initialValues)&&const DeepCollectionEquality().equals(other._availibleValues, _availibleValues)&&const DeepCollectionEquality().equals(other._idsOfAvailibleValues, _idsOfAvailibleValues)&&(identical(other.onValueChanged, onValueChanged) || other.onValueChanged == onValueChanged)&&(identical(other.getCustomError, getCustomError) || other.getCustomError == getCustomError)&&(identical(other.submitFormOnSelect, submitFormOnSelect) || other.submitFormOnSelect == submitFormOnSelect)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.quizSettings, quizSettings) || other.quizSettings == quizSettings)&&(identical(other.toJsonT, toJsonT) || other.toJsonT == toJsonT)&&(identical(other.fromJsonT, fromJsonT) || other.fromJsonT == fromJsonT));
}


@override
int get hashCode => Object.hash(runtimeType,id,maxCount,minCount,const DeepCollectionEquality().hash(_initialValues),const DeepCollectionEquality().hash(_availibleValues),const DeepCollectionEquality().hash(_idsOfAvailibleValues),onValueChanged,getCustomError,submitFormOnSelect,uiSettings,quizSettings,toJsonT,fromJsonT);

@override
String toString() {
  return 'SelectInput<$T>(id: $id, maxCount: $maxCount, minCount: $minCount, initialValues: $initialValues, availibleValues: $availibleValues, idsOfAvailibleValues: $idsOfAvailibleValues, onValueChanged: $onValueChanged, getCustomError: $getCustomError, submitFormOnSelect: $submitFormOnSelect, uiSettings: $uiSettings, quizSettings: $quizSettings, toJsonT: $toJsonT, fromJsonT: $fromJsonT)';
}


}

/// @nodoc
abstract mixin class _$SelectInputCopyWith<T,$Res> implements $SelectInputCopyWith<T, $Res> {
  factory _$SelectInputCopyWith(_SelectInput<T> value, $Res Function(_SelectInput<T>) _then) = __$SelectInputCopyWithImpl;
@override @useResult
$Res call({
 String id, int? maxCount, int minCount, List<T>? initialValues, List<T> availibleValues, List<String>? idsOfAvailibleValues,@notSerializable void Function(List<T>? value)? onValueChanged,@notSerializable GetCustomErrorForListDef<T>? getCustomError, bool submitFormOnSelect, SelectInputUiSettings<T>? uiSettings, QuizSettings? quizSettings,@notSerializable Object? Function(T)? toJsonT,@notSerializable T Function(Object?)? fromJsonT
});


@override $SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings;@override $QuizSettingsCopyWith<$Res>? get quizSettings;

}
/// @nodoc
class __$SelectInputCopyWithImpl<T,$Res>
    implements _$SelectInputCopyWith<T, $Res> {
  __$SelectInputCopyWithImpl(this._self, this._then);

  final _SelectInput<T> _self;
  final $Res Function(_SelectInput<T>) _then;

/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? maxCount = freezed,Object? minCount = null,Object? initialValues = freezed,Object? availibleValues = null,Object? idsOfAvailibleValues = freezed,Object? onValueChanged = freezed,Object? getCustomError = freezed,Object? submitFormOnSelect = null,Object? uiSettings = freezed,Object? quizSettings = freezed,Object? toJsonT = freezed,Object? fromJsonT = freezed,}) {
  return _then(_SelectInput<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,minCount: null == minCount ? _self.minCount : minCount // ignore: cast_nullable_to_non_nullable
as int,initialValues: freezed == initialValues ? _self._initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as List<T>?,availibleValues: null == availibleValues ? _self._availibleValues : availibleValues // ignore: cast_nullable_to_non_nullable
as List<T>,idsOfAvailibleValues: freezed == idsOfAvailibleValues ? _self._idsOfAvailibleValues : idsOfAvailibleValues // ignore: cast_nullable_to_non_nullable
as List<String>?,onValueChanged: freezed == onValueChanged ? _self.onValueChanged : onValueChanged // ignore: cast_nullable_to_non_nullable
as void Function(List<T>? value)?,getCustomError: freezed == getCustomError ? _self.getCustomError : getCustomError // ignore: cast_nullable_to_non_nullable
as GetCustomErrorForListDef<T>?,submitFormOnSelect: null == submitFormOnSelect ? _self.submitFormOnSelect : submitFormOnSelect // ignore: cast_nullable_to_non_nullable
as bool,uiSettings: freezed == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as SelectInputUiSettings<T>?,quizSettings: freezed == quizSettings ? _self.quizSettings : quizSettings // ignore: cast_nullable_to_non_nullable
as QuizSettings?,toJsonT: freezed == toJsonT ? _self.toJsonT : toJsonT // ignore: cast_nullable_to_non_nullable
as Object? Function(T)?,fromJsonT: freezed == fromJsonT ? _self.fromJsonT : fromJsonT // ignore: cast_nullable_to_non_nullable
as T Function(Object?)?,
  ));
}

/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SelectInputUiSettingsCopyWith<T, $Res>? get uiSettings {
    if (_self.uiSettings == null) {
    return null;
  }

  return $SelectInputUiSettingsCopyWith<T, $Res>(_self.uiSettings!, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}/// Create a copy of SelectInput
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuizSettingsCopyWith<$Res>? get quizSettings {
    if (_self.quizSettings == null) {
    return null;
  }

  return $QuizSettingsCopyWith<$Res>(_self.quizSettings!, (value) {
    return _then(_self.copyWith(quizSettings: value));
  });
}
}

/// @nodoc
mixin _$WoFormInputError {

 String get path;
/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WoFormInputErrorCopyWith<WoFormInputError> get copyWith => _$WoFormInputErrorCopyWithImpl<WoFormInputError>(this as WoFormInputError, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WoFormInputError&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WoFormInputError(path: $path)';
}


}

/// @nodoc
abstract mixin class $WoFormInputErrorCopyWith<$Res>  {
  factory $WoFormInputErrorCopyWith(WoFormInputError value, $Res Function(WoFormInputError) _then) = _$WoFormInputErrorCopyWithImpl;
@useResult
$Res call({
 String path
});




}
/// @nodoc
class _$WoFormInputErrorCopyWithImpl<$Res>
    implements $WoFormInputErrorCopyWith<$Res> {
  _$WoFormInputErrorCopyWithImpl(this._self, this._then);

  final WoFormInputError _self;
  final $Res Function(WoFormInputError) _then;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? path = null,}) {
  return _then(_self.copyWith(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}



/// @nodoc


class EmptyInputError implements WoFormInputError {
  const EmptyInputError({required this.path});
  

@override final  String path;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmptyInputErrorCopyWith<EmptyInputError> get copyWith => _$EmptyInputErrorCopyWithImpl<EmptyInputError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptyInputError&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WoFormInputError.empty(path: $path)';
}


}

/// @nodoc
abstract mixin class $EmptyInputErrorCopyWith<$Res> implements $WoFormInputErrorCopyWith<$Res> {
  factory $EmptyInputErrorCopyWith(EmptyInputError value, $Res Function(EmptyInputError) _then) = _$EmptyInputErrorCopyWithImpl;
@override @useResult
$Res call({
 String path
});




}
/// @nodoc
class _$EmptyInputErrorCopyWithImpl<$Res>
    implements $EmptyInputErrorCopyWith<$Res> {
  _$EmptyInputErrorCopyWithImpl(this._self, this._then);

  final EmptyInputError _self;
  final $Res Function(EmptyInputError) _then;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(EmptyInputError(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InvalidInputError implements WoFormInputError {
  const InvalidInputError({required this.path});
  

@override final  String path;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidInputErrorCopyWith<InvalidInputError> get copyWith => _$InvalidInputErrorCopyWithImpl<InvalidInputError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidInputError&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WoFormInputError.invalid(path: $path)';
}


}

/// @nodoc
abstract mixin class $InvalidInputErrorCopyWith<$Res> implements $WoFormInputErrorCopyWith<$Res> {
  factory $InvalidInputErrorCopyWith(InvalidInputError value, $Res Function(InvalidInputError) _then) = _$InvalidInputErrorCopyWithImpl;
@override @useResult
$Res call({
 String path
});




}
/// @nodoc
class _$InvalidInputErrorCopyWithImpl<$Res>
    implements $InvalidInputErrorCopyWith<$Res> {
  _$InvalidInputErrorCopyWithImpl(this._self, this._then);

  final InvalidInputError _self;
  final $Res Function(InvalidInputError) _then;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(InvalidInputError(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MaxBoundInputError implements WoFormInputError {
  const MaxBoundInputError({required this.path});
  

@override final  String path;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaxBoundInputErrorCopyWith<MaxBoundInputError> get copyWith => _$MaxBoundInputErrorCopyWithImpl<MaxBoundInputError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaxBoundInputError&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WoFormInputError.maxBound(path: $path)';
}


}

/// @nodoc
abstract mixin class $MaxBoundInputErrorCopyWith<$Res> implements $WoFormInputErrorCopyWith<$Res> {
  factory $MaxBoundInputErrorCopyWith(MaxBoundInputError value, $Res Function(MaxBoundInputError) _then) = _$MaxBoundInputErrorCopyWithImpl;
@override @useResult
$Res call({
 String path
});




}
/// @nodoc
class _$MaxBoundInputErrorCopyWithImpl<$Res>
    implements $MaxBoundInputErrorCopyWith<$Res> {
  _$MaxBoundInputErrorCopyWithImpl(this._self, this._then);

  final MaxBoundInputError _self;
  final $Res Function(MaxBoundInputError) _then;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(MaxBoundInputError(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MinBoundInputError implements WoFormInputError {
  const MinBoundInputError({required this.path});
  

@override final  String path;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MinBoundInputErrorCopyWith<MinBoundInputError> get copyWith => _$MinBoundInputErrorCopyWithImpl<MinBoundInputError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MinBoundInputError&&(identical(other.path, path) || other.path == path));
}


@override
int get hashCode => Object.hash(runtimeType,path);

@override
String toString() {
  return 'WoFormInputError.minBound(path: $path)';
}


}

/// @nodoc
abstract mixin class $MinBoundInputErrorCopyWith<$Res> implements $WoFormInputErrorCopyWith<$Res> {
  factory $MinBoundInputErrorCopyWith(MinBoundInputError value, $Res Function(MinBoundInputError) _then) = _$MinBoundInputErrorCopyWithImpl;
@override @useResult
$Res call({
 String path
});




}
/// @nodoc
class _$MinBoundInputErrorCopyWithImpl<$Res>
    implements $MinBoundInputErrorCopyWith<$Res> {
  _$MinBoundInputErrorCopyWithImpl(this._self, this._then);

  final MinBoundInputError _self;
  final $Res Function(MinBoundInputError) _then;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,}) {
  return _then(MinBoundInputError(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CustomInputError implements WoFormInputError {
  const CustomInputError({required this.path, required this.message});
  

@override final  String path;
 final  String message;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomInputErrorCopyWith<CustomInputError> get copyWith => _$CustomInputErrorCopyWithImpl<CustomInputError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomInputError&&(identical(other.path, path) || other.path == path)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,path,message);

@override
String toString() {
  return 'WoFormInputError.custom(path: $path, message: $message)';
}


}

/// @nodoc
abstract mixin class $CustomInputErrorCopyWith<$Res> implements $WoFormInputErrorCopyWith<$Res> {
  factory $CustomInputErrorCopyWith(CustomInputError value, $Res Function(CustomInputError) _then) = _$CustomInputErrorCopyWithImpl;
@override @useResult
$Res call({
 String path, String message
});




}
/// @nodoc
class _$CustomInputErrorCopyWithImpl<$Res>
    implements $CustomInputErrorCopyWith<$Res> {
  _$CustomInputErrorCopyWithImpl(this._self, this._then);

  final CustomInputError _self;
  final $Res Function(CustomInputError) _then;

/// Create a copy of WoFormInputError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? message = null,}) {
  return _then(CustomInputError(
path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
