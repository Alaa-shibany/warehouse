import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_donation_model.freezed.dart';
part 'delete_donation_model.g.dart';

@freezed
abstract class DeleteDonationModel with _$DeleteDonationModel {
  const factory DeleteDonationModel({
    required String message,
  }) = _DeleteDonationModel;

  factory DeleteDonationModel.fromJson(Map<String, dynamic> json) => _$DeleteDonationModelFromJson(json);
}
