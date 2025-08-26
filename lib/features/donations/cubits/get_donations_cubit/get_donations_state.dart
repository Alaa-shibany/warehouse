part of 'get_donations_cubit.dart';

@freezed
abstract class GetDonationsState with _$GetDonationsState {
  const factory GetDonationsState({
    @Default(SubmissionStatus.initial) SubmissionStatus status,
    PaginationModel<DonationModel>? data,
    Failure? failure,
    @Default(0) int badgeCount,
    SectorMode? selectedSector,
  }) = _CreateTeacherState;
}
