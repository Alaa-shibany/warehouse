import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/core/model/pagination_model.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:warehouse/core/services/failure_service/failure.dart';
import 'package:warehouse/features/donations/models/sector_mode.dart';

import '../../repo/donations_repository.dart';
import '../../models/donation_model.dart';

part 'get_donations_state.dart';
part 'get_donations_cubit.freezed.dart';

class GetDonationsCubit extends Cubit<GetDonationsState> {
  final DonationsRepository _repository;

  final expireController = TextEditingController();
  final donnerController = TextEditingController();
  final nameController = TextEditingController();

  final sectorController = TextEditingController();

  GetDonationsCubit(this._repository) : super(const GetDonationsState());

  late final pagingController = PagingController<int, DonationModel>(
    getNextPageKey: (state) =>
        state.lastPageIsEmpty ? null : state.nextIntPageKey,
    fetchPage: (pageKey) => _fetchPage(pageKey),
  );

  final _cancelToken = CancelToken();

  void refreshFilters() {
    expireController.clear();
    donnerController.clear();
    sectorController.clear();
    nameController.clear();
    pagingController.refresh();
  }

  late final List<TextEditingController> controllers;

  Future<void> initState() async {
    controllers = [
      expireController,
      donnerController,
      sectorController,
      nameController,
    ];
    for (final controller in controllers) {
      controller.addListener(_updateBadgeCount);
    }
  }

  void _updateBadgeCount() {
    int count = 0;
    for (final controller in controllers) {
      if (controller.text.isNotEmpty) {
        count++;
      }
    }
    print('We are here');
    emit(state.copyWith(badgeCount: count));
  }

  Future<List<DonationModel>> _fetchPage(int pageKey) async {
    final result = await _repository.getDonations(
      page: pageKey,
      expire: expireController.text,
      donner: donnerController.text,
      sector: state.selectedSector == null ? -1 : state.selectedSector!.id,
    );
    return result.fold((failure) {
      emit(state.copyWith(status: SubmissionStatus.error, failure: failure));
      return [];
    }, (paginationData) => paginationData.items);
  }

  @override
  Future<void> close() {
    pagingController.dispose();
    _cancelToken.cancel('Cubit was closed');
    return super.close();
  }
}
