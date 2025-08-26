import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import '../../repo/donations_repository.dart';
import '../../models/update_donation_model.dart';
import '../../models/update_donation_request_body_model.dart';

part 'update_donation_state.dart';
part 'update_donation_cubit.freezed.dart';

class UpdateDonationCubit extends Cubit<UpdateDonationState> {
  final DonationsRepository _repository;
  final _cancelToken = CancelToken();

  UpdateDonationCubit(this._repository) : super(const UpdateDonationState());

  Future<void> updateDonation({
    required UpdateDonationRequestBodyModel body,
    required int id,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.updateDonation(body: body, id: id);
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
