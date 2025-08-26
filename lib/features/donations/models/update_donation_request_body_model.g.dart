// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_donation_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateDonationRequestBodyModel _$UpdateDonationRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _UpdateDonationRequestBodyModel(
  id: (json['id'] as num).toInt(),
  donner: json['donner'] as String,
  quantity: (json['quantity'] as num).toInt(),
  description: json['description'] as String,
  expired_at: json['expired_at'] as String,
);

Map<String, dynamic> _$UpdateDonationRequestBodyModelToJson(
  _UpdateDonationRequestBodyModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'donner': instance.donner,
  'quantity': instance.quantity,
  'description': instance.description,
  'expired_at': instance.expired_at,
};
