import 'package:flutter/material.dart';

class AppColors{
  static Color textColor = AppColors.whiteColor.withOpacity(.8);
  // static Color textColorSecondary = AppColors.whiteColor.withOpacity(.8);
  static Color textSecondaryColor(BuildContext context) {
    // return Theme.of(context).colorScheme.outline;
    return AppColors.whiteColor.withOpacity(.65);
  }
  static const Color gradientColor1 = Color(0xFF0F2027);
  // static const Color gradientColor1 = Color(0xFF000000);
  static const Color gradientColor2 = Color(0xFF203A43);
  // static const Color gradientColor2 = Color(0xFF434343);
  static const Color gradientColor3 = Color(0xFF2C5364);
  static const Color whiteColor = Colors.white;
  static const Color blackColor = Colors.black;
  static const Color transparent = Colors.transparent;
  static Color textTransparent = Colors.black.withOpacity(.6);
  static Color errorBorder = Colors.red;
}