// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_donations_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetDonationsState {

 SubmissionStatus get status; PaginationModel<DonationModel>? get data; Failure? get failure; int get badgeCount; SectorMode? get selectedSector;
/// Create a copy of GetDonationsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDonationsStateCopyWith<GetDonationsState> get copyWith => _$GetDonationsStateCopyWithImpl<GetDonationsState>(this as GetDonationsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDonationsState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.badgeCount, badgeCount) || other.badgeCount == badgeCount)&&(identical(other.selectedSector, selectedSector) || other.selectedSector == selectedSector));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure,badgeCount,selectedSector);

@override
String toString() {
  return 'GetDonationsState(status: $status, data: $data, failure: $failure, badgeCount: $badgeCount, selectedSector: $selectedSector)';
}


}

/// @nodoc
abstract mixin class $GetDonationsStateCopyWith<$Res>  {
  factory $GetDonationsStateCopyWith(GetDonationsState value, $Res Function(GetDonationsState) _then) = _$GetDonationsStateCopyWithImpl;
@useResult
$Res call({
 SubmissionStatus status, PaginationModel<DonationModel>? data, Failure? failure, int badgeCount, SectorMode? selectedSector
});


$SectorModeCopyWith<$Res>? get selectedSector;

}
/// @nodoc
class _$GetDonationsStateCopyWithImpl<$Res>
    implements $GetDonationsStateCopyWith<$Res> {
  _$GetDonationsStateCopyWithImpl(this._self, this._then);

  final GetDonationsState _self;
  final $Res Function(GetDonationsState) _then;

/// Create a copy of GetDonationsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,Object? badgeCount = null,Object? selectedSector = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationModel<DonationModel>?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,badgeCount: null == badgeCount ? _self.badgeCount : badgeCount // ignore: cast_nullable_to_non_nullable
as int,selectedSector: freezed == selectedSector ? _self.selectedSector : selectedSector // ignore: cast_nullable_to_non_nullable
as SectorMode?,
  ));
}
/// Create a copy of GetDonationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorModeCopyWith<$Res>? get selectedSector {
    if (_self.selectedSector == null) {
    return null;
  }

  return $SectorModeCopyWith<$Res>(_self.selectedSector!, (value) {
    return _then(_self.copyWith(selectedSector: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetDonationsState].
extension GetDonationsStatePatterns on GetDonationsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTeacherState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTeacherState value)  $default,){
final _that = this;
switch (_that) {
case _CreateTeacherState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTeacherState value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SubmissionStatus status,  PaginationModel<DonationModel>? data,  Failure? failure,  int badgeCount,  SectorMode? selectedSector)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.failure,_that.badgeCount,_that.selectedSector);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SubmissionStatus status,  PaginationModel<DonationModel>? data,  Failure? failure,  int badgeCount,  SectorMode? selectedSector)  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState():
return $default(_that.status,_that.data,_that.failure,_that.badgeCount,_that.selectedSector);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SubmissionStatus status,  PaginationModel<DonationModel>? data,  Failure? failure,  int badgeCount,  SectorMode? selectedSector)?  $default,) {final _that = this;
switch (_that) {
case _CreateTeacherState() when $default != null:
return $default(_that.status,_that.data,_that.failure,_that.badgeCount,_that.selectedSector);case _:
  return null;

}
}

}

/// @nodoc


class _CreateTeacherState implements GetDonationsState {
  const _CreateTeacherState({this.status = SubmissionStatus.initial, this.data, this.failure, this.badgeCount = 0, this.selectedSector});
  

@override@JsonKey() final  SubmissionStatus status;
@override final  PaginationModel<DonationModel>? data;
@override final  Failure? failure;
@override@JsonKey() final  int badgeCount;
@override final  SectorMode? selectedSector;

/// Create a copy of GetDonationsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTeacherStateCopyWith<_CreateTeacherState> get copyWith => __$CreateTeacherStateCopyWithImpl<_CreateTeacherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTeacherState&&(identical(other.status, status) || other.status == status)&&(identical(other.data, data) || other.data == data)&&(identical(other.failure, failure) || other.failure == failure)&&(identical(other.badgeCount, badgeCount) || other.badgeCount == badgeCount)&&(identical(other.selectedSector, selectedSector) || other.selectedSector == selectedSector));
}


@override
int get hashCode => Object.hash(runtimeType,status,data,failure,badgeCount,selectedSector);

@override
String toString() {
  return 'GetDonationsState(status: $status, data: $data, failure: $failure, badgeCount: $badgeCount, selectedSector: $selectedSector)';
}


}

/// @nodoc
abstract mixin class _$CreateTeacherStateCopyWith<$Res> implements $GetDonationsStateCopyWith<$Res> {
  factory _$CreateTeacherStateCopyWith(_CreateTeacherState value, $Res Function(_CreateTeacherState) _then) = __$CreateTeacherStateCopyWithImpl;
@override @useResult
$Res call({
 SubmissionStatus status, PaginationModel<DonationModel>? data, Failure? failure, int badgeCount, SectorMode? selectedSector
});


@override $SectorModeCopyWith<$Res>? get selectedSector;

}
/// @nodoc
class __$CreateTeacherStateCopyWithImpl<$Res>
    implements _$CreateTeacherStateCopyWith<$Res> {
  __$CreateTeacherStateCopyWithImpl(this._self, this._then);

  final _CreateTeacherState _self;
  final $Res Function(_CreateTeacherState) _then;

/// Create a copy of GetDonationsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = freezed,Object? failure = freezed,Object? badgeCount = null,Object? selectedSector = freezed,}) {
  return _then(_CreateTeacherState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SubmissionStatus,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as PaginationModel<DonationModel>?,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,badgeCount: null == badgeCount ? _self.badgeCount : badgeCount // ignore: cast_nullable_to_non_nullable
as int,selectedSector: freezed == selectedSector ? _self.selectedSector : selectedSector // ignore: cast_nullable_to_non_nullable
as SectorMode?,
  ));
}

/// Create a copy of GetDonationsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorModeCopyWith<$Res>? get selectedSector {
    if (_self.selectedSector == null) {
    return null;
  }

  return $SectorModeCopyWith<$Res>(_self.selectedSector!, (value) {
    return _then(_self.copyWith(selectedSector: value));
  });
}
}

// dart format on
