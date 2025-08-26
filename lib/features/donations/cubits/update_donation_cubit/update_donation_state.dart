part of 'update_donation_cubit.dart';

@freezed
abstract class UpdateDonationState with _$UpdateDonationState {
  const factory UpdateDonationState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    UpdateDonationModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}