import 'package:flutter/material.dart';
import '../app_constants.dart';
import '../styles/colors.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color? buttonColor;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    required this.buttonName,
    this.buttonColor,
    this.onTap
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.textSecondaryColor(context),
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 4),
        alignment: Alignment.center,
        child: CustomTextWidget(
          text: buttonName,
          fontSize: AppConstants.personalInformationFontSize,
          fontColor: AppColors.textTransparent,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
