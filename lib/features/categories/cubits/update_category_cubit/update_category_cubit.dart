import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import '../../repo/categories_repository.dart';
import '../../models/update_category_response.dart';
import '../../models/update_category_request_body_model.dart';

part 'update_category_state.dart';
part 'update_category_cubit.freezed.dart';

class UpdateCategoryCubit extends Cubit<UpdateCategoryState> {
  final CategoriesRepository _repository;
  final _cancelToken = CancelToken();

  UpdateCategoryCubit(this._repository) : super(const UpdateCategoryState());

  Future<void> updateCategory({
    required UpdateCategoryRequestBodyModel body,
    required int id,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.updateCategory(body: body, id: id);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
      ),
      (data) =>
          emit(state.copyWith(status: SubmissionStatus.success, data: data)),
    );
  }

  @override
  Future<void> close() {
    _cancelToken.cancel('Cubit was closed');
    return super.close();
  }
}
