// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DonationModel {

 int get id;@JsonKey(name: 'donor') String? get donner;@JsonKey(name: 'name') String get subjectName;@JsonKey(name: 'expiry_date') String? get expireAt;@JsonKey(name: 'addition_date') String get createdAt;@JsonKey(name: 'amount') int get quantity; String get description; String get unit;@JsonKey(name: 'category_id') int get categoryId;
/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationModelCopyWith<DonationModel> get copyWith => _$DonationModelCopyWithImpl<DonationModel>(this as DonationModel, _$identity);

  /// Serializes this DonationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.donner, donner) || other.donner == donner)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.description, description) || other.description == description)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,donner,subjectName,expireAt,createdAt,quantity,description,unit,categoryId);

@override
String toString() {
  return 'DonationModel(id: $id, donner: $donner, subjectName: $subjectName, expireAt: $expireAt, createdAt: $createdAt, quantity: $quantity, description: $description, unit: $unit, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $DonationModelCopyWith<$Res>  {
  factory $DonationModelCopyWith(DonationModel value, $Res Function(DonationModel) _then) = _$DonationModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'donor') String? donner,@JsonKey(name: 'name') String subjectName,@JsonKey(name: 'expiry_date') String? expireAt,@JsonKey(name: 'addition_date') String createdAt,@JsonKey(name: 'amount') int quantity, String description, String unit,@JsonKey(name: 'category_id') int categoryId
});




}
/// @nodoc
class _$DonationModelCopyWithImpl<$Res>
    implements $DonationModelCopyWith<$Res> {
  _$DonationModelCopyWithImpl(this._self, this._then);

  final DonationModel _self;
  final $Res Function(DonationModel) _then;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? donner = freezed,Object? subjectName = null,Object? expireAt = freezed,Object? createdAt = null,Object? quantity = null,Object? description = null,Object? unit = null,Object? categoryId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,donner: freezed == donner ? _self.donner : donner // ignore: cast_nullable_to_non_nullable
as String?,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,expireAt: freezed == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DonationModel].
extension DonationModelPatterns on DonationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationModel value)  $default,){
final _that = this;
switch (_that) {
case _DonationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationModel value)?  $default,){
final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'donor')  String? donner, @JsonKey(name: 'name')  String subjectName, @JsonKey(name: 'expiry_date')  String? expireAt, @JsonKey(name: 'addition_date')  String createdAt, @JsonKey(name: 'amount')  int quantity,  String description,  String unit, @JsonKey(name: 'category_id')  int categoryId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
return $default(_that.id,_that.donner,_that.subjectName,_that.expireAt,_that.createdAt,_that.quantity,_that.description,_that.unit,_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'donor')  String? donner, @JsonKey(name: 'name')  String subjectName, @JsonKey(name: 'expiry_date')  String? expireAt, @JsonKey(name: 'addition_date')  String createdAt, @JsonKey(name: 'amount')  int quantity,  String description,  String unit, @JsonKey(name: 'category_id')  int categoryId)  $default,) {final _that = this;
switch (_that) {
case _DonationModel():
return $default(_that.id,_that.donner,_that.subjectName,_that.expireAt,_that.createdAt,_that.quantity,_that.description,_that.unit,_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'donor')  String? donner, @JsonKey(name: 'name')  String subjectName, @JsonKey(name: 'expiry_date')  String? expireAt, @JsonKey(name: 'addition_date')  String createdAt, @JsonKey(name: 'amount')  int quantity,  String description,  String unit, @JsonKey(name: 'category_id')  int categoryId)?  $default,) {final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
return $default(_that.id,_that.donner,_that.subjectName,_that.expireAt,_that.createdAt,_that.quantity,_that.description,_that.unit,_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationModel implements DonationModel {
  const _DonationModel({required this.id, @JsonKey(name: 'donor') required this.donner, @JsonKey(name: 'name') required this.subjectName, @JsonKey(name: 'expiry_date') required this.expireAt, @JsonKey(name: 'addition_date') required this.createdAt, @JsonKey(name: 'amount') required this.quantity, required this.description, required this.unit, @JsonKey(name: 'category_id') required this.categoryId});
  factory _DonationModel.fromJson(Map<String, dynamic> json) => _$DonationModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'donor') final  String? donner;
@override@JsonKey(name: 'name') final  String subjectName;
@override@JsonKey(name: 'expiry_date') final  String? expireAt;
@override@JsonKey(name: 'addition_date') final  String createdAt;
@override@JsonKey(name: 'amount') final  int quantity;
@override final  String description;
@override final  String unit;
@override@JsonKey(name: 'category_id') final  int categoryId;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationModelCopyWith<_DonationModel> get copyWith => __$DonationModelCopyWithImpl<_DonationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.donner, donner) || other.donner == donner)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.description, description) || other.description == description)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,donner,subjectName,expireAt,createdAt,quantity,description,unit,categoryId);

@override
String toString() {
  return 'DonationModel(id: $id, donner: $donner, subjectName: $subjectName, expireAt: $expireAt, createdAt: $createdAt, quantity: $quantity, description: $description, unit: $unit, categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class _$DonationModelCopyWith<$Res> implements $DonationModelCopyWith<$Res> {
  factory _$DonationModelCopyWith(_DonationModel value, $Res Function(_DonationModel) _then) = __$DonationModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'donor') String? donner,@JsonKey(name: 'name') String subjectName,@JsonKey(name: 'expiry_date') String? expireAt,@JsonKey(name: 'addition_date') String createdAt,@JsonKey(name: 'amount') int quantity, String description, String unit,@JsonKey(name: 'category_id') int categoryId
});




}
/// @nodoc
class __$DonationModelCopyWithImpl<$Res>
    implements _$DonationModelCopyWith<$Res> {
  __$DonationModelCopyWithImpl(this._self, this._then);

  final _DonationModel _self;
  final $Res Function(_DonationModel) _then;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? donner = freezed,Object? subjectName = null,Object? expireAt = freezed,Object? createdAt = null,Object? quantity = null,Object? description = null,Object? unit = null,Object? categoryId = null,}) {
  return _then(_DonationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,donner: freezed == donner ? _self.donner : donner // ignore: cast_nullable_to_non_nullable
as String?,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,expireAt: freezed == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
