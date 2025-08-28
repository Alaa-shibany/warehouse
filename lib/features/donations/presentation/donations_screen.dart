import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:warehouse/features/donations/cubits/get_donations_cubit/get_donations_cubit.dart';
import 'package:warehouse/features/donations/models/donation_model.dart';
import 'package:warehouse/features/donations/presentation/components/donation_list_item.dart';
import 'package:warehouse/features/donations/presentation/components/donations_filter_panel.dart';
import 'package:warehouse/features/donations/presentation/components/manage_donation_dialog.dart';
import 'package:warehouse/l10n/app_localizations.dart';
import 'package:warehouse/shared/dialogs/delete_dailogs.dart';

class DonationsScreen extends StatefulWidget {
  const DonationsScreen({super.key});

  @override
  State<DonationsScreen> createState() => _DonationsScreenState();
}

class _DonationsScreenState extends State<DonationsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final donationsCubit = context.read<GetDonationsCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: DonationsFilterPanel(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: BlocBuilder<GetDonationsCubit, GetDonationsState>(
                    builder: (context, state) {
                      return TextField(
                        controller: donationsCubit.nameController,
                        onSubmitted: (value) {
                          donationsCubit.pagingController.refresh();
                        },
                        decoration: InputDecoration(
                          hintText:
                              '${translator.search} ${translator.subjects}...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: () {
                    showManageDonationDialog(context, donationsCubit);
                  },
                  icon: const Icon(Icons.add),
                  label: Text(translator.add_new),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),

                const SizedBox(width: 8),

                BlocBuilder<GetDonationsCubit, GetDonationsState>(
                  builder: (context, state) {
                    return Badge(
                      isLabelVisible: state.badgeCount > 0,
                      label: Text(state.badgeCount.toString()),
                      child: IconButton.filled(
                        onPressed: () =>
                            _scaffoldKey.currentState?.openEndDrawer(),
                        icon: const Icon(Icons.filter_list),
                        tooltip: 'Advanced Filters',
                      ),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 24),
            Expanded(
              child: BlocListener<GetDonationsCubit, GetDonationsState>(
                listener: (context, state) {},
                child: PagingListener(
                  controller: donationsCubit.pagingController,
                  builder: (context, state, fetchNextPage) =>
                      PagedListView<int, DonationModel>(
                        padding: EdgeInsets.zero,
                        state: state,
                        fetchNextPage: fetchNextPage,
                        builderDelegate: PagedChildBuilderDelegate(
                          itemBuilder: (context, item, index) =>
                              DonationListItem(
                                donationItem: item,
                                onEdit: () {
                                  showManageDonationDialog(
                                    context,
                                    donationsCubit,
                                    donation: item,
                                  );
                                },
                                onDelete: () {
                                  showDeleteConfirmationDialog(
                                    context,
                                    item.subjectName,
                                    () {},
                                  );
                                },
                              ),
                        ),
                      ),
                ),
              ).animate().fade(duration: const Duration(milliseconds: 500)),
            ),
          ],
        ),
      ),
    );
  }
}
