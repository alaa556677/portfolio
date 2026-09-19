import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';

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
    return PortfolioManager.button(ButtonModel(
      text: buttonName,
      onTap: onTap,
      height: 38,
      buttonColor: buttonColor ?? AppColors.textSecondary(context),
      radius: 20,
      style: PortfolioManager.style(textType: TextTypes.buttonTextMedium14).copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: AppColors.textTransparent,
      ),
    ));
  }
}
