part of 'get_categories_cubit.dart';

@freezed
abstract class GetCategoriesState with _$GetCategoriesState {
  const factory GetCategoriesState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    List<CategoryModel>? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
