import 'package:flutter/material.dart';

import '../../../models/expense.dart';

class CategoryDatePickerSection extends StatelessWidget {
  const CategoryDatePickerSection({
    super.key,
    required this.isWide,
    required this.selectedCategory,
    required this.onCategoryChanged,
    required this.selectedDate,
    required this.onPickData,
    required this.amountController,
  });

  final bool isWide;
  final Category selectedCategory;
  final Function(Category?) onCategoryChanged;
  final DateTime? selectedDate;
  final VoidCallback onPickData;
  final TextEditingController amountController;

  @override
  Widget build(BuildContext context) {
    final dateText = selectedDate == null
        ? 'No date selected'
        : formatter.format(selectedDate!);

    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButton(
            value: selectedCategory,
            items: Category.values
                .map(
                  (category) => DropdownMenuItem(
                    value: category,
                    child: Text(category.name.toUpperCase()),
                  ),
                )
                .toList(),
            onChanged: onCategoryChanged,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(dateText),
                IconButton(
                  onPressed: onPickData,
                  icon: Icon(Icons.calendar_month),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
              prefixText: '\$',
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(dateText),
              IconButton(
                onPressed: onPickData,
                icon: Icon(Icons.calendar_month),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
