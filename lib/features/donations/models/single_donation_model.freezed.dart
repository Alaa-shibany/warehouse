// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SingleDonationModel {

 int get id; String get name; String? get description;@JsonKey(name: 'addition_date') String get createdAt;@JsonKey(name: 'expiry_date') String? get expiryDate; String? get donor; String get unit; int get amount; List<DistributionModel> get distributions;
/// Create a copy of SingleDonationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SingleDonationModelCopyWith<SingleDonationModel> get copyWith => _$SingleDonationModelCopyWithImpl<SingleDonationModel>(this as SingleDonationModel, _$identity);

  /// Serializes this SingleDonationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SingleDonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.donor, donor) || other.donor == donor)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other.distributions, distributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,expiryDate,donor,unit,amount,const DeepCollectionEquality().hash(distributions));

@override
String toString() {
  return 'SingleDonationModel(id: $id, name: $name, description: $description, createdAt: $createdAt, expiryDate: $expiryDate, donor: $donor, unit: $unit, amount: $amount, distributions: $distributions)';
}


}

/// @nodoc
abstract mixin class $SingleDonationModelCopyWith<$Res>  {
  factory $SingleDonationModelCopyWith(SingleDonationModel value, $Res Function(SingleDonationModel) _then) = _$SingleDonationModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? description,@JsonKey(name: 'addition_date') String createdAt,@JsonKey(name: 'expiry_date') String? expiryDate, String? donor, String unit, int amount, List<DistributionModel> distributions
});




}
/// @nodoc
class _$SingleDonationModelCopyWithImpl<$Res>
    implements $SingleDonationModelCopyWith<$Res> {
  _$SingleDonationModelCopyWithImpl(this._self, this._then);

  final SingleDonationModel _self;
  final $Res Function(SingleDonationModel) _then;

/// Create a copy of SingleDonationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? expiryDate = freezed,Object? donor = freezed,Object? unit = null,Object? amount = null,Object? distributions = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,donor: freezed == donor ? _self.donor : donor // ignore: cast_nullable_to_non_nullable
as String?,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,distributions: null == distributions ? _self.distributions : distributions // ignore: cast_nullable_to_non_nullable
as List<DistributionModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [SingleDonationModel].
extension SingleDonationModelPatterns on SingleDonationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SingleDonationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SingleDonationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SingleDonationModel value)  $default,){
final _that = this;
switch (_that) {
case _SingleDonationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SingleDonationModel value)?  $default,){
final _that = this;
switch (_that) {
case _SingleDonationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? description, @JsonKey(name: 'addition_date')  String createdAt, @JsonKey(name: 'expiry_date')  String? expiryDate,  String? donor,  String unit,  int amount,  List<DistributionModel> distributions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SingleDonationModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.expiryDate,_that.donor,_that.unit,_that.amount,_that.distributions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? description, @JsonKey(name: 'addition_date')  String createdAt, @JsonKey(name: 'expiry_date')  String? expiryDate,  String? donor,  String unit,  int amount,  List<DistributionModel> distributions)  $default,) {final _that = this;
switch (_that) {
case _SingleDonationModel():
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.expiryDate,_that.donor,_that.unit,_that.amount,_that.distributions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? description, @JsonKey(name: 'addition_date')  String createdAt, @JsonKey(name: 'expiry_date')  String? expiryDate,  String? donor,  String unit,  int amount,  List<DistributionModel> distributions)?  $default,) {final _that = this;
switch (_that) {
case _SingleDonationModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.expiryDate,_that.donor,_that.unit,_that.amount,_that.distributions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SingleDonationModel implements SingleDonationModel {
  const _SingleDonationModel({required this.id, required this.name, required this.description, @JsonKey(name: 'addition_date') required this.createdAt, @JsonKey(name: 'expiry_date') required this.expiryDate, required this.donor, required this.unit, required this.amount, required final  List<DistributionModel> distributions}): _distributions = distributions;
  factory _SingleDonationModel.fromJson(Map<String, dynamic> json) => _$SingleDonationModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'addition_date') final  String createdAt;
@override@JsonKey(name: 'expiry_date') final  String? expiryDate;
@override final  String? donor;
@override final  String unit;
@override final  int amount;
 final  List<DistributionModel> _distributions;
@override List<DistributionModel> get distributions {
  if (_distributions is EqualUnmodifiableListView) return _distributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_distributions);
}


/// Create a copy of SingleDonationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SingleDonationModelCopyWith<_SingleDonationModel> get copyWith => __$SingleDonationModelCopyWithImpl<_SingleDonationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SingleDonationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SingleDonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.donor, donor) || other.donor == donor)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.amount, amount) || other.amount == amount)&&const DeepCollectionEquality().equals(other._distributions, _distributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,expiryDate,donor,unit,amount,const DeepCollectionEquality().hash(_distributions));

@override
String toString() {
  return 'SingleDonationModel(id: $id, name: $name, description: $description, createdAt: $createdAt, expiryDate: $expiryDate, donor: $donor, unit: $unit, amount: $amount, distributions: $distributions)';
}


}

/// @nodoc
abstract mixin class _$SingleDonationModelCopyWith<$Res> implements $SingleDonationModelCopyWith<$Res> {
  factory _$SingleDonationModelCopyWith(_SingleDonationModel value, $Res Function(_SingleDonationModel) _then) = __$SingleDonationModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? description,@JsonKey(name: 'addition_date') String createdAt,@JsonKey(name: 'expiry_date') String? expiryDate, String? donor, String unit, int amount, List<DistributionModel> distributions
});




}
/// @nodoc
class __$SingleDonationModelCopyWithImpl<$Res>
    implements _$SingleDonationModelCopyWith<$Res> {
  __$SingleDonationModelCopyWithImpl(this._self, this._then);

  final _SingleDonationModel _self;
  final $Res Function(_SingleDonationModel) _then;

/// Create a copy of SingleDonationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? expiryDate = freezed,Object? donor = freezed,Object? unit = null,Object? amount = null,Object? distributions = null,}) {
  return _then(_SingleDonationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,donor: freezed == donor ? _self.donor : donor // ignore: cast_nullable_to_non_nullable
as String?,unit: null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,distributions: null == distributions ? _self._distributions : distributions // ignore: cast_nullable_to_non_nullable
as List<DistributionModel>,
  ));
}


}

// dart format on
