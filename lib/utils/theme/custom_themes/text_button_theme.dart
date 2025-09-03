import 'package:flutter/material.dart';
import 'package:loopify/utils/constants/colors.dart';

class ATextButtonTheme {
  static TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(),
      foregroundColor: AColors.primaryColor,
      textStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.06 * 14,
      ),
    ),
  );
}
