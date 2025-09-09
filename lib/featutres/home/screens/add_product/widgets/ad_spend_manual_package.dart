import 'package:flutter/material.dart';

import '../../../../../utils/common/widgets/form_field/form_field_label.dart';
import '../../../../../utils/constants/colors.dart';

class AdSpendManualPackage extends StatelessWidget {
  const AdSpendManualPackage({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormFieldLabel(label: label, isRequired: false),
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AColors.textFormFieldHintTextColor,
              ),
            ),
            child: Flexible(
              child: TextFormField(
                focusNode: FocusNode(),
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                controller: controller,
                cursorColor: AColors.secondaryTextColor,
                style: Theme.of(context).textTheme.bodyMedium,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'Please enter the value';
                  final format = RegExp(r'^[0-9]+$');
                  if (!format.hasMatch(value))
                    return 'Invalid format is entered. The input must be a digit';
                  return null;
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 10),
                  errorBorder: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
