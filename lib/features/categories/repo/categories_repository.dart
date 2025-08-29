import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/api_services.dart';
import 'package:warehouse/core/services/end_points.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import 'package:warehouse/core/services/failure_services.dart';
import 'package:warehouse/features/categories/models/delete_category_response.dart';
import '../models/category_model.dart';
import '../models/create_category_response.dart';
import '../models/create_category_request_body_model.dart';
import '../models/update_category_response.dart';
import '../models/update_category_request_body_model.dart';

class CategoriesRepository {
  final ApiService _apiService;

  CategoriesRepository(this._apiService);

  Future<Either<Failure, List<CategoryModel>>> getCategories({
    required String name,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_categories_all,
        queryParams: {'name': name},
      );
      final jsonList = response.data['data'] as List;
      final data = jsonList.map((e) => CategoryModel.fromJson(e)).toList();

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, CreateCategoryResponse>> createCategory({
    required CreateCategoryRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.dashboard_categories_create,
        data: body.toJson(),
      );

      final data = CreateCategoryResponse.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, UpdateCategoryResponse>> updateCategory({
    required int id,
    required UpdateCategoryRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.put(
        "${EndPoints.dashboard_categories_update}/$id",
        data: body.toJson(),
      );

      final data = UpdateCategoryResponse.fromJson(response.data);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, DeleteCategoryResponse?>> deleteCategory({
    required int id,
  }) async {
    try {
      final response = await _apiService.delete(
        "${EndPoints.dashboard_categories_delete}/$id",
        data: {},
      );
      final data = DeleteCategoryResponse.fromJson(response.data);
      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
