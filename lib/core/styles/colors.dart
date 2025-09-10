import 'package:flutter/material.dart';

class AppColors{
  static Color textColor = AppColors.whiteColor.withOpacity(.7);
  static Color textSecondaryColor(BuildContext context) {
    return Theme.of(context).colorScheme.outline;
  }
  static const Color primaryColor = Color(0xFF371A39);
  static const Color whiteColor = Colors.white;
  static const Color transparent = Colors.transparent;
  static Color textTransparent = Colors.black.withOpacity(.6);
}