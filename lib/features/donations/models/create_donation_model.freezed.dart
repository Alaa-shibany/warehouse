// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDonationModel {

 String get message;
/// Create a copy of CreateDonationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDonationModelCopyWith<CreateDonationModel> get copyWith => _$CreateDonationModelCopyWithImpl<CreateDonationModel>(this as CreateDonationModel, _$identity);

  /// Serializes this CreateDonationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDonationModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateDonationModel(message: $message)';
}


}

/// @nodoc
abstract mixin class $CreateDonationModelCopyWith<$Res>  {
  factory $CreateDonationModelCopyWith(CreateDonationModel value, $Res Function(CreateDonationModel) _then) = _$CreateDonationModelCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CreateDonationModelCopyWithImpl<$Res>
    implements $CreateDonationModelCopyWith<$Res> {
  _$CreateDonationModelCopyWithImpl(this._self, this._then);

  final CreateDonationModel _self;
  final $Res Function(CreateDonationModel) _then;

/// Create a copy of CreateDonationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDonationModel].
extension CreateDonationModelPatterns on CreateDonationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDonationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDonationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDonationModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateDonationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDonationModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDonationModel() when $default != null:
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
case _CreateDonationModel() when $default != null:
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
case _CreateDonationModel():
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
case _CreateDonationModel() when $default != null:
return $default(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDonationModel implements CreateDonationModel {
  const _CreateDonationModel({required this.message});
  factory _CreateDonationModel.fromJson(Map<String, dynamic> json) => _$CreateDonationModelFromJson(json);

@override final  String message;

/// Create a copy of CreateDonationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDonationModelCopyWith<_CreateDonationModel> get copyWith => __$CreateDonationModelCopyWithImpl<_CreateDonationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDonationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDonationModel&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CreateDonationModel(message: $message)';
}


}

/// @nodoc
abstract mixin class _$CreateDonationModelCopyWith<$Res> implements $CreateDonationModelCopyWith<$Res> {
  factory _$CreateDonationModelCopyWith(_CreateDonationModel value, $Res Function(_CreateDonationModel) _then) = __$CreateDonationModelCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$CreateDonationModelCopyWithImpl<$Res>
    implements _$CreateDonationModelCopyWith<$Res> {
  __$CreateDonationModelCopyWithImpl(this._self, this._then);

  final _CreateDonationModel _self;
  final $Res Function(_CreateDonationModel) _then;

/// Create a copy of CreateDonationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_CreateDonationModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
