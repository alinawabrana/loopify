import 'package:flutter/material.dart';
import 'package:loopify/utils/constants/colors.dart';

class ABottomAppBarTheme {
  static BottomAppBarTheme lightBottomAppBarTheme = BottomAppBarTheme(
    color: AColors.primaryBackgroundColor,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    shape: AutomaticNotchedShape(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      CircleBorder(),
    ),
  );
}
