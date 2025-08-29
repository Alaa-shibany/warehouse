// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SingleDonationModel _$SingleDonationModelFromJson(Map<String, dynamic> json) =>
    _SingleDonationModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: json['addition_date'] as String,
      expiryDate: json['expiry_date'] as String?,
      donor: json['donor'] as String?,
      unit: json['unit'] as String,
      amount: (json['amount'] as num).toInt(),
      distributions: (json['distributions'] as List<dynamic>)
          .map((e) => DistributionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SingleDonationModelToJson(
  _SingleDonationModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'addition_date': instance.createdAt,
  'expiry_date': instance.expiryDate,
  'donor': instance.donor,
  'unit': instance.unit,
  'amount': instance.amount,
  'distributions': instance.distributions,
};
