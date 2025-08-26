import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_response.freezed.dart';
part 'create_category_response.g.dart';

@freezed
abstract class CreateCategoryResponse with _$CreateCategoryResponse {
  const factory CreateCategoryResponse({required String message}) =
      _CreateCategoryResponse;

  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);
}
