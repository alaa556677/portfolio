import 'package:flutter/material.dart';

class AppColors{
  static Color textColor = AppColors.white.withValues(alpha: .8);
  static Color textHint = AppColors.white.withValues(alpha: .8);
  static Color iconGrey = AppColors.white.withValues(alpha: .8);
  static Color textSecondary(BuildContext context) {
    return AppColors.white.withValues(alpha: .65);
  }
  static const Color gradientColor1 = Color(0xFF0F2027);
  static const Color primary = Color(0xFF0F2027);
  static const Color gradientColor2 = Color(0xFF203A43);
  static const Color gradientColor3 = Color(0xFF2C5364);
  static const Color white = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color transparent = Colors.transparent;
  static Color textTransparent = Colors.black.withValues(alpha: .6);
  static Color error = Colors.red;
}