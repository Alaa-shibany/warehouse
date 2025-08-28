// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_donation_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDonationRequestBodyModel _$CreateDonationRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateDonationRequestBodyModel(
  name: json['name'] as String,
  donner: json['donner'] as String,
  quantity: (json['quantity'] as num).toInt(),
  description: json['description'] as String,
  expired_at: json['expired_at'] as String,
);

Map<String, dynamic> _$CreateDonationRequestBodyModelToJson(
  _CreateDonationRequestBodyModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'donner': instance.donner,
  'quantity': instance.quantity,
  'description': instance.description,
  'expired_at': instance.expired_at,
};
