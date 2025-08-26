import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_request_body_model.freezed.dart';
part 'create_category_request_body_model.g.dart';

@freezed
abstract class CreateCategoryRequestBodyModel with _$CreateCategoryRequestBodyModel {
  const factory CreateCategoryRequestBodyModel({
    required String name,
  }) = _CreateCategoryRequestBodyModel;

  factory CreateCategoryRequestBodyModel.fromJson(Map<String, dynamic> json) => _$CreateCategoryRequestBodyModelFromJson(json);
}
