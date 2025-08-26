import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import '../../repo/categories_repository.dart';
import '../../models/create_category_response.dart';
import '../../models/create_category_request_body_model.dart';

part 'create_category_state.dart';
part 'create_category_cubit.freezed.dart';

class CreateCategoryCubit extends Cubit<CreateCategoryState> {
  final CategoriesRepository _repository;
  final _cancelToken = CancelToken();

  CreateCategoryCubit(this._repository) : super(const CreateCategoryState());

  Future<void> createCategory({
    required CreateCategoryRequestBodyModel body,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createCategory(body: body);
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
