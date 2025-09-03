import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AOutlinedButtonTheme {
  static OutlinedButtonThemeData lightOutlinedButtonTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 19),
          side: BorderSide(color: AColors.primaryColor, width: 1),
          shape: RoundedRectangleBorder(),
          elevation: 0,
          foregroundColor: AColors.headingTextColor,
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 0.06 * 14,
          ),
        ),
      );
}
