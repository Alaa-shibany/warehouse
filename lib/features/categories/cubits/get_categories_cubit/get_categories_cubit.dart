import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import '../../repo/categories_repository.dart';
import '../../models/category_model.dart';

part 'get_categories_state.dart';
part 'get_categories_cubit.freezed.dart';

class GetCategoriesCubit extends Cubit<GetCategoriesState> {
  final CategoriesRepository _repository;
  final _cancelToken = CancelToken();

  GetCategoriesCubit(this._repository) : super(const GetCategoriesState());
  final searchController = TextEditingController();

  Future<void> getCategories() async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.getCategories(name: searchController.text);
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: SubmissionStatus.success,
          data: [
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
            CategoryModel(id: 1, name: 'Category name'),
          ],
          failure: failure,
        ),
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
