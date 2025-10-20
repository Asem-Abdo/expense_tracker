import 'package:flutter/material.dart';

class TitleAmount extends StatelessWidget {
  const TitleAmount({
    super.key,
    required this.amountController,
    required this.titleController,
    required this.isWide,
  });

  final TextEditingController titleController;
  final TextEditingController amountController;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    if (isWide) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextField(
              controller: titleController,
              maxLength: 50,
              decoration: const InputDecoration(label: Text('Title')),
            ),
          ),
          const SizedBox(width: 30),
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
        ],
      );
    }
    return TextField(
      controller: titleController,
      maxLength: 50,
      decoration: const InputDecoration(label: Text('Title')),
    );
  }
}
