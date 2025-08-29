// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'distribution_model.freezed.dart';
part 'distribution_model.g.dart';

@freezed
abstract class DistributionModel with _$DistributionModel {
  const factory DistributionModel({
    required int id,
    required int amount,
    @JsonKey(name: 'distributable_id') required int distributionId,
    @JsonKey(name: 'extraction_number') required String? extractionNumber,
    @JsonKey(name: 'distributed_at') required String? distributedAt,
    @JsonKey(name: 'distributable_type') required String? distributedType,
  }) = _DistributionModel;

  factory DistributionModel.fromJson(Map<String, dynamic> json) =>
      _$DistributionModelFromJson(json);
}
