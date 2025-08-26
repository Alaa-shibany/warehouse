// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_category_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCategoryRequestBodyModel {

 String get name;
/// Create a copy of CreateCategoryRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCategoryRequestBodyModelCopyWith<CreateCategoryRequestBodyModel> get copyWith => _$CreateCategoryRequestBodyModelCopyWithImpl<CreateCategoryRequestBodyModel>(this as CreateCategoryRequestBodyModel, _$identity);

  /// Serializes this CreateCategoryRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCategoryRequestBodyModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateCategoryRequestBodyModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $CreateCategoryRequestBodyModelCopyWith<$Res>  {
  factory $CreateCategoryRequestBodyModelCopyWith(CreateCategoryRequestBodyModel value, $Res Function(CreateCategoryRequestBodyModel) _then) = _$CreateCategoryRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$CreateCategoryRequestBodyModelCopyWithImpl<$Res>
    implements $CreateCategoryRequestBodyModelCopyWith<$Res> {
  _$CreateCategoryRequestBodyModelCopyWithImpl(this._self, this._then);

  final CreateCategoryRequestBodyModel _self;
  final $Res Function(CreateCategoryRequestBodyModel) _then;

/// Create a copy of CreateCategoryRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCategoryRequestBodyModel].
extension CreateCategoryRequestBodyModelPatterns on CreateCategoryRequestBodyModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCategoryRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCategoryRequestBodyModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCategoryRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryRequestBodyModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCategoryRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryRequestBodyModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCategoryRequestBodyModel() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryRequestBodyModel():
return $default(_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryRequestBodyModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCategoryRequestBodyModel implements CreateCategoryRequestBodyModel {
  const _CreateCategoryRequestBodyModel({required this.name});
  factory _CreateCategoryRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateCategoryRequestBodyModelFromJson(json);

@override final  String name;

/// Create a copy of CreateCategoryRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCategoryRequestBodyModelCopyWith<_CreateCategoryRequestBodyModel> get copyWith => __$CreateCategoryRequestBodyModelCopyWithImpl<_CreateCategoryRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCategoryRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCategoryRequestBodyModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateCategoryRequestBodyModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$CreateCategoryRequestBodyModelCopyWith<$Res> implements $CreateCategoryRequestBodyModelCopyWith<$Res> {
  factory _$CreateCategoryRequestBodyModelCopyWith(_CreateCategoryRequestBodyModel value, $Res Function(_CreateCategoryRequestBodyModel) _then) = __$CreateCategoryRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$CreateCategoryRequestBodyModelCopyWithImpl<$Res>
    implements _$CreateCategoryRequestBodyModelCopyWith<$Res> {
  __$CreateCategoryRequestBodyModelCopyWithImpl(this._self, this._then);

  final _CreateCategoryRequestBodyModel _self;
  final $Res Function(_CreateCategoryRequestBodyModel) _then;

/// Create a copy of CreateCategoryRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_CreateCategoryRequestBodyModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
