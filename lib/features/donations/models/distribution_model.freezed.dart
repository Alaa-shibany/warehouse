// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'distribution_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DistributionModel {

 int get id; int get amount;@JsonKey(name: 'distributable_id') int get distributionId;@JsonKey(name: 'extraction_number') String? get extractionNumber;@JsonKey(name: 'distributed_at') String? get distributedAt;@JsonKey(name: 'distributable_type') String? get distributedType;
/// Create a copy of DistributionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DistributionModelCopyWith<DistributionModel> get copyWith => _$DistributionModelCopyWithImpl<DistributionModel>(this as DistributionModel, _$identity);

  /// Serializes this DistributionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DistributionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.distributionId, distributionId) || other.distributionId == distributionId)&&(identical(other.extractionNumber, extractionNumber) || other.extractionNumber == extractionNumber)&&(identical(other.distributedAt, distributedAt) || other.distributedAt == distributedAt)&&(identical(other.distributedType, distributedType) || other.distributedType == distributedType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,distributionId,extractionNumber,distributedAt,distributedType);

@override
String toString() {
  return 'DistributionModel(id: $id, amount: $amount, distributionId: $distributionId, extractionNumber: $extractionNumber, distributedAt: $distributedAt, distributedType: $distributedType)';
}


}

/// @nodoc
abstract mixin class $DistributionModelCopyWith<$Res>  {
  factory $DistributionModelCopyWith(DistributionModel value, $Res Function(DistributionModel) _then) = _$DistributionModelCopyWithImpl;
@useResult
$Res call({
 int id, int amount,@JsonKey(name: 'distributable_id') int distributionId,@JsonKey(name: 'extraction_number') String? extractionNumber,@JsonKey(name: 'distributed_at') String? distributedAt,@JsonKey(name: 'distributable_type') String? distributedType
});




}
/// @nodoc
class _$DistributionModelCopyWithImpl<$Res>
    implements $DistributionModelCopyWith<$Res> {
  _$DistributionModelCopyWithImpl(this._self, this._then);

  final DistributionModel _self;
  final $Res Function(DistributionModel) _then;

/// Create a copy of DistributionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? amount = null,Object? distributionId = null,Object? extractionNumber = freezed,Object? distributedAt = freezed,Object? distributedType = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,distributionId: null == distributionId ? _self.distributionId : distributionId // ignore: cast_nullable_to_non_nullable
as int,extractionNumber: freezed == extractionNumber ? _self.extractionNumber : extractionNumber // ignore: cast_nullable_to_non_nullable
as String?,distributedAt: freezed == distributedAt ? _self.distributedAt : distributedAt // ignore: cast_nullable_to_non_nullable
as String?,distributedType: freezed == distributedType ? _self.distributedType : distributedType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DistributionModel].
extension DistributionModelPatterns on DistributionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DistributionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DistributionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DistributionModel value)  $default,){
final _that = this;
switch (_that) {
case _DistributionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DistributionModel value)?  $default,){
final _that = this;
switch (_that) {
case _DistributionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int amount, @JsonKey(name: 'distributable_id')  int distributionId, @JsonKey(name: 'extraction_number')  String? extractionNumber, @JsonKey(name: 'distributed_at')  String? distributedAt, @JsonKey(name: 'distributable_type')  String? distributedType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DistributionModel() when $default != null:
return $default(_that.id,_that.amount,_that.distributionId,_that.extractionNumber,_that.distributedAt,_that.distributedType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int amount, @JsonKey(name: 'distributable_id')  int distributionId, @JsonKey(name: 'extraction_number')  String? extractionNumber, @JsonKey(name: 'distributed_at')  String? distributedAt, @JsonKey(name: 'distributable_type')  String? distributedType)  $default,) {final _that = this;
switch (_that) {
case _DistributionModel():
return $default(_that.id,_that.amount,_that.distributionId,_that.extractionNumber,_that.distributedAt,_that.distributedType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int amount, @JsonKey(name: 'distributable_id')  int distributionId, @JsonKey(name: 'extraction_number')  String? extractionNumber, @JsonKey(name: 'distributed_at')  String? distributedAt, @JsonKey(name: 'distributable_type')  String? distributedType)?  $default,) {final _that = this;
switch (_that) {
case _DistributionModel() when $default != null:
return $default(_that.id,_that.amount,_that.distributionId,_that.extractionNumber,_that.distributedAt,_that.distributedType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DistributionModel implements DistributionModel {
  const _DistributionModel({required this.id, required this.amount, @JsonKey(name: 'distributable_id') required this.distributionId, @JsonKey(name: 'extraction_number') required this.extractionNumber, @JsonKey(name: 'distributed_at') required this.distributedAt, @JsonKey(name: 'distributable_type') required this.distributedType});
  factory _DistributionModel.fromJson(Map<String, dynamic> json) => _$DistributionModelFromJson(json);

@override final  int id;
@override final  int amount;
@override@JsonKey(name: 'distributable_id') final  int distributionId;
@override@JsonKey(name: 'extraction_number') final  String? extractionNumber;
@override@JsonKey(name: 'distributed_at') final  String? distributedAt;
@override@JsonKey(name: 'distributable_type') final  String? distributedType;

/// Create a copy of DistributionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DistributionModelCopyWith<_DistributionModel> get copyWith => __$DistributionModelCopyWithImpl<_DistributionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DistributionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DistributionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.distributionId, distributionId) || other.distributionId == distributionId)&&(identical(other.extractionNumber, extractionNumber) || other.extractionNumber == extractionNumber)&&(identical(other.distributedAt, distributedAt) || other.distributedAt == distributedAt)&&(identical(other.distributedType, distributedType) || other.distributedType == distributedType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,amount,distributionId,extractionNumber,distributedAt,distributedType);

@override
String toString() {
  return 'DistributionModel(id: $id, amount: $amount, distributionId: $distributionId, extractionNumber: $extractionNumber, distributedAt: $distributedAt, distributedType: $distributedType)';
}


}

/// @nodoc
abstract mixin class _$DistributionModelCopyWith<$Res> implements $DistributionModelCopyWith<$Res> {
  factory _$DistributionModelCopyWith(_DistributionModel value, $Res Function(_DistributionModel) _then) = __$DistributionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int amount,@JsonKey(name: 'distributable_id') int distributionId,@JsonKey(name: 'extraction_number') String? extractionNumber,@JsonKey(name: 'distributed_at') String? distributedAt,@JsonKey(name: 'distributable_type') String? distributedType
});




}
/// @nodoc
class __$DistributionModelCopyWithImpl<$Res>
    implements _$DistributionModelCopyWith<$Res> {
  __$DistributionModelCopyWithImpl(this._self, this._then);

  final _DistributionModel _self;
  final $Res Function(_DistributionModel) _then;

/// Create a copy of DistributionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? amount = null,Object? distributionId = null,Object? extractionNumber = freezed,Object? distributedAt = freezed,Object? distributedType = freezed,}) {
  return _then(_DistributionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,distributionId: null == distributionId ? _self.distributionId : distributionId // ignore: cast_nullable_to_non_nullable
as int,extractionNumber: freezed == extractionNumber ? _self.extractionNumber : extractionNumber // ignore: cast_nullable_to_non_nullable
as String?,distributedAt: freezed == distributedAt ? _self.distributedAt : distributedAt // ignore: cast_nullable_to_non_nullable
as String?,distributedType: freezed == distributedType ? _self.distributedType : distributedType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
