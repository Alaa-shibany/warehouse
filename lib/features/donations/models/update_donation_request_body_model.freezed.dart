// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_donation_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateDonationRequestBodyModel {

 String get name;@JsonKey(name: 'donor') String get donner;@JsonKey(name: 'amount') int get quantity;@JsonKey(name: 'category_id') int get categoryId; String get unit; String get description; String get expired_at;
/// Create a copy of UpdateDonationRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDonationRequestBodyModelCopyWith<UpdateDonationRequestBodyModel> get copyWith => _$UpdateDonationRequestBodyModelCopyWithImpl<UpdateDonationRequestBodyModel>(this as UpdateDonationRequestBodyModel, _$identity);

  /// Serializes this UpdateDonationRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDonationRequestBodyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.donner, donner) || other.donner == donner)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.description, description) || other.description == description)&&(identical(other.expired_at, expired_at) || other.expired_at == expired_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,donner,quantity,categoryId,unit,description,expired_at);

@override
String toString() {
  return 'UpdateDonationRequestBodyModel(name: $name, donner: $donner, quantity: $quantity, categoryId: $categoryId, unit: $unit, description: $description, expired_at: $expired_at)';
}


}

/// @nodoc
abstract mixin class $UpdateDonationRequestBodyModelCopyWith<$Res>  {
  factory $UpdateDonationRequestBodyModelCopyWith(UpdateDonationRequestBodyModel value, $Res Function(UpdateDonationRequestBodyModel) _then) = _$UpdateDonationRequestBodyModelCopyWithImpl;
@useResult
$Res call({
 String name,@JsonKey(name: 'donor') String donner,@JsonKey(name: 'amount') int quantity,@JsonKey(name: 'category_id') int categoryId, String unit, String description, String expired_at
});




}
/// @nodoc
class _$UpdateDonationRequestBodyModelCopyWithImpl<$Res>
    implements $UpdateDonationRequestBodyModelCopyWith<$Res> {
  _$UpdateDonationRequestBodyModelCopyWithImpl(this._self, this._then);

  final UpdateDonationRequestBodyModel _self;
  final $Res Function(UpdateDonationRequestBodyModel) _then;

/// Create a copy of UpdateDonationRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? donner = null,Object? quantity = null,Object? categoryId = null,Object? unit = null,Object? description = null,Object? expired_at = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,donner: null == donner ? _self.donner : donner // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,expired_at: null == expired_at ? _self.expired_at : expired_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDonationRequestBodyModel].
extension UpdateDonationRequestBodyModelPatterns on UpdateDonationRequestBodyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDonationRequestBodyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDonationRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDonationRequestBodyModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDonationRequestBodyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDonationRequestBodyModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDonationRequestBodyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'donor')  String donner, @JsonKey(name: 'amount')  int quantity, @JsonKey(name: 'category_id')  int categoryId,  String unit,  String description,  String expired_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDonationRequestBodyModel() when $default != null:
return $default(_that.name,_that.donner,_that.quantity,_that.categoryId,_that.unit,_that.description,_that.expired_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name, @JsonKey(name: 'donor')  String donner, @JsonKey(name: 'amount')  int quantity, @JsonKey(name: 'category_id')  int categoryId,  String unit,  String description,  String expired_at)  $default,) {final _that = this;
switch (_that) {
case _UpdateDonationRequestBodyModel():
return $default(_that.name,_that.donner,_that.quantity,_that.categoryId,_that.unit,_that.description,_that.expired_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name, @JsonKey(name: 'donor')  String donner, @JsonKey(name: 'amount')  int quantity, @JsonKey(name: 'category_id')  int categoryId,  String unit,  String description,  String expired_at)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDonationRequestBodyModel() when $default != null:
return $default(_that.name,_that.donner,_that.quantity,_that.categoryId,_that.unit,_that.description,_that.expired_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDonationRequestBodyModel implements UpdateDonationRequestBodyModel {
  const _UpdateDonationRequestBodyModel({required this.name, @JsonKey(name: 'donor') required this.donner, @JsonKey(name: 'amount') required this.quantity, @JsonKey(name: 'category_id') required this.categoryId, required this.unit, required this.description, required this.expired_at});
  factory _UpdateDonationRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateDonationRequestBodyModelFromJson(json);

@override final  String name;
@override@JsonKey(name: 'donor') final  String donner;
@override@JsonKey(name: 'amount') final  int quantity;
@override@JsonKey(name: 'category_id') final  int categoryId;
@override final  String unit;
@override final  String description;
@override final  String expired_at;

/// Create a copy of UpdateDonationRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDonationRequestBodyModelCopyWith<_UpdateDonationRequestBodyModel> get copyWith => __$UpdateDonationRequestBodyModelCopyWithImpl<_UpdateDonationRequestBodyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDonationRequestBodyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDonationRequestBodyModel&&(identical(other.name, name) || other.name == name)&&(identical(other.donner, donner) || other.donner == donner)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.description, description) || other.description == description)&&(identical(other.expired_at, expired_at) || other.expired_at == expired_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,donner,quantity,categoryId,unit,description,expired_at);

@override
String toString() {
  return 'UpdateDonationRequestBodyModel(name: $name, donner: $donner, quantity: $quantity, categoryId: $categoryId, unit: $unit, description: $description, expired_at: $expired_at)';
}


}

/// @nodoc
abstract mixin class _$UpdateDonationRequestBodyModelCopyWith<$Res> implements $UpdateDonationRequestBodyModelCopyWith<$Res> {
  factory _$UpdateDonationRequestBodyModelCopyWith(_UpdateDonationRequestBodyModel value, $Res Function(_UpdateDonationRequestBodyModel) _then) = __$UpdateDonationRequestBodyModelCopyWithImpl;
@override @useResult
$Res call({
 String name,@JsonKey(name: 'donor') String donner,@JsonKey(name: 'amount') int quantity,@JsonKey(name: 'category_id') int categoryId, String unit, String description, String expired_at
});




}
/// @nodoc
class __$UpdateDonationRequestBodyModelCopyWithImpl<$Res>
    implements _$UpdateDonationRequestBodyModelCopyWith<$Res> {
  __$UpdateDonationRequestBodyModelCopyWithImpl(this._self, this._then);

  final _UpdateDonationRequestBodyModel _self;
  final $Res Function(_UpdateDonationRequestBodyModel) _then;

/// Create a copy of UpdateDonationRequestBodyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? donner = null,Object? quantity = null,Object? categoryId = null,Object? unit = null,Object? description = null,Object? expired_at = null,}) {
  return _then(_UpdateDonationRequestBodyModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,donner: null == donner ? _self.donner : donner // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,expired_at: null == expired_at ? _self.expired_at : expired_at // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
