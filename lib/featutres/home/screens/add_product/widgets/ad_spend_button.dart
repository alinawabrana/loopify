import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class AdSpendButtons extends StatelessWidget {
  const AdSpendButtons({
    super.key,
    required this.isSelected,
    this.onTap,
    required this.adSpendLabel,
  });

  final bool isSelected;
  final VoidCallback? onTap;
  final String adSpendLabel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: isSelected ? 2 : 1,
            color: isSelected
                ? AColors.primaryColor
                : AColors.textFormFieldHintTextColor,
          ),
        ),
        child: Text(
          adSpendLabel,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: isSelected ? AColors.primaryColor : null,
          ),
        ),
      ),
    );
  }
}
