import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import 'form_field_label.dart';

class PrimaryTextFormField extends StatelessWidget {
  const PrimaryTextFormField({
    super.key,
    required this.label,
    required this.controller,
    this.isRequired = true,
    this.maxLines,
    this.validator,
    this.onChange,
  });

  final String label;
  final TextEditingController controller;
  final bool isRequired;
  final int? maxLines;
  final String? Function(String?)? validator;
  final Function(String?)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUnfocus,
      focusNode: FocusNode(),
      onTapOutside: (PointerDownEvent event) {
        FocusScope.of(context).unfocus();
      },
      controller: controller,
      style: Theme.of(context).textTheme.labelMedium,
      cursorColor: AColors.primaryTextColor,
      maxLines: maxLines,
      scrollPhysics: NeverScrollableScrollPhysics(),
      decoration: InputDecoration(
        label: FormFieldLabel(label: label, isRequired: isRequired),
      ),
      onChanged: onChange,
      validator: validator,
    );
  }
}
