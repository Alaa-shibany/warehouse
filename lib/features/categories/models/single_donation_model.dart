import 'distribution_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_donation_model.freezed.dart';
part 'single_donation_model.g.dart';

@freezed
abstract class SingleDonationModel with _$SingleDonationModel {
  const factory SingleDonationModel({
    required int id,
    required String name,
    required String? description,
    @JsonKey(name: 'addition_date') required String createdAt,
    @JsonKey(name: 'expiry_date') required String? expiryDate,
    required String? donor,
    required String unit,
    required int amount,
    required List<DistributionModel> distributions,
  }) = _SingleDonationModel;

  factory SingleDonationModel.fromJson(Map<String, dynamic> json) => _$SingleDonationModelFromJson(json);
}
