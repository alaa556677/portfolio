import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';

class RowInformationWidget extends StatelessWidget {
  final IconData? icon;
  final String value;
  final String? stringIcon;
  final void Function()? onTap;

  const RowInformationWidget({
    super.key,
    this.icon,
    required this.value,
    this.stringIcon,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.textSecondary(context),
              width: 1,
            ),
          ),
          child: stringIcon != null ? PortfolioManager.text(TextModel(
            text: stringIcon!,
            style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
              color: AppColors.textSecondary(context),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          )) : icon != null ? Icon(icon, color: AppColors.textSecondary(context), size: 20,) : Image.asset("assets/images/github.png", color: AppColors.textSecondary(context), width: 20, height: 20,),
        ),
        SizedBox(width: 12,),
        InkWell(
          onTap: onTap,
          child: PortfolioManager.text(TextModel(
            text: value,
            style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
              color: AppColors.textSecondary(context),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )),
        ),
      ],
    );
  }
}
