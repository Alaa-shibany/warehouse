import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/api_services.dart';
import 'package:warehouse/core/services/end_points.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import 'package:warehouse/core/services/failure_services.dart';
import '../models/donation_model.dart';
import '../models/create_donation_model.dart';
import '../models/create_donation_request_body_model.dart';
import '../models/update_donation_model.dart';
import '../models/update_donation_request_body_model.dart';
import '../models/delete_donation_model.dart';
import 'package:warehouse/core/model/pagination_model.dart';

class DonationsRepository {
  final ApiService _apiService;

  DonationsRepository(this._apiService);

  Future<Either<Failure, PaginationModel<DonationModel>>> getDonations({
    required int page,
    required String expire,
    required String donner,
    required int sector,
  }) async {
    try {
      final response = await _apiService.get(
        EndPoints.dashboard_categories_index,
        queryParams: {
          'page': page,
          'expire': expire,
          'donner': donner,
          'sector': sector,
        },
      );

      final items = (response.data['data']['data'] as List)
          .map((i) => DonationModel.fromJson(i))
          .toList();
      final pageSize = response.data['data']['per_page'] as int;
      final isReachMax = response.data['data']['next_page_url'] == null;
      final data = PaginationModel(
        items: items,
        pageSize: pageSize,
        isReachMax: isReachMax,
      );

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, CreateDonationModel>> createDonation({
    required CreateDonationRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.post(
        EndPoints.dashboard_donations_create,
        data: body.toJson(),
      );

      final data = CreateDonationModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, UpdateDonationModel>> updateDonation({
    required int id,
    required UpdateDonationRequestBodyModel body,
  }) async {
    try {
      final response = await _apiService.put(
        "${EndPoints.dashboard_donations_create}/$id",
        data: body.toJson(),
      );

      final data = UpdateDonationModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }

  Future<Either<Failure, DeleteDonationModel>> deleteDonation({
    required int id,
  }) async {
    try {
      final response = await _apiService.delete(
        "${EndPoints.dashboard_donations_delete}/$id",
        data: {},
      );

      final data = DeleteDonationModel.fromJson(response.data['data']);

      return Right(data);
    } on DioException catch (e) {
      return Left(FailureFactory.fromDioException(e));
    } catch (e) {
      return Left(FailureFactory(e.toString()));
    }
  }
}
