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

 int get id; String get donner;@JsonKey(name: 'subject_name') String get subjectName;@JsonKey(name: 'expire_at') String get expireAt;@JsonKey(name: 'created_at') String get createdAt; int get quantity; String get description; SectorMode? get sector;
/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationModelCopyWith<DonationModel> get copyWith => _$DonationModelCopyWithImpl<DonationModel>(this as DonationModel, _$identity);

  /// Serializes this DonationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.donner, donner) || other.donner == donner)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.description, description) || other.description == description)&&(identical(other.sector, sector) || other.sector == sector));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,donner,subjectName,expireAt,createdAt,quantity,description,sector);

@override
String toString() {
  return 'DonationModel(id: $id, donner: $donner, subjectName: $subjectName, expireAt: $expireAt, createdAt: $createdAt, quantity: $quantity, description: $description, sector: $sector)';
}


}

/// @nodoc
abstract mixin class $DonationModelCopyWith<$Res>  {
  factory $DonationModelCopyWith(DonationModel value, $Res Function(DonationModel) _then) = _$DonationModelCopyWithImpl;
@useResult
$Res call({
 int id, String donner,@JsonKey(name: 'subject_name') String subjectName,@JsonKey(name: 'expire_at') String expireAt,@JsonKey(name: 'created_at') String createdAt, int quantity, String description, SectorMode? sector
});


$SectorModeCopyWith<$Res>? get sector;

}
/// @nodoc
class _$DonationModelCopyWithImpl<$Res>
    implements $DonationModelCopyWith<$Res> {
  _$DonationModelCopyWithImpl(this._self, this._then);

  final DonationModel _self;
  final $Res Function(DonationModel) _then;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? donner = null,Object? subjectName = null,Object? expireAt = null,Object? createdAt = null,Object? quantity = null,Object? description = null,Object? sector = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,donner: null == donner ? _self.donner : donner // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,expireAt: null == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,sector: freezed == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as SectorMode?,
  ));
}
/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorModeCopyWith<$Res>? get sector {
    if (_self.sector == null) {
    return null;
  }

  return $SectorModeCopyWith<$Res>(_self.sector!, (value) {
    return _then(_self.copyWith(sector: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String donner, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'expire_at')  String expireAt, @JsonKey(name: 'created_at')  String createdAt,  int quantity,  String description,  SectorMode? sector)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
return $default(_that.id,_that.donner,_that.subjectName,_that.expireAt,_that.createdAt,_that.quantity,_that.description,_that.sector);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String donner, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'expire_at')  String expireAt, @JsonKey(name: 'created_at')  String createdAt,  int quantity,  String description,  SectorMode? sector)  $default,) {final _that = this;
switch (_that) {
case _DonationModel():
return $default(_that.id,_that.donner,_that.subjectName,_that.expireAt,_that.createdAt,_that.quantity,_that.description,_that.sector);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String donner, @JsonKey(name: 'subject_name')  String subjectName, @JsonKey(name: 'expire_at')  String expireAt, @JsonKey(name: 'created_at')  String createdAt,  int quantity,  String description,  SectorMode? sector)?  $default,) {final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
return $default(_that.id,_that.donner,_that.subjectName,_that.expireAt,_that.createdAt,_that.quantity,_that.description,_that.sector);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationModel implements DonationModel {
  const _DonationModel({required this.id, required this.donner, @JsonKey(name: 'subject_name') required this.subjectName, @JsonKey(name: 'expire_at') required this.expireAt, @JsonKey(name: 'created_at') required this.createdAt, required this.quantity, required this.description, required this.sector});
  factory _DonationModel.fromJson(Map<String, dynamic> json) => _$DonationModelFromJson(json);

@override final  int id;
@override final  String donner;
@override@JsonKey(name: 'subject_name') final  String subjectName;
@override@JsonKey(name: 'expire_at') final  String expireAt;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override final  int quantity;
@override final  String description;
@override final  SectorMode? sector;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.donner, donner) || other.donner == donner)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.expireAt, expireAt) || other.expireAt == expireAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.description, description) || other.description == description)&&(identical(other.sector, sector) || other.sector == sector));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,donner,subjectName,expireAt,createdAt,quantity,description,sector);

@override
String toString() {
  return 'DonationModel(id: $id, donner: $donner, subjectName: $subjectName, expireAt: $expireAt, createdAt: $createdAt, quantity: $quantity, description: $description, sector: $sector)';
}


}

/// @nodoc
abstract mixin class _$DonationModelCopyWith<$Res> implements $DonationModelCopyWith<$Res> {
  factory _$DonationModelCopyWith(_DonationModel value, $Res Function(_DonationModel) _then) = __$DonationModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String donner,@JsonKey(name: 'subject_name') String subjectName,@JsonKey(name: 'expire_at') String expireAt,@JsonKey(name: 'created_at') String createdAt, int quantity, String description, SectorMode? sector
});


@override $SectorModeCopyWith<$Res>? get sector;

}
/// @nodoc
class __$DonationModelCopyWithImpl<$Res>
    implements _$DonationModelCopyWith<$Res> {
  __$DonationModelCopyWithImpl(this._self, this._then);

  final _DonationModel _self;
  final $Res Function(_DonationModel) _then;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? donner = null,Object? subjectName = null,Object? expireAt = null,Object? createdAt = null,Object? quantity = null,Object? description = null,Object? sector = freezed,}) {
  return _then(_DonationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,donner: null == donner ? _self.donner : donner // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,expireAt: null == expireAt ? _self.expireAt : expireAt // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,sector: freezed == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as SectorMode?,
  ));
}

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorModeCopyWith<$Res>? get sector {
    if (_self.sector == null) {
    return null;
  }

  return $SectorModeCopyWith<$Res>(_self.sector!, (value) {
    return _then(_self.copyWith(sector: value));
  });
}
}

// dart format on
