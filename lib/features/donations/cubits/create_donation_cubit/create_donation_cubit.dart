import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import '../../repo/donations_repository.dart';
import '../../models/create_donation_model.dart';
import '../../models/create_donation_request_body_model.dart';

part 'create_donation_state.dart';
part 'create_donation_cubit.freezed.dart';

class CreateDonationCubit extends Cubit<CreateDonationState> {
  final DonationsRepository _repository;
  final _cancelToken = CancelToken();

  CreateDonationCubit(this._repository) : super(const CreateDonationState());

  Future<void> createDonation({
    required CreateDonationRequestBodyModel body,
  }) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.createDonation(body: body);
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
