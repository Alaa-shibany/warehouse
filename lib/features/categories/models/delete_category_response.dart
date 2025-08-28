import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_category_response.freezed.dart';
part 'delete_category_response.g.dart';

@freezed
abstract class DeleteCategoryResponse with _$DeleteCategoryResponse {
  const factory DeleteCategoryResponse({required String message}) =
      _DeleteCategoryResponse;

  factory DeleteCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryResponseFromJson(json);
}
