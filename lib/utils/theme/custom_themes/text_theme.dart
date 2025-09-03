import 'package:flutter/material.dart';
import 'package:loopify/utils/constants/colors.dart';

class ATextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displaySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AColors.headingTextColor,
      height: 1.1,
    ),
    displayMedium: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AColors.headingTextColor,
      height: 1.1,
    ),
    displayLarge: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      height: 1.1,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AColors.headingTextColor,
      height: 1.2,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AColors.headingTextColor,
      height: 1.2,
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AColors.headingTextColor,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: AColors.primaryTextColor,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AColors.headingTextColor,
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: AColors.headingTextColor,
      height: 1.1,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AColors.secondaryTextColor,
      height: 1.1,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AColors.primaryTextColor,
      height: 1.1,
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AColors.primaryTextColor,
      height: 1.1,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AColors.secondaryTextColor,
      height: 1.1,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AColors.primaryTextColor,
      height: 1.2,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AColors.primaryTextColor,
      height: 1.2,
    ),
  );
}
