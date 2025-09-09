import 'package:flutter/material.dart';

class ProductOverview extends StatelessWidget {
  const ProductOverview({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleLarge),
        Text(description, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
