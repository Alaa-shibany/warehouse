part of 'delete_category_cubit.dart';

@freezed
abstract class DeleteCategoryState with _$DeleteCategoryState {
  const factory DeleteCategoryState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    DeleteCategoryResponse? data,
    Failure? failure,
  }) = _CreateTeacherState;
}
