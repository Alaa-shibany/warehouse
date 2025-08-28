import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warehouse/core/services/service_locator.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:warehouse/features/donations/cubits/create_donation_cubit/create_donation_cubit.dart';

import 'package:warehouse/features/donations/cubits/get_donations_cubit/get_donations_cubit.dart';
import 'package:warehouse/features/donations/cubits/update_donation_cubit/update_donation_cubit.dart';
import 'package:warehouse/features/donations/models/create_donation_request_body_model.dart';
import 'package:warehouse/features/donations/models/donation_model.dart';
import 'package:warehouse/features/donations/presentation/components/donation_details.dart';
import 'package:warehouse/l10n/app_localizations.dart';
import 'package:warehouse/shared/dialogs/loading_dialog.dart'; // Import the new widget

void showManageDonationDialog(
  BuildContext context,
  GetDonationsCubit donationsCubit, {
  DonationModel? donation,
}) {
  final isEditing = donation != null;
  final translator = AppLocalizations.of(context)!;
  final _formKey = GlobalKey<FormState>();

  // == Controllers ==
  final _donnerController = TextEditingController(
    text: isEditing ? donation.donner : '',
  );
  final _subjectNameController = TextEditingController(
    text: isEditing ? donation.subjectName : '',
  );
  final _quantityController = TextEditingController(
    text: isEditing ? donation.quantity.toString() : '',
  );
  final _descriptionController = TextEditingController(
    text: isEditing ? donation.description : '',
  );
  final ValueNotifier<DateTime?> _expireAtNotifier = ValueNotifier(
    isEditing ? DateTime.parse(donation.expireAt) : null,
  );

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: translator.manage_donation,
    transitionDuration: const Duration(milliseconds: 400),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<CreateDonationCubit>()),
          BlocProvider(create: (context) => sl<UpdateDonationCubit>()),
        ],
        child: ScaleTransition(
          scale: Tween<double>(
            begin: 0.9,
            end: 1.0,
          ).animate(CurvedAnimation(parent: anim1, curve: Curves.easeOutCubic)),
          child: FadeTransition(
            opacity: anim1,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Text(
                isEditing ? "Edit donation" : "Create donation",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 800,
                    maxHeight: 650,
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                        vertical: 12.0,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DonationDetails(
                              donnerController: _donnerController,
                              subjectNameController: _subjectNameController,
                              quantityController: _quantityController,
                              descriptionController: _descriptionController,
                              expireAtNotifier: _expireAtNotifier,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(translator.cancel),
                ),
                BlocConsumer<CreateDonationCubit, CreateDonationState>(
                  listener: (context, state) {
                    if (state.status == SubmissionStatus.loading) {
                      showLoadingDialog(context);
                    } else if (state.status == SubmissionStatus.error) {
                      context.pop();
                      state.failure!.handle(context, onRetry: () {});
                    } else if (state.status == SubmissionStatus.success) {
                      context.pop();
                      context.pop();
                      donationsCubit.pagingController.refresh();
                    }
                  },
                  builder: (context, state) {
                    return FilledButton.icon(
                      label: Text(translator.save),
                      onPressed: () {
                        if (_formKey.currentState!.validate() &&
                            _expireAtNotifier.value != null) {
                          final body = CreateDonationRequestBodyModel(
                            donner: _donnerController.text,
                            name: _subjectNameController.text,
                            quantity: int.parse(_quantityController.text),
                            description: _descriptionController.text,
                            expired_at: _expireAtNotifier.value!
                                .toIso8601String(),
                          );
                          context.read<CreateDonationCubit>().createDonation(
                            body: body,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please fill all required fields.'),
                            ),
                          );
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
