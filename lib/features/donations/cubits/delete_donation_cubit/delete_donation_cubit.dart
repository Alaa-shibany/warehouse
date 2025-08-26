import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import '../../repo/donations_repository.dart';
import '../../models/delete_donation_model.dart';

part 'delete_donation_state.dart';
part 'delete_donation_cubit.freezed.dart';

class DeleteDonationCubit extends Cubit<DeleteDonationState> {
  final DonationsRepository _repository;
  final _cancelToken = CancelToken();

  DeleteDonationCubit(this._repository) : super(const DeleteDonationState());

  Future<void> deleteDonation({required int id}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.deleteDonation(id: id);
    result.fold(
      (failure) => emit(
        state.copyWith(status: SubmissionStatus.error, failure: failure),
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
