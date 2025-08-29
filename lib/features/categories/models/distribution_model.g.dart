// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distribution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DistributionModel _$DistributionModelFromJson(Map<String, dynamic> json) =>
    _DistributionModel(
      id: (json['id'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      distributionId: (json['distributable_id'] as num).toInt(),
      extractionNumber: json['extraction_number'] as String?,
      distributedAt: json['distributed_at'] as String?,
    );

Map<String, dynamic> _$DistributionModelToJson(_DistributionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'distributable_id': instance.distributionId,
      'extraction_number': instance.extractionNumber,
      'distributed_at': instance.distributedAt,
    };
