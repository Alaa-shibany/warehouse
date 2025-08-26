// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequestBodyModel {

 String get username; String get password;
/// Create a copy of LoginRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestBodyModelCopyWith<LoginRequestBodyModel> get copyWith => _$LoginRequestBodyModelCopyWithImpl<LoginRequestBodyModel>(this as LoginRequestBodyModel, _$identity);

  /// Serializes this LoginRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequestBodyModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestBodyModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestBodyModelCopyWith<$Res>  {
  factory $LoginRequestBodyModelCopyWith(LoginRequestBodyModel value, $Res Function(LoginRequestBodyModel) _then) = _$LoginRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class _$LoginRequestBodyModelCopyWithImpl<$Res>
    implements $LoginRequestBodyModelCopyWith<$Res> {
  _$LoginRequestBodyModelCopyWithImpl(this._self, this._then);

  final LoginRequestBodyModel _self;
  final $Res Function(LoginRequestBodyModel) _then;

/// Create a copy of LoginRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? password = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequestBodyModel].
extension LoginRequestBodyModelPatterns on LoginRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequestBodyModel() when $default != null:
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginRequestBodyModel():
return $default(_that.username,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequestBodyModel() when $default != null:
return $default(_that.username,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequestBodyModel implements LoginRequestBodyModel {
  const _LoginRequestBodyModel({required this.username, required this.password});
  factory _LoginRequestBodyModel.fromJson(Map<String, dynamic> json) => _$LoginRequestBodyModelFromJson(json);

@override final  String username;
@override final  String password;

/// Create a copy of LoginRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestBodyModelCopyWith<_LoginRequestBodyModel> get copyWith => __$LoginRequestBodyModelCopyWithImpl<_LoginRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequestBodyModel&&(identical(other.username, username) || other.username == username)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,password);

@override
String toString() {
  return 'LoginRequestBodyModel(username: $username, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestBodyModelCopyWith<$Res> implements $LoginRequestBodyModelCopyWith<$Res> {
  factory _$LoginRequestBodyModelCopyWith(_LoginRequestBodyModel value, $Res Function(_LoginRequestBodyModel) _then) = __$LoginRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String username, String password
});




}
/// @nodoc
class __$LoginRequestBodyModelCopyWithImpl<$Res>
    implements _$LoginRequestBodyModelCopyWith<$Res> {
  __$LoginRequestBodyModelCopyWithImpl(this._self, this._then);

  final _LoginRequestBodyModel _self;
  final $Res Function(_LoginRequestBodyModel) _then;

/// Create a copy of LoginRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? password = null,}) {
  return _then(_LoginRequestBodyModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
