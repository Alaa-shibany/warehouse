import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_donation_model.freezed.dart';
part 'create_donation_model.g.dart';

@freezed
abstract class CreateDonationModel with _$CreateDonationModel {
  const factory CreateDonationModel({
    required String message,
  }) = _CreateDonationModel;

  factory CreateDonationModel.fromJson(Map<String, dynamic> json) => _$CreateDonationModelFromJson(json);
}
