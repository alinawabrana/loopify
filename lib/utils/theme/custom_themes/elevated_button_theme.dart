import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AElevatedButtonTheme {
  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AColors.primaryColor,
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: 0.06 * 14,
          ),
          padding: EdgeInsets.symmetric(vertical: 18),
          side: BorderSide(color: Colors.transparent),
          shape: RoundedRectangleBorder(),
          elevation: 0,
          foregroundColor: Colors.white,
          disabledBackgroundColor: AColors.disableGreenButtonColor,
          disabledForegroundColor: AColors.disableGreenButtonForegroundColor,
        ),
      );
}
