import 'package:flutter/material.dart';

import '../../../models/expense.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.isWide,
    required this.onSave,
    required this.selectedCategory,
    required this.onCategoryChanged,
  });

  final bool isWide;
  final VoidCallback onSave;
  final Category selectedCategory;
  final Function(Category?) onCategoryChanged;

  @override
  Widget build(BuildContext context) {
    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: onSave, child: const Text('Save Expense')),
          Spacer(),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
        ],
      );
    }
    return Row(
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
        const Spacer(),
        ElevatedButton(onPressed: onSave, child: const Text('Save Expense')),
        const SizedBox(width: 10),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancel'),
        ),
      ],
    );
  }
}
