import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warehouse/features/donations/cubits/get_donations_cubit/get_donations_cubit.dart';

class DonationsFilterPanel extends StatelessWidget {
  const DonationsFilterPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final donationsCubit = context.read<GetDonationsCubit>();

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Advanced Filters',
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(height: 32),

            TextField(
              controller: donationsCubit.expireController,
              decoration: InputDecoration(
                labelText: 'Filter by expire date',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: donationsCubit.donnerController,
              decoration: InputDecoration(
                labelText: 'Filter by donner name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: donationsCubit.nameController,
              decoration: InputDecoration(
                labelText: 'Filter by donation name',

                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            const Spacer(),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      donationsCubit.refreshFilters();
                    },
                    child: const Text('Clear'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      donationsCubit.pagingController.refresh();
                    },
                    child: const Text('Apply'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
