import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_donation_request_body_model.freezed.dart';
part 'create_donation_request_body_model.g.dart';

@freezed
abstract class CreateDonationRequestBodyModel with _$CreateDonationRequestBodyModel {
  const factory CreateDonationRequestBodyModel({
    required int id,
    required String donner,
    required int quantity,
    required String description,
    required String expired_at,
  }) = _CreateDonationRequestBodyModel;

  factory CreateDonationRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateDonationRequestBodyModelFromJson(json);
}
