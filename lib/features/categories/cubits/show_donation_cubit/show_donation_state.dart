part of 'show_donation_cubit.dart';

@freezed
abstract class ShowDonationState with _$ShowDonationState {
  const factory ShowDonationState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    SingleDonationModel? data,
    Failure? failure,
  }) = _CreateTeacherState; 
}