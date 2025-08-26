import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warehouse/core/services/service_locator.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:warehouse/features/categories/cubits/create_category_cubit/create_category_cubit.dart';
import 'package:warehouse/features/categories/cubits/get_categories_cubit/get_categories_cubit.dart';
import 'package:warehouse/features/categories/cubits/update_category_cubit/update_category_cubit.dart';
import 'package:warehouse/features/categories/models/category_model.dart';
import 'package:warehouse/features/categories/models/create_category_request_body_model.dart';
import 'package:warehouse/features/categories/models/update_category_request_body_model.dart';
import 'package:warehouse/l10n/app_localizations.dart';
import 'package:warehouse/shared/dialogs/loading_dialog.dart';

void showManageCategoryDialog(
  BuildContext context,
  GetCategoriesCubit categoriesCubit, {
  CategoryModel? category,
}) {
  final isEditing = category != null;
  final nameController = TextEditingController(
    text: isEditing ? category.name : '',
  );
  final formKey = GlobalKey<FormState>();
  final translator = AppLocalizations.of(context)!;

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: translator.manage_category,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, anim1, anim2) => const SizedBox(),
    transitionBuilder: (context, anim1, anim2, child) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => sl<CreateCategoryCubit>()),
          BlocProvider(create: (context) => sl<UpdateCategoryCubit>()),
        ],
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.9, end: 1.0).animate(anim1),
          child: FadeTransition(
            opacity: anim1,
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              title: Text(
                isEditing
                    ? translator.edit_category
                    : translator.add_new_category,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
              ),
              content: Form(
                key: formKey,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: translator.category_name,
                      hintText: 'e.g., put any name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                    validator: (value) =>
                        value!.trim().isEmpty ? 'Name cannot be empty' : null,
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(translator.cancel),
                ),
                !isEditing
                    ? BlocConsumer<CreateCategoryCubit, CreateCategoryState>(
                        listener: (context, state) {
                          if (state.status == SubmissionStatus.loading) {
                            showLoadingDialog(context);
                          } else if (state.status == SubmissionStatus.error) {
                            Navigator.pop(context);

                            state.failure!.handle(context, onRetry: () {});
                          } else if (state.status == SubmissionStatus.success) {
                            Navigator.pop(context);
                            Navigator.pop(context);

                            categoriesCubit.getCategories();
                          }
                        },
                        builder: (context, state) {
                          return FilledButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context
                                    .read<CreateCategoryCubit>()
                                    .createCategory(
                                      body: CreateCategoryRequestBodyModel(
                                        name: nameController.text,
                                      ),
                                    );
                              }
                            },
                            child: Text(translator.save),
                          );
                        },
                      )
                    : BlocConsumer<UpdateCategoryCubit, UpdateCategoryState>(
                        listener: (context, state) {
                          if (state.status == SubmissionStatus.loading) {
                            showLoadingDialog(context);
                          } else if (state.status == SubmissionStatus.error) {
                            Navigator.pop(context);

                            state.failure!.handle(context, onRetry: () {});
                          } else if (state.status == SubmissionStatus.success) {
                            Navigator.pop(context);
                            Navigator.pop(context);

                            categoriesCubit.getCategories();
                          }
                        },
                        builder: (context, state) {
                          return FilledButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                context
                                    .read<UpdateCategoryCubit>()
                                    .updateCategory(
                                      id: category.id,
                                      body: UpdateCategoryRequestBodyModel(
                                        name: nameController.text,
                                      ),
                                    );
                              }
                            },
                            child: Text(translator.save),
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
