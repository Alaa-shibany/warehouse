import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_donation_request_body_model.freezed.dart';
part 'update_donation_request_body_model.g.dart';

@freezed
abstract class UpdateDonationRequestBodyModel with _$UpdateDonationRequestBodyModel {
  const factory UpdateDonationRequestBodyModel({
    required int id,
    required String donner,
    required int quantity,
    required String description,
    required String expired_at,
  }) = _UpdateDonationRequestBodyModel;

  factory UpdateDonationRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateDonationRequestBodyModelFromJson(json);
}
