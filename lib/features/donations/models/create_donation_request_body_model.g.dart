// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_donation_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDonationRequestBodyModel _$CreateDonationRequestBodyModelFromJson(
  Map<String, dynamic> json,
) => _CreateDonationRequestBodyModel(
  name: json['name'] as String,
  donner: json['donor'] as String,
  quantity: (json['amount'] as num).toInt(),
  categoryId: (json['category_id'] as num).toInt(),
  unit: json['unit'] as String,
  description: json['description'] as String,
  expired_at: json['expired_at'] as String,
);

Map<String, dynamic> _$CreateDonationRequestBodyModelToJson(
  _CreateDonationRequestBodyModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'donor': instance.donner,
  'amount': instance.quantity,
  'category_id': instance.categoryId,
  'unit': instance.unit,
  'description': instance.description,
  'expired_at': instance.expired_at,
};
