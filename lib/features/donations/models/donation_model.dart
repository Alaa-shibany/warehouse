// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/features/categories/models/category_model.dart';

part 'donation_model.freezed.dart';
part 'donation_model.g.dart';

@freezed
abstract class DonationModel with _$DonationModel {
  const factory DonationModel({
    required int id,
    @JsonKey(name: 'donor') required String? donner,
    @JsonKey(name: 'name') required String subjectName,
    @JsonKey(name: 'expiry_date') required String? expireAt,
    @JsonKey(name: 'addition_date') required String createdAt,
    @JsonKey(name: 'amount') required int quantity,
    required String description,
    required String unit,
    @JsonKey(name: 'category') required CategoryModel category,
  }) = _DonationModel;

  factory DonationModel.fromJson(Map<String, dynamic> json) =>
      _$DonationModelFromJson(json);
}
