import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warehouse/features/donations/cubits/show_donation_cubit/show_donation_cubit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';
import 'package:warehouse/core/services/service_locator.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:warehouse/features/donations/models/single_donation_model.dart';

// Helper function to launch the dialog
void showDonationDetailsDialog(BuildContext context, int donationId) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (_) => BlocProvider(
      create: (context) =>
          sl<ShowDonationCubit>()..showDonation(id: donationId),
      child: const DonationDetailsDialog(),
    ),
  );
}

class DonationDetailsDialog extends StatelessWidget {
  const DonationDetailsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 700, maxHeight: 650),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Dialog Title
              Text(
                'Donation Details',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 20),
              // Content Area
              Expanded(
                child: BlocBuilder<ShowDonationCubit, ShowDonationState>(
                  builder: (context, state) {
                    if (state.status == SubmissionStatus.loading) {
                      return const _ShimmerLoading();
                    }
                    if (state.status == SubmissionStatus.error) {
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 48,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Failed to load details.',
                              style: GoogleFonts.poppins(fontSize: 16),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              state.failure?.message ??
                                  'An unknown error occurred.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    }
                    if (state.status == SubmissionStatus.success &&
                        state.data != null) {
                      return _DonationDataView(donation: state.data!);
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
              const SizedBox(height: 20),
              // Close Button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Close'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget to display the actual donation data
class _DonationDataView extends StatelessWidget {
  final SingleDonationModel donation;
  const _DonationDataView({required this.donation});

  // Helper to format dates safely
  String _formatDate(String? dateStr) {
    if (dateStr == null || dateStr.isEmpty) return 'N/A';
    try {
      final date = DateTime.parse(dateStr);
      return DateFormat('d MMMM, yyyy').format(date);
    } catch (e) {
      return 'Invalid Date';
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDetailRow(
            Icons.label_important_outline,
            'Name',
            donation.name,
            textTheme,
          ),
          _buildDetailRow(
            Icons.person_outline,
            'Donor',
            donation.donor ?? 'Anonymous',
            textTheme,
          ),
          _buildDetailRow(
            Icons.inventory_2_outlined,
            'Amount',
            '${donation.amount} ${donation.unit}',
            textTheme,
          ),
          _buildDetailRow(
            Icons.date_range_outlined,
            'Date Added',
            _formatDate(donation.createdAt),
            textTheme,
          ),
          _buildDetailRow(
            Icons.event_busy_outlined,
            'Expiry Date',
            _formatDate(donation.expiryDate),
            textTheme,
          ),
          if (donation.description != null && donation.description!.isNotEmpty)
            _buildDetailRow(
              Icons.description_outlined,
              'Description',
              donation.description!,
              textTheme,
            ),

          const Divider(height: 32, thickness: 1),

          Text(
            'Distributions',
            style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Distributions Table
          donation.distributions.isEmpty
              ? const Center(
                  child: Text('No distributions recorded for this item.'),
                )
              : DataTable(
                  columnSpacing: 20,
                  headingRowColor: MaterialStateProperty.all(
                    Colors.grey.shade100,
                  ),
                  columns: const [
                    DataColumn(label: Text('Amount')),
                    DataColumn(label: Text('Extraction No.')),
                    DataColumn(label: Text('Date Distributed')),
                    DataColumn(label: Text('Type')),
                  ],
                  rows: donation.distributions
                      .map(
                        (dist) => DataRow(
                          cells: [
                            DataCell(Text(dist.amount.toString())),
                            DataCell(Text(dist.extractionNumber ?? 'N/A')),
                            DataCell(Text(_formatDate(dist.distributedAt))),
                            DataCell(
                              Text(dist.distributedType!.split('\\').last),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(
    IconData icon,
    String label,
    String value,
    TextTheme textTheme,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.grey.shade600, size: 20),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(flex: 3, child: Text(value, style: textTheme.bodyLarge)),
        ],
      ),
    );
  }
}

// Shimmer loading placeholder widget
class _ShimmerLoading extends StatelessWidget {
  const _ShimmerLoading();

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildShimmerRow(),
            _buildShimmerRow(),
            _buildShimmerRow(width: 120),
            _buildShimmerRow(),
            _buildShimmerRow(width: 150),
            const Divider(height: 32),
            _buildShimmerContainer(height: 24, width: 150),
            const SizedBox(height: 16),
            _buildShimmerContainer(height: 120, width: double.infinity),
          ],
        ),
      ),
    );
  }

  Widget _buildShimmerRow({double? width}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          _buildShimmerContainer(height: 20, width: 20),
          const SizedBox(width: 16),
          _buildShimmerContainer(height: 16, width: 80),
          const SizedBox(width: 50),
          _buildShimmerContainer(height: 16, width: width ?? 200),
        ],
      ),
    );
  }

  Widget _buildShimmerContainer({
    required double height,
    required double width,
  }) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
