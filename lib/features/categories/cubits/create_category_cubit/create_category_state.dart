part of 'create_category_cubit.dart';

@freezed
abstract class CreateCategoryState with _$CreateCategoryState {
  const factory CreateCategoryState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreateCategoryResponse? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}