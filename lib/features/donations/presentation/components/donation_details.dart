import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:warehouse/core/services/status.dart';
import 'package:warehouse/features/categories/cubits/get_categories_cubit/get_categories_cubit.dart';
import 'package:warehouse/features/categories/models/category_model.dart';
import 'package:warehouse/helper/text_feilds.dart';

class DonationDetails extends StatelessWidget {
  const DonationDetails({
    super.key,
    required this.donnerController,
    required this.subjectNameController,
    required this.quantityController,
    required this.descriptionController,
    required this.expireAtNotifier,
    required this.unitController,
    required this.selectedSubject,
    required this.controller,
  });

  final TextEditingController donnerController;
  final TextEditingController subjectNameController;
  final TextEditingController quantityController;
  final TextEditingController descriptionController;
  final TextEditingController unitController;
  final ValueNotifier<CategoryModel?> selectedSubject;
  final SearchController controller;

  final ValueNotifier<DateTime?> expireAtNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSectionHeader(context, 'Donation Details'),
        TextFormField(
          controller: donnerController,
          decoration: buildInputDecoration(
            label: 'Donner Name',
            icon: Icons.person_outline,
          ),
          validator: (v) =>
              (v == null || v.trim().isEmpty) ? 'Please enter a name' : null,
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: subjectNameController,
          decoration: buildInputDecoration(
            label: 'Subject Name',
            icon: Icons.book_outlined,
          ),
          validator: (v) =>
              (v == null || v.trim().isEmpty) ? 'Please enter a subject' : null,
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: quantityController,
                decoration: buildInputDecoration(
                  label: 'Quantity',
                  icon: Icons.numbers_outlined,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextFormField(
                controller: unitController,
                decoration: buildInputDecoration(
                  label: 'Unit',
                  icon: Icons.add_rounded,
                ),
                // keyboardType: TextInputType.number,
                // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildDatePickerField(context, 'Expiry Date', expireAtNotifier),
        const SizedBox(height: 16),
        _buildCategorySelector(selectedSubject, controller),
        const SizedBox(height: 16),
        TextFormField(
          controller: descriptionController,
          decoration: buildInputDecoration(
            label: 'Description',
            icon: Icons.description_outlined,
          ),
          maxLines: 3,
          validator: (v) => (v == null || v.trim().isEmpty)
              ? 'Please enter a description'
              : null,
        ),
      ],
    );
  }

  Widget _buildDatePickerField(
    BuildContext context,
    String label,
    ValueNotifier<DateTime?> dateNotifier,
  ) {
    return ValueListenableBuilder<DateTime?>(
      valueListenable: dateNotifier,
      builder: (context, dateValue, child) {
        final controller = TextEditingController(
          text: dateValue == null
              ? ''
              : DateFormat('yyyy-MM-dd').format(dateValue),
        );
        return TextFormField(
          controller: controller,
          readOnly: true,
          decoration: buildInputDecoration(
            label: label,
            icon: Icons.calendar_today_outlined,
          ),
          onTap: () async {
            final DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: dateValue ?? DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2040),
            );
            if (pickedDate != null) {
              dateNotifier.value = pickedDate;
            }
          },
          validator: (v) =>
              (v == null || v.isEmpty) ? 'Please select a date' : null,
        );
      },
    );
  }

  Widget _buildCategorySelector(
    ValueNotifier<CategoryModel?> selectedSubject,
    SearchController controller,
  ) {
    return BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
      builder: (context, state) {
        if (state.status == SubmissionStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        return ValueListenableBuilder<CategoryModel?>(
          valueListenable: selectedSubject,
          builder: (context, subjectValue, child) {
            return SearchAnchor(
              searchController: controller,
              builder: (context, searchController) {
                return TextFormField(
                  controller: searchController,
                  readOnly: true,
                  decoration: buildInputDecoration(
                    label: 'category',
                    icon: Icons.category,
                  ).copyWith(hintText: subjectValue?.name ?? 'Select Category'),
                  onTap: () => searchController.openView(),
                  validator: (_) =>
                      subjectValue == null ? 'Please select a category' : null,
                );
              },
              suggestionsBuilder: (context, searchController) {
                final filtered =
                    state.data?.where(
                      (s) => s.name.toLowerCase().contains(
                        searchController.text.toLowerCase(),
                      ),
                    ) ??
                    [];
                return filtered.map(
                  (subject) => ListTile(
                    title: Text(subject.name),
                    onTap: () {
                      selectedSubject.value = subject;
                      searchController.closeView(subject.name);
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
