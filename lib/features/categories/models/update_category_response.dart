import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_category_response.freezed.dart';
part 'update_category_response.g.dart';

@freezed
abstract class UpdateCategoryResponse with _$UpdateCategoryResponse {
  const factory UpdateCategoryResponse({required String message}) =
      _UpdateCategoryResponse;

  factory UpdateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateCategoryResponseFromJson(json);
}
