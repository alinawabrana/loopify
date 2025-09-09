import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class FormFieldLabel extends StatelessWidget {
  const FormFieldLabel({
    super.key,
    required this.label,
    this.isRequired = true,
  });

  final String label;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: AColors.secondaryTextColor,
          height: 1.1,
        ),
        children: [
          if (isRequired)
            WidgetSpan(
              alignment: PlaceholderAlignment.top, // aligns with the top
              child: Text("*", style: TextStyle(color: Colors.red)),
            ),
        ],
      ),
    );
  }
}
