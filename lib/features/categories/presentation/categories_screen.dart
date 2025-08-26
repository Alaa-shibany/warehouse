import 'package:warehouse/core/services/status.dart';
import 'package:warehouse/features/categories/cubits/get_categories_cubit/get_categories_cubit.dart';
import 'package:warehouse/features/categories/presentation/components/category_list_item.dart';
import 'package:warehouse/features/categories/presentation/components/manage_category_dialog.dart';

import 'package:warehouse/l10n/app_localizations.dart';
import 'package:warehouse/shared/components/error_widget.dart';
import 'package:warehouse/shared/components/loading_widget.dart';
import 'package:warehouse/shared/dialogs/delete_dailogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categoriesCubit = context.read<GetCategoriesCubit>();
    final translator = AppLocalizations.of(context)!;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 15,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: categoriesCubit.searchController,
                    onSubmitted: (value) {
                      categoriesCubit.getCategories();
                    },
                    decoration: InputDecoration(
                      hintText:
                          '${translator.search} ${translator.categories}...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton.icon(
                  onPressed: () {
                    showManageCategoryDialog(context, categoriesCubit);
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
              ],
            ),
            BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
              builder: (context, state) {
                return state.status == SubmissionStatus.loading
                    ? LoadingWidget()
                    : state.status == SubmissionStatus.error
                    ? ShowErrorWidget(
                        onPressed: () async {
                          await categoriesCubit.getCategories();
                        },
                      )
                    : state.data!.isEmpty
                    ? Text('No data')
                    : Expanded(
                        child:
                            ListView.builder(
                                  itemCount: state.data!.length,
                                  itemBuilder: (context, index) {
                                    final item = state.data![index];
                                    return CategoryListItem(
                                      categoryItem: item,
                                      onEdit: () {
                                        showManageCategoryDialog(
                                          context,
                                          categoriesCubit,
                                          category: item,
                                        );
                                      },
                                      onDelete: () {
                                        showDeleteConfirmationDialog(
                                          context,
                                          item.name,
                                          () {},
                                        );
                                      },
                                    );
                                  },
                                )
                                .animate()
                                .fade(
                                  duration: const Duration(milliseconds: 500),
                                )
                                .slideY(
                                  begin: 0.1,
                                  end: 0,
                                  duration: const Duration(milliseconds: 300),
                                ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
