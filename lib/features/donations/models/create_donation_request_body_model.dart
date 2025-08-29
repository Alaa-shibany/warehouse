// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_donation_request_body_model.freezed.dart';
part 'create_donation_request_body_model.g.dart';

@freezed
abstract class CreateDonationRequestBodyModel
    with _$CreateDonationRequestBodyModel {
  const factory CreateDonationRequestBodyModel({
    required String name,
    @JsonKey(name: 'donor') required String donner,
    @JsonKey(name: 'amount') required int quantity,
    @JsonKey(name: 'category_id') required int categoryId,
    required String unit,
    required String description,
    required String expired_at,
  }) = _CreateDonationRequestBodyModel;

  factory CreateDonationRequestBodyModel.fromJson(Map<String, dynamic> json) =>
      _$CreateDonationRequestBodyModelFromJson(json);
}
