part of 'update_category_cubit.dart';

@freezed
abstract class UpdateCategoryState with _$UpdateCategoryState {
  const factory UpdateCategoryState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    UpdateCategoryResponse? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}