// ignore_for_file: invalid_annotation_target

import 'sector_mode.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_model.freezed.dart';
part 'donation_model.g.dart';

@freezed
abstract class DonationModel with _$DonationModel {
  const factory DonationModel({
    required int id,
    required String donner,
    @JsonKey(name: 'subject_name') required String subjectName,
    @JsonKey(name: 'expire_at') required String expireAt,
    @JsonKey(name: 'created_at') required String createdAt,
    required int quantity,
    required String description,
    required SectorMode? sector,
  }) = _DonationModel;

  factory DonationModel.fromJson(Map<String, dynamic> json) =>
      _$DonationModelFromJson(json);
}
