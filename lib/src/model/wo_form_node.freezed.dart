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

/// @nodoc
mixin _$DynamicInputTemplate {

@InputNullableConverter() WoFormNodeMixin? get child;@notSerializable WoFormNodeMixin Function()? get childBuilder; DynamicInputUiSettings get uiSettings;
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
@InputNullableConverter() WoFormNodeMixin? child,@notSerializable WoFormNodeMixin Function()? childBuilder, DynamicInputUiSettings uiSettings
});


$DynamicInputUiSettingsCopyWith<$Res> get uiSettings;

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
as WoFormNodeMixin?,childBuilder: freezed == childBuilder ? _self.childBuilder : childBuilder // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin Function()?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as DynamicInputUiSettings,
  ));
}
/// Create a copy of DynamicInputTemplate
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

@override@InputNullableConverter() final  WoFormNodeMixin? child;
@override@notSerializable final  WoFormNodeMixin Function()? childBuilder;
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
@InputNullableConverter() WoFormNodeMixin? child,@notSerializable WoFormNodeMixin Function()? childBuilder, DynamicInputUiSettings uiSettings
});


@override $DynamicInputUiSettingsCopyWith<$Res> get uiSettings;

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
as WoFormNodeMixin?,childBuilder: freezed == childBuilder ? _self.childBuilder : childBuilder // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin Function()?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as DynamicInputUiSettings,
  ));
}

/// Create a copy of DynamicInputTemplate
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DynamicInputUiSettingsCopyWith<$Res> get uiSettings {
  
  return $DynamicInputUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}
}

WoFormNode _$WoFormNodeFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'conditionnal':
          return ConditionnalNode.fromJson(
            json
          );
                case 'dynamicInputs':
          return DynamicInputsNode.fromJson(
            json
          );
                case 'inputs':
          return InputsNode.fromJson(
            json
          );
                case 'pathBuilder':
          return PathBuilderNode.fromJson(
            json
          );
                case 'valueBuilder':
          return ValueBuilderNode.fromJson(
            json
          );
                case 'valuesBuilder':
          return ValuesBuilderNode.fromJson(
            json
          );
                case 'valueListener':
          return ValueListenerNode.fromJson(
            json
          );
                case 'widget':
          return WidgetNode.fromJson(
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
mixin _$WoFormNode {

 String get id;
/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WoFormNodeCopyWith<WoFormNode> get copyWith => _$WoFormNodeCopyWithImpl<WoFormNode>(this as WoFormNode, _$identity);

  /// Serializes this WoFormNode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WoFormNode&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'WoFormNode(id: $id)';
}


}

/// @nodoc
abstract mixin class $WoFormNodeCopyWith<$Res>  {
  factory $WoFormNodeCopyWith(WoFormNode value, $Res Function(WoFormNode) _then) = _$WoFormNodeCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$WoFormNodeCopyWithImpl<$Res>
    implements $WoFormNodeCopyWith<$Res> {
  _$WoFormNodeCopyWithImpl(this._self, this._then);

  final WoFormNode _self;
  final $Res Function(WoFormNode) _then;

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

class ConditionnalNode extends WoFormNode {
  const ConditionnalNode({required this.id, required this.condition, @InputConverter() required this.child, this.conditionIsInitiallyMet = false, this.clearChildrenWhenHidden = true, final  String? $type}): $type = $type ?? 'conditionnal',super._();
  factory ConditionnalNode.fromJson(Map<String, dynamic> json) => _$ConditionnalNodeFromJson(json);

@override final  String id;
 final  Condition condition;
@InputConverter() final  WoFormNodeMixin child;
@JsonKey() final  bool conditionIsInitiallyMet;
@JsonKey() final  bool clearChildrenWhenHidden;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionnalNodeCopyWith<ConditionnalNode> get copyWith => _$ConditionnalNodeCopyWithImpl<ConditionnalNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionnalNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionnalNode&&(identical(other.id, id) || other.id == id)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.child, child) || other.child == child)&&(identical(other.conditionIsInitiallyMet, conditionIsInitiallyMet) || other.conditionIsInitiallyMet == conditionIsInitiallyMet)&&(identical(other.clearChildrenWhenHidden, clearChildrenWhenHidden) || other.clearChildrenWhenHidden == clearChildrenWhenHidden));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,condition,child,conditionIsInitiallyMet,clearChildrenWhenHidden);

@override
String toString() {
  return 'WoFormNode.conditionnal(id: $id, condition: $condition, child: $child, conditionIsInitiallyMet: $conditionIsInitiallyMet, clearChildrenWhenHidden: $clearChildrenWhenHidden)';
}


}

/// @nodoc
abstract mixin class $ConditionnalNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $ConditionnalNodeCopyWith(ConditionnalNode value, $Res Function(ConditionnalNode) _then) = _$ConditionnalNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, Condition condition,@InputConverter() WoFormNodeMixin child, bool conditionIsInitiallyMet, bool clearChildrenWhenHidden
});


$ConditionCopyWith<$Res> get condition;

}
/// @nodoc
class _$ConditionnalNodeCopyWithImpl<$Res>
    implements $ConditionnalNodeCopyWith<$Res> {
  _$ConditionnalNodeCopyWithImpl(this._self, this._then);

  final ConditionnalNode _self;
  final $Res Function(ConditionnalNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? condition = null,Object? child = null,Object? conditionIsInitiallyMet = null,Object? clearChildrenWhenHidden = null,}) {
  return _then(ConditionnalNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as Condition,child: null == child ? _self.child : child // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin,conditionIsInitiallyMet: null == conditionIsInitiallyMet ? _self.conditionIsInitiallyMet : conditionIsInitiallyMet // ignore: cast_nullable_to_non_nullable
as bool,clearChildrenWhenHidden: null == clearChildrenWhenHidden ? _self.clearChildrenWhenHidden : clearChildrenWhenHidden // ignore: cast_nullable_to_non_nullable
as bool,
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
}
}

/// @nodoc
@JsonSerializable()

class DynamicInputsNode extends WoFormNode {
  const DynamicInputsNode({required this.id, final  List<DynamicInputTemplate> templates = const [], @InputsListConverter() final  List<WoFormNodeMixin>? initialChildren, this.uiSettings = const DynamicInputsNodeUiSettings(), this.exportSettings = const ExportSettings(), final  String? $type}): _templates = templates,_initialChildren = initialChildren,$type = $type ?? 'dynamicInputs',super._();
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

 final  List<WoFormNodeMixin>? _initialChildren;
@InputsListConverter() List<WoFormNodeMixin>? get initialChildren {
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
$DynamicInputsNodeCopyWith<DynamicInputsNode> get copyWith => _$DynamicInputsNodeCopyWithImpl<DynamicInputsNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DynamicInputsNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DynamicInputsNode&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._templates, _templates)&&const DeepCollectionEquality().equals(other._initialChildren, _initialChildren)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.exportSettings, exportSettings) || other.exportSettings == exportSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_templates),const DeepCollectionEquality().hash(_initialChildren),uiSettings,exportSettings);

@override
String toString() {
  return 'WoFormNode.dynamicInputs(id: $id, templates: $templates, initialChildren: $initialChildren, uiSettings: $uiSettings, exportSettings: $exportSettings)';
}


}

/// @nodoc
abstract mixin class $DynamicInputsNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $DynamicInputsNodeCopyWith(DynamicInputsNode value, $Res Function(DynamicInputsNode) _then) = _$DynamicInputsNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, List<DynamicInputTemplate> templates,@InputsListConverter() List<WoFormNodeMixin>? initialChildren, DynamicInputsNodeUiSettings uiSettings, ExportSettings exportSettings
});


$DynamicInputsNodeUiSettingsCopyWith<$Res> get uiSettings;$ExportSettingsCopyWith<$Res> get exportSettings;

}
/// @nodoc
class _$DynamicInputsNodeCopyWithImpl<$Res>
    implements $DynamicInputsNodeCopyWith<$Res> {
  _$DynamicInputsNodeCopyWithImpl(this._self, this._then);

  final DynamicInputsNode _self;
  final $Res Function(DynamicInputsNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? templates = null,Object? initialChildren = freezed,Object? uiSettings = null,Object? exportSettings = null,}) {
  return _then(DynamicInputsNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,templates: null == templates ? _self._templates : templates // ignore: cast_nullable_to_non_nullable
as List<DynamicInputTemplate>,initialChildren: freezed == initialChildren ? _self._initialChildren : initialChildren // ignore: cast_nullable_to_non_nullable
as List<WoFormNodeMixin>?,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
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

class InputsNode extends WoFormNode {
  const InputsNode({required this.id, @InputsListConverter() final  List<WoFormNodeMixin> children = const [], this.uiSettings = const InputsNodeUiSettings(), this.exportSettings = const ExportSettings(), final  String? $type}): _children = children,$type = $type ?? 'inputs',super._();
  factory InputsNode.fromJson(Map<String, dynamic> json) => _$InputsNodeFromJson(json);

@override final  String id;
 final  List<WoFormNodeMixin> _children;
@JsonKey()@InputsListConverter() List<WoFormNodeMixin> get children {
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
$InputsNodeCopyWith<InputsNode> get copyWith => _$InputsNodeCopyWithImpl<InputsNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputsNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputsNode&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.exportSettings, exportSettings) || other.exportSettings == exportSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_children),uiSettings,exportSettings);

@override
String toString() {
  return 'WoFormNode.inputs(id: $id, children: $children, uiSettings: $uiSettings, exportSettings: $exportSettings)';
}


}

/// @nodoc
abstract mixin class $InputsNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $InputsNodeCopyWith(InputsNode value, $Res Function(InputsNode) _then) = _$InputsNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@InputsListConverter() List<WoFormNodeMixin> children, InputsNodeUiSettings uiSettings, ExportSettings exportSettings
});


$InputsNodeUiSettingsCopyWith<$Res> get uiSettings;$ExportSettingsCopyWith<$Res> get exportSettings;

}
/// @nodoc
class _$InputsNodeCopyWithImpl<$Res>
    implements $InputsNodeCopyWith<$Res> {
  _$InputsNodeCopyWithImpl(this._self, this._then);

  final InputsNode _self;
  final $Res Function(InputsNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? children = null,Object? uiSettings = null,Object? exportSettings = null,}) {
  return _then(InputsNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<WoFormNodeMixin>,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
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

class PathBuilderNode extends WoFormNode {
  const PathBuilderNode({required this.id, @notSerializable this.builder, final  String? $type}): assert(builder != null, 'PathBuilderNode.builder cannot be null'),$type = $type ?? 'pathBuilder',super._();
  factory PathBuilderNode.fromJson(Map<String, dynamic> json) => _$PathBuilderNodeFromJson(json);

@override final  String id;
@notSerializable final  WoFormNodeMixin Function(String path)? builder;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PathBuilderNodeCopyWith<PathBuilderNode> get copyWith => _$PathBuilderNodeCopyWithImpl<PathBuilderNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PathBuilderNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PathBuilderNode&&(identical(other.id, id) || other.id == id)&&(identical(other.builder, builder) || other.builder == builder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,builder);

@override
String toString() {
  return 'WoFormNode.pathBuilder(id: $id, builder: $builder)';
}


}

/// @nodoc
abstract mixin class $PathBuilderNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $PathBuilderNodeCopyWith(PathBuilderNode value, $Res Function(PathBuilderNode) _then) = _$PathBuilderNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@notSerializable WoFormNodeMixin Function(String path)? builder
});




}
/// @nodoc
class _$PathBuilderNodeCopyWithImpl<$Res>
    implements $PathBuilderNodeCopyWith<$Res> {
  _$PathBuilderNodeCopyWithImpl(this._self, this._then);

  final PathBuilderNode _self;
  final $Res Function(PathBuilderNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? builder = freezed,}) {
  return _then(PathBuilderNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin Function(String path)?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ValueBuilderNode extends WoFormNode {
  const ValueBuilderNode({required this.id, required this.path, @notSerializable this.builder, this.initialValue, this.uiSettings = const InputUiSettings(), final  String? $type}): assert(builder != null, 'ValueBuilderNode.builder cannot be null'),$type = $type ?? 'valueBuilder',super._();
  factory ValueBuilderNode.fromJson(Map<String, dynamic> json) => _$ValueBuilderNodeFromJson(json);

@override final  String id;
 final  String path;
@notSerializable final  WoFormNodeMixin Function(Object? value)? builder;
 final  Object? initialValue;
@JsonKey() final  InputUiSettings uiSettings;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValueBuilderNodeCopyWith<ValueBuilderNode> get copyWith => _$ValueBuilderNodeCopyWithImpl<ValueBuilderNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValueBuilderNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueBuilderNode&&(identical(other.id, id) || other.id == id)&&(identical(other.path, path) || other.path == path)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other.initialValue, initialValue)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,path,builder,const DeepCollectionEquality().hash(initialValue),uiSettings);

@override
String toString() {
  return 'WoFormNode.valueBuilder(id: $id, path: $path, builder: $builder, initialValue: $initialValue, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $ValueBuilderNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $ValueBuilderNodeCopyWith(ValueBuilderNode value, $Res Function(ValueBuilderNode) _then) = _$ValueBuilderNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, String path,@notSerializable WoFormNodeMixin Function(Object? value)? builder, Object? initialValue, InputUiSettings uiSettings
});


$InputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$ValueBuilderNodeCopyWithImpl<$Res>
    implements $ValueBuilderNodeCopyWith<$Res> {
  _$ValueBuilderNodeCopyWithImpl(this._self, this._then);

  final ValueBuilderNode _self;
  final $Res Function(ValueBuilderNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? path = null,Object? builder = freezed,Object? initialValue = freezed,Object? uiSettings = null,}) {
  return _then(ValueBuilderNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin Function(Object? value)?,initialValue: freezed == initialValue ? _self.initialValue : initialValue ,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
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

class ValuesBuilderNode extends WoFormNode {
  const ValuesBuilderNode({required this.id, required final  List<String> paths, @notSerializable this.builder, final  Map<String, Object?>? initialValues, final  String? $type}): assert(builder != null, 'ValuesBuilderNode.builder cannot be null'),_paths = paths,_initialValues = initialValues,$type = $type ?? 'valuesBuilder',super._();
  factory ValuesBuilderNode.fromJson(Map<String, dynamic> json) => _$ValuesBuilderNodeFromJson(json);

@override final  String id;
 final  List<String> _paths;
 List<String> get paths {
  if (_paths is EqualUnmodifiableListView) return _paths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paths);
}

@notSerializable final  WoFormNodeMixin Function(Map<String, Object?> values)? builder;
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
$ValuesBuilderNodeCopyWith<ValuesBuilderNode> get copyWith => _$ValuesBuilderNodeCopyWithImpl<ValuesBuilderNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValuesBuilderNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValuesBuilderNode&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._paths, _paths)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other._initialValues, _initialValues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_paths),builder,const DeepCollectionEquality().hash(_initialValues));

@override
String toString() {
  return 'WoFormNode.valuesBuilder(id: $id, paths: $paths, builder: $builder, initialValues: $initialValues)';
}


}

/// @nodoc
abstract mixin class $ValuesBuilderNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $ValuesBuilderNodeCopyWith(ValuesBuilderNode value, $Res Function(ValuesBuilderNode) _then) = _$ValuesBuilderNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> paths,@notSerializable WoFormNodeMixin Function(Map<String, Object?> values)? builder, Map<String, Object?>? initialValues
});




}
/// @nodoc
class _$ValuesBuilderNodeCopyWithImpl<$Res>
    implements $ValuesBuilderNodeCopyWith<$Res> {
  _$ValuesBuilderNodeCopyWithImpl(this._self, this._then);

  final ValuesBuilderNode _self;
  final $Res Function(ValuesBuilderNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? paths = null,Object? builder = freezed,Object? initialValues = freezed,}) {
  return _then(ValuesBuilderNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,paths: null == paths ? _self._paths : paths // ignore: cast_nullable_to_non_nullable
as List<String>,builder: freezed == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin Function(Map<String, Object?> values)?,initialValues: freezed == initialValues ? _self._initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as Map<String, Object?>?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ValueListenerNode extends WoFormNode {
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
$ValueListenerNodeCopyWith<ValueListenerNode> get copyWith => _$ValueListenerNodeCopyWithImpl<ValueListenerNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ValueListenerNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueListenerNode&&(identical(other.path, path) || other.path == path)&&(identical(other.id, id) || other.id == id)&&(identical(other.listenWhen, listenWhen) || other.listenWhen == listenWhen)&&(identical(other.listener, listener) || other.listener == listener));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,path,id,listenWhen,listener);

@override
String toString() {
  return 'WoFormNode.valueListener(path: $path, id: $id, listenWhen: $listenWhen, listener: $listener)';
}


}

/// @nodoc
abstract mixin class $ValueListenerNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $ValueListenerNodeCopyWith(ValueListenerNode value, $Res Function(ValueListenerNode) _then) = _$ValueListenerNodeCopyWithImpl;
@override @useResult
$Res call({
 String path, String id,@notSerializable bool Function(Object? previous, Object? current)? listenWhen,@notSerializable void Function(BuildContext context, String parentPath, Object? value)? listener
});




}
/// @nodoc
class _$ValueListenerNodeCopyWithImpl<$Res>
    implements $ValueListenerNodeCopyWith<$Res> {
  _$ValueListenerNodeCopyWithImpl(this._self, this._then);

  final ValueListenerNode _self;
  final $Res Function(ValueListenerNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? path = null,Object? id = null,Object? listenWhen = freezed,Object? listener = freezed,}) {
  return _then(ValueListenerNode(
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

class WidgetNode extends WoFormNode {
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
$WidgetNodeCopyWith<WidgetNode> get copyWith => _$WidgetNodeCopyWithImpl<WidgetNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WidgetNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WidgetNode&&(identical(other.id, id) || other.id == id)&&(identical(other.builder, builder) || other.builder == builder)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,builder,uiSettings);

@override
String toString() {
  return 'WoFormNode.widget(id: $id, builder: $builder, uiSettings: $uiSettings)';
}


}

/// @nodoc
abstract mixin class $WidgetNodeCopyWith<$Res> implements $WoFormNodeCopyWith<$Res> {
  factory $WidgetNodeCopyWith(WidgetNode value, $Res Function(WidgetNode) _then) = _$WidgetNodeCopyWithImpl;
@override @useResult
$Res call({
 String id,@notSerializable Widget Function(BuildContext context)? builder, InputUiSettings uiSettings
});


$InputUiSettingsCopyWith<$Res> get uiSettings;

}
/// @nodoc
class _$WidgetNodeCopyWithImpl<$Res>
    implements $WidgetNodeCopyWith<$Res> {
  _$WidgetNodeCopyWithImpl(this._self, this._then);

  final WidgetNode _self;
  final $Res Function(WidgetNode) _then;

/// Create a copy of WoFormNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? builder = freezed,Object? uiSettings = null,}) {
  return _then(WidgetNode(
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
mixin _$FutureNode<T> {

 String get id; Future<T>? get future; WoFormNodeMixin Function(String parentPath, AsyncSnapshot<T?> snapshot) get builder; T? get initialData;/// If true, when the future will be completed, the values of
/// the children inputs will be reseted to their getInitialValues.
 bool get willResetToInitialValues;
/// Create a copy of FutureNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FutureNodeCopyWith<T, FutureNode<T>> get copyWith => _$FutureNodeCopyWithImpl<T, FutureNode<T>>(this as FutureNode<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FutureNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.future, future) || other.future == future)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other.initialData, initialData)&&(identical(other.willResetToInitialValues, willResetToInitialValues) || other.willResetToInitialValues == willResetToInitialValues));
}


@override
int get hashCode => Object.hash(runtimeType,id,future,builder,const DeepCollectionEquality().hash(initialData),willResetToInitialValues);

@override
String toString() {
  return 'FutureNode<$T>(id: $id, future: $future, builder: $builder, initialData: $initialData, willResetToInitialValues: $willResetToInitialValues)';
}


}

/// @nodoc
abstract mixin class $FutureNodeCopyWith<T,$Res>  {
  factory $FutureNodeCopyWith(FutureNode<T> value, $Res Function(FutureNode<T>) _then) = _$FutureNodeCopyWithImpl;
@useResult
$Res call({
 String id, Future<T>? future, WoFormNodeMixin Function(String parentPath, AsyncSnapshot<T?> snapshot) builder, T? initialData, bool willResetToInitialValues
});




}
/// @nodoc
class _$FutureNodeCopyWithImpl<T,$Res>
    implements $FutureNodeCopyWith<T, $Res> {
  _$FutureNodeCopyWithImpl(this._self, this._then);

  final FutureNode<T> _self;
  final $Res Function(FutureNode<T>) _then;

/// Create a copy of FutureNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? future = freezed,Object? builder = null,Object? initialData = freezed,Object? willResetToInitialValues = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,future: freezed == future ? _self.future : future // ignore: cast_nullable_to_non_nullable
as Future<T>?,builder: null == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin Function(String parentPath, AsyncSnapshot<T?> snapshot),initialData: freezed == initialData ? _self.initialData : initialData // ignore: cast_nullable_to_non_nullable
as T?,willResetToInitialValues: null == willResetToInitialValues ? _self.willResetToInitialValues : willResetToInitialValues // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}



/// @nodoc


class _FutureNode<T> extends FutureNode<T> {
  const _FutureNode({required this.id, required this.future, required this.builder, this.initialData, this.willResetToInitialValues = true}): super._();
  

@override final  String id;
@override final  Future<T>? future;
@override final  WoFormNodeMixin Function(String parentPath, AsyncSnapshot<T?> snapshot) builder;
@override final  T? initialData;
/// If true, when the future will be completed, the values of
/// the children inputs will be reseted to their getInitialValues.
@override@JsonKey() final  bool willResetToInitialValues;

/// Create a copy of FutureNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FutureNodeCopyWith<T, _FutureNode<T>> get copyWith => __$FutureNodeCopyWithImpl<T, _FutureNode<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FutureNode<T>&&(identical(other.id, id) || other.id == id)&&(identical(other.future, future) || other.future == future)&&(identical(other.builder, builder) || other.builder == builder)&&const DeepCollectionEquality().equals(other.initialData, initialData)&&(identical(other.willResetToInitialValues, willResetToInitialValues) || other.willResetToInitialValues == willResetToInitialValues));
}


@override
int get hashCode => Object.hash(runtimeType,id,future,builder,const DeepCollectionEquality().hash(initialData),willResetToInitialValues);

@override
String toString() {
  return 'FutureNode<$T>(id: $id, future: $future, builder: $builder, initialData: $initialData, willResetToInitialValues: $willResetToInitialValues)';
}


}

/// @nodoc
abstract mixin class _$FutureNodeCopyWith<T,$Res> implements $FutureNodeCopyWith<T, $Res> {
  factory _$FutureNodeCopyWith(_FutureNode<T> value, $Res Function(_FutureNode<T>) _then) = __$FutureNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, Future<T>? future, WoFormNodeMixin Function(String parentPath, AsyncSnapshot<T?> snapshot) builder, T? initialData, bool willResetToInitialValues
});




}
/// @nodoc
class __$FutureNodeCopyWithImpl<T,$Res>
    implements _$FutureNodeCopyWith<T, $Res> {
  __$FutureNodeCopyWithImpl(this._self, this._then);

  final _FutureNode<T> _self;
  final $Res Function(_FutureNode<T>) _then;

/// Create a copy of FutureNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? future = freezed,Object? builder = null,Object? initialData = freezed,Object? willResetToInitialValues = null,}) {
  return _then(_FutureNode<T>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,future: freezed == future ? _self.future : future // ignore: cast_nullable_to_non_nullable
as Future<T>?,builder: null == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as WoFormNodeMixin Function(String parentPath, AsyncSnapshot<T?> snapshot),initialData: freezed == initialData ? _self.initialData : initialData // ignore: cast_nullable_to_non_nullable
as T?,willResetToInitialValues: null == willResetToInitialValues ? _self.willResetToInitialValues : willResetToInitialValues // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$RootNode {

 String get id; WoFormValues get initialValues;@InputsListConverter() List<WoFormNodeMixin> get children; WoFormUiSettings get uiSettings; ExportSettings get exportSettings;// LATER : issue, how to modify an in-production corrupted data ?
// give a way to override it ?
//
/// If not empty, this form will be locally persistent, using HydratedCubit.
 String get hydratationId;
/// Create a copy of RootNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RootNodeCopyWith<RootNode> get copyWith => _$RootNodeCopyWithImpl<RootNode>(this as RootNode, _$identity);

  /// Serializes this RootNode to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RootNode&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.initialValues, initialValues)&&const DeepCollectionEquality().equals(other.children, children)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.exportSettings, exportSettings) || other.exportSettings == exportSettings)&&(identical(other.hydratationId, hydratationId) || other.hydratationId == hydratationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(initialValues),const DeepCollectionEquality().hash(children),uiSettings,exportSettings,hydratationId);

@override
String toString() {
  return 'RootNode(id: $id, initialValues: $initialValues, children: $children, uiSettings: $uiSettings, exportSettings: $exportSettings, hydratationId: $hydratationId)';
}


}

/// @nodoc
abstract mixin class $RootNodeCopyWith<$Res>  {
  factory $RootNodeCopyWith(RootNode value, $Res Function(RootNode) _then) = _$RootNodeCopyWithImpl;
@useResult
$Res call({
 String id, WoFormValues initialValues,@InputsListConverter() List<WoFormNodeMixin> children, WoFormUiSettings uiSettings, ExportSettings exportSettings, String hydratationId
});


$WoFormUiSettingsCopyWith<$Res> get uiSettings;$ExportSettingsCopyWith<$Res> get exportSettings;

}
/// @nodoc
class _$RootNodeCopyWithImpl<$Res>
    implements $RootNodeCopyWith<$Res> {
  _$RootNodeCopyWithImpl(this._self, this._then);

  final RootNode _self;
  final $Res Function(RootNode) _then;

/// Create a copy of RootNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? initialValues = null,Object? children = null,Object? uiSettings = null,Object? exportSettings = null,Object? hydratationId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValues: null == initialValues ? _self.initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as WoFormValues,children: null == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<WoFormNodeMixin>,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as WoFormUiSettings,exportSettings: null == exportSettings ? _self.exportSettings : exportSettings // ignore: cast_nullable_to_non_nullable
as ExportSettings,hydratationId: null == hydratationId ? _self.hydratationId : hydratationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of RootNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormUiSettingsCopyWith<$Res> get uiSettings {
  
  return $WoFormUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}/// Create a copy of RootNode
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

class _RootNode extends RootNode {
  const _RootNode({this.id = '#', final  WoFormValues initialValues = const {}, @InputsListConverter() final  List<WoFormNodeMixin> children = const [], this.uiSettings = const WoFormUiSettings(), this.exportSettings = const ExportSettings(), this.hydratationId = ''}): _initialValues = initialValues,_children = children,super._();
  factory _RootNode.fromJson(Map<String, dynamic> json) => _$RootNodeFromJson(json);

@override@JsonKey() final  String id;
 final  WoFormValues _initialValues;
@override@JsonKey() WoFormValues get initialValues {
  if (_initialValues is EqualUnmodifiableMapView) return _initialValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_initialValues);
}

 final  List<WoFormNodeMixin> _children;
@override@JsonKey()@InputsListConverter() List<WoFormNodeMixin> get children {
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_children);
}

@override@JsonKey() final  WoFormUiSettings uiSettings;
@override@JsonKey() final  ExportSettings exportSettings;
// LATER : issue, how to modify an in-production corrupted data ?
// give a way to override it ?
//
/// If not empty, this form will be locally persistent, using HydratedCubit.
@override@JsonKey() final  String hydratationId;

/// Create a copy of RootNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RootNodeCopyWith<_RootNode> get copyWith => __$RootNodeCopyWithImpl<_RootNode>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RootNodeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RootNode&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._initialValues, _initialValues)&&const DeepCollectionEquality().equals(other._children, _children)&&(identical(other.uiSettings, uiSettings) || other.uiSettings == uiSettings)&&(identical(other.exportSettings, exportSettings) || other.exportSettings == exportSettings)&&(identical(other.hydratationId, hydratationId) || other.hydratationId == hydratationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_initialValues),const DeepCollectionEquality().hash(_children),uiSettings,exportSettings,hydratationId);

@override
String toString() {
  return 'RootNode(id: $id, initialValues: $initialValues, children: $children, uiSettings: $uiSettings, exportSettings: $exportSettings, hydratationId: $hydratationId)';
}


}

/// @nodoc
abstract mixin class _$RootNodeCopyWith<$Res> implements $RootNodeCopyWith<$Res> {
  factory _$RootNodeCopyWith(_RootNode value, $Res Function(_RootNode) _then) = __$RootNodeCopyWithImpl;
@override @useResult
$Res call({
 String id, WoFormValues initialValues,@InputsListConverter() List<WoFormNodeMixin> children, WoFormUiSettings uiSettings, ExportSettings exportSettings, String hydratationId
});


@override $WoFormUiSettingsCopyWith<$Res> get uiSettings;@override $ExportSettingsCopyWith<$Res> get exportSettings;

}
/// @nodoc
class __$RootNodeCopyWithImpl<$Res>
    implements _$RootNodeCopyWith<$Res> {
  __$RootNodeCopyWithImpl(this._self, this._then);

  final _RootNode _self;
  final $Res Function(_RootNode) _then;

/// Create a copy of RootNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? initialValues = null,Object? children = null,Object? uiSettings = null,Object? exportSettings = null,Object? hydratationId = null,}) {
  return _then(_RootNode(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,initialValues: null == initialValues ? _self._initialValues : initialValues // ignore: cast_nullable_to_non_nullable
as WoFormValues,children: null == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<WoFormNodeMixin>,uiSettings: null == uiSettings ? _self.uiSettings : uiSettings // ignore: cast_nullable_to_non_nullable
as WoFormUiSettings,exportSettings: null == exportSettings ? _self.exportSettings : exportSettings // ignore: cast_nullable_to_non_nullable
as ExportSettings,hydratationId: null == hydratationId ? _self.hydratationId : hydratationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of RootNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WoFormUiSettingsCopyWith<$Res> get uiSettings {
  
  return $WoFormUiSettingsCopyWith<$Res>(_self.uiSettings, (value) {
    return _then(_self.copyWith(uiSettings: value));
  });
}/// Create a copy of RootNode
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExportSettingsCopyWith<$Res> get exportSettings {
  
  return $ExportSettingsCopyWith<$Res>(_self.exportSettings, (value) {
    return _then(_self.copyWith(exportSettings: value));
  });
}
}

// dart format on
