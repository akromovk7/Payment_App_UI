import 'package:flutter/material.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';

class AppTheme {
  static ThemeData get apptheme => ThemeData(
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(ConsColors.kBackgroundColor))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(ConsColors.kPrimaryColor))),
      colorScheme: ColorScheme.light(
          primary: ConsColors.kPrimaryColor, brightness: Brightness.light));
}