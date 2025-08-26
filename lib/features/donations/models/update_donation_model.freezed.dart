// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDonationModel {

 String get message;
/// Create a copy of UpdateDonationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDonationModelCopyWith<UpdateDonationModel> get copyWith => _$UpdateDonationModelCopyWithImpl<UpdateDonationModel>(this as UpdateDonationModel, _$identity);

  /// Serializes this UpdateDonationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDonationModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UpdateDonationModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $UpdateDonationModelCopyWith<$Res>  {
  factory $UpdateDonationModelCopyWith(UpdateDonationModel value, $Res Function(UpdateDonationModel) _then) = _$UpdateDonationModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$UpdateDonationModelCopyWithImpl<$Res>
    implements $UpdateDonationModelCopyWith<$Res> {
  _$UpdateDonationModelCopyWithImpl(this._self, this._then);

  final UpdateDonationModel _self;
  final $Res Function(UpdateDonationModel) _then;

/// Create a copy of UpdateDonationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDonationModel].
extension UpdateDonationModelPatterns on UpdateDonationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDonationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDonationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDonationModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDonationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDonationModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDonationModel() when $default != null:
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
case _UpdateDonationModel() when $default != null:
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
case _UpdateDonationModel():
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
case _UpdateDonationModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDonationModel implements UpdateDonationModel {
  const _UpdateDonationModel({required this.message});
  factory _UpdateDonationModel.fromJson(Map<String, dynamic> json) => _$UpdateDonationModelFromJson(json);

@override final  String message;

/// Create a copy of UpdateDonationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDonationModelCopyWith<_UpdateDonationModel> get copyWith => __$UpdateDonationModelCopyWithImpl<_UpdateDonationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDonationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDonationModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'UpdateDonationModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$UpdateDonationModelCopyWith<$Res> implements $UpdateDonationModelCopyWith<$Res> {
  factory _$UpdateDonationModelCopyWith(_UpdateDonationModel value, $Res Function(_UpdateDonationModel) _then) = __$UpdateDonationModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$UpdateDonationModelCopyWithImpl<$Res>
    implements _$UpdateDonationModelCopyWith<$Res> {
  __$UpdateDonationModelCopyWithImpl(this._self, this._then);

  final _UpdateDonationModel _self;
  final $Res Function(_UpdateDonationModel) _then;

/// Create a copy of UpdateDonationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_UpdateDonationModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
