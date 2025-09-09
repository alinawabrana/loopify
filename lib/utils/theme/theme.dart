import 'package:flutter/material.dart';
import 'package:loopify/utils/theme/custom_themes/bottom_app_bar_theme.dart';
import 'package:loopify/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:loopify/utils/theme/custom_themes/form_field_theme.dart';
import 'package:loopify/utils/theme/custom_themes/icon_theme.dart';
import 'package:loopify/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:loopify/utils/theme/custom_themes/text_button_theme.dart';
import 'package:loopify/utils/theme/custom_themes/text_theme.dart';

class ATheme {
  static ThemeData lightModeTheme = ThemeData(
    iconTheme: AIconsTheme.lightIconTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AOutlinedButtonTheme.lightOutlinedButtonTheme,
    textButtonTheme: ATextButtonTheme.lightTextButtonTheme,
    bottomAppBarTheme: ABottomAppBarTheme.lightBottomAppBarTheme,
    textTheme: ATextTheme.lightTextTheme,
    inputDecorationTheme: AFormFieldThemes.lightFormFieldTheme,
    brightness: Brightness.light,
  );
}
