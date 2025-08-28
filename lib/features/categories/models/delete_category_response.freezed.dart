// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeleteCategoryResponse {

 String get message;
/// Create a copy of DeleteCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCategoryResponseCopyWith<DeleteCategoryResponse> get copyWith => _$DeleteCategoryResponseCopyWithImpl<DeleteCategoryResponse>(this as DeleteCategoryResponse, _$identity);

  /// Serializes this DeleteCategoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCategoryResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DeleteCategoryResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class $DeleteCategoryResponseCopyWith<$Res>  {
  factory $DeleteCategoryResponseCopyWith(DeleteCategoryResponse value, $Res Function(DeleteCategoryResponse) _then) = _$DeleteCategoryResponseCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DeleteCategoryResponseCopyWithImpl<$Res>
    implements $DeleteCategoryResponseCopyWith<$Res> {
  _$DeleteCategoryResponseCopyWithImpl(this._self, this._then);

  final DeleteCategoryResponse _self;
  final $Res Function(DeleteCategoryResponse) _then;

/// Create a copy of DeleteCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteCategoryResponse].
extension DeleteCategoryResponsePatterns on DeleteCategoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteCategoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteCategoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteCategoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _DeleteCategoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteCategoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteCategoryResponse() when $default != null:
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
case _DeleteCategoryResponse() when $default != null:
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
case _DeleteCategoryResponse():
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
case _DeleteCategoryResponse() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteCategoryResponse implements DeleteCategoryResponse {
  const _DeleteCategoryResponse({required this.message});
  factory _DeleteCategoryResponse.fromJson(Map<String, dynamic> json) => _$DeleteCategoryResponseFromJson(json);

@override final  String message;

/// Create a copy of DeleteCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteCategoryResponseCopyWith<_DeleteCategoryResponse> get copyWith => __$DeleteCategoryResponseCopyWithImpl<_DeleteCategoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteCategoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteCategoryResponse&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DeleteCategoryResponse(message: $message)';
}


}

/// @nodoc
abstract mixin class _$DeleteCategoryResponseCopyWith<$Res> implements $DeleteCategoryResponseCopyWith<$Res> {
  factory _$DeleteCategoryResponseCopyWith(_DeleteCategoryResponse value, $Res Function(_DeleteCategoryResponse) _then) = __$DeleteCategoryResponseCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$DeleteCategoryResponseCopyWithImpl<$Res>
    implements _$DeleteCategoryResponseCopyWith<$Res> {
  __$DeleteCategoryResponseCopyWithImpl(this._self, this._then);

  final _DeleteCategoryResponse _self;
  final $Res Function(_DeleteCategoryResponse) _then;

/// Create a copy of DeleteCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_DeleteCategoryResponse(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
