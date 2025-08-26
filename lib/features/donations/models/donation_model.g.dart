// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DonationModel _$DonationModelFromJson(Map<String, dynamic> json) =>
    _DonationModel(
      id: (json['id'] as num).toInt(),
      donner: json['donner'] as String,
      subjectName: json['subject_name'] as String,
      expireAt: json['expire_at'] as String,
      createdAt: json['created_at'] as String,
      quantity: (json['quantity'] as num).toInt(),
      description: json['description'] as String,
      sector: json['sector'] == null
          ? null
          : SectorMode.fromJson(json['sector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DonationModelToJson(_DonationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'donner': instance.donner,
      'subject_name': instance.subjectName,
      'expire_at': instance.expireAt,
      'created_at': instance.createdAt,
      'quantity': instance.quantity,
      'description': instance.description,
      'sector': instance.sector,
    };
