import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_category_request_body_model.freezed.dart';
part 'update_category_request_body_model.g.dart';

@freezed
abstract class UpdateCategoryRequestBodyModel with _$UpdateCategoryRequestBodyModel {
  const factory UpdateCategoryRequestBodyModel({
    required String name,
  }) = _UpdateCategoryRequestBodyModel;

  factory UpdateCategoryRequestBodyModel.fromJson(Map<String, dynamic> json) => _$UpdateCategoryRequestBodyModelFromJson(json);
}
