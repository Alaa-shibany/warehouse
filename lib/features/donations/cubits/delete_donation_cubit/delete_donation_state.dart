part of 'delete_donation_cubit.dart';

@freezed
abstract class DeleteDonationState with _$DeleteDonationState {
  const factory DeleteDonationState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    DeleteDonationModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}