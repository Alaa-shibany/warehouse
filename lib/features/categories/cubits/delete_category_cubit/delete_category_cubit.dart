import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import 'package:warehouse/features/categories/models/delete_category_response.dart';
import '../../repo/categories_repository.dart';

part 'delete_category_state.dart';
part 'delete_category_cubit.freezed.dart';

class DeleteCategoryCubit extends Cubit<DeleteCategoryState> {
  final CategoriesRepository _repository;
  final _cancelToken = CancelToken();

  DeleteCategoryCubit(this._repository) : super(const DeleteCategoryState());

  Future<void> deleteCategory({required int id}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.deleteCategory(id: id);
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
