import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AFormFieldThemes {
  static InputDecorationTheme lightFormFieldTheme = InputDecorationTheme(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AColors.textFormFieldHintTextColor,
        width: 1,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AColors.textFormFieldHintTextColor,
        width: 1,
      ),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: AColors.textFormFieldHintTextColor,
        width: 1,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.redAccent, width: 1),
    ),
  );
}
