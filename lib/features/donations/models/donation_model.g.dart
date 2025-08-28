// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DonationModel _$DonationModelFromJson(Map<String, dynamic> json) =>
    _DonationModel(
      id: (json['id'] as num).toInt(),
      donner: json['donor'] as String?,
      subjectName: json['name'] as String,
      expireAt: json['expiry_date'] as String?,
      createdAt: json['addition_date'] as String,
      quantity: (json['amount'] as num).toInt(),
      description: json['description'] as String,
      unit: json['unit'] as String,
      categoryId: (json['category_id'] as num).toInt(),
    );

Map<String, dynamic> _$DonationModelToJson(_DonationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'donor': instance.donner,
      'name': instance.subjectName,
      'expiry_date': instance.expireAt,
      'addition_date': instance.createdAt,
      'amount': instance.quantity,
      'description': instance.description,
      'unit': instance.unit,
      'category_id': instance.categoryId,
    };
