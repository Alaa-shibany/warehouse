// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateCategoryResponse {

 String get message;
/// Create a copy of CreateCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCategoryResponseCopyWith<CreateCategoryResponse> get copyWith => _$CreateCategoryResponseCopyWithImpl<CreateCategoryResponse>(this as CreateCategoryResponse, _$identity);

  /// Serializes this CreateCategoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCategoryResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateCategoryResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateCategoryResponseCopyWith<$Res>  {
  factory $CreateCategoryResponseCopyWith(CreateCategoryResponse value, $Res Function(CreateCategoryResponse) _then) = _$CreateCategoryResponseCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateCategoryResponseCopyWithImpl<$Res>
    implements $CreateCategoryResponseCopyWith<$Res> {
  _$CreateCategoryResponseCopyWithImpl(this._self, this._then);

  final CreateCategoryResponse _self;
  final $Res Function(CreateCategoryResponse) _then;

/// Create a copy of CreateCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateCategoryResponse].
extension CreateCategoryResponsePatterns on CreateCategoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateCategoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateCategoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateCategoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateCategoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CreateCategoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateCategoryResponse() when $default != null:
return $default(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryResponse():
return $default(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,) {final _that = this;
switch (_that) {
case _CreateCategoryResponse() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateCategoryResponse implements CreateCategoryResponse {
  const _CreateCategoryResponse({required this.message});
  factory _CreateCategoryResponse.fromJson(Map<String, dynamic> json) => _$CreateCategoryResponseFromJson(json);

@override final  String message;

/// Create a copy of CreateCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCategoryResponseCopyWith<_CreateCategoryResponse> get copyWith => __$CreateCategoryResponseCopyWithImpl<_CreateCategoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateCategoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCategoryResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateCategoryResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateCategoryResponseCopyWith<$Res> implements $CreateCategoryResponseCopyWith<$Res> {
  factory _$CreateCategoryResponseCopyWith(_CreateCategoryResponse value, $Res Function(_CreateCategoryResponse) _then) = __$CreateCategoryResponseCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CreateCategoryResponseCopyWithImpl<$Res>
    implements _$CreateCategoryResponseCopyWith<$Res> {
  __$CreateCategoryResponseCopyWithImpl(this._self, this._then);

  final _CreateCategoryResponse _self;
  final $Res Function(_CreateCategoryResponse) _then;

/// Create a copy of CreateCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CreateCategoryResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
