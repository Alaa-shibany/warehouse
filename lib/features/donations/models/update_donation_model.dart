import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_donation_model.freezed.dart';
part 'update_donation_model.g.dart';

@freezed
abstract class UpdateDonationModel with _$UpdateDonationModel {
  const factory UpdateDonationModel({
    required String message,
  }) = _UpdateDonationModel;

  factory UpdateDonationModel.fromJson(Map<String, dynamic> json) => _$UpdateDonationModelFromJson(json);
}
