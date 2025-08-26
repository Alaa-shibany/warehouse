part of 'create_donation_cubit.dart';

@freezed
abstract class CreateDonationState with _$CreateDonationState {
  const factory CreateDonationState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    CreateDonationModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}