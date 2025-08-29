import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:dio/dio.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import 'package:warehouse/core/services/failure_services.dart';
import '../../repo/register_requests_repository.dart';
import '../../../categories/models/single_donation_model.dart';

part 'show_donation_state.dart';
part 'show_donation_cubit.freezed.dart';

class ShowDonationCubit extends Cubit<ShowDonationState> {
  final RegisterRequestsRepository _repository;
  final _cancelToken = CancelToken();

  ShowDonationCubit(this._repository) : super(const ShowDonationState());

  Future<void> showDonation({required int id}) async {
    emit(state.copyWith(status: SubmissionStatus.loading));
    final result = await _repository.showDonation(id: id);
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
