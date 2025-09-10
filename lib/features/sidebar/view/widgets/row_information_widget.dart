import 'package:flutter/material.dart';
import '../../../../core/app_constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/custom_text.dart';

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
              color: AppColors.textSecondaryColor(context),
              width: 1,
            ),
          ),
          child: stringIcon != null ?  CustomTextWidget(
            text: stringIcon,
            fontColor: AppColors.textSecondaryColor(context),
            fontSize: 18,
          ): icon != null ? Icon(icon, color: AppColors.textSecondaryColor(context), size: 20,) : Image.asset("assets/images/github.png", color: AppColors.textSecondaryColor(context), width: 20, height: 20,),
        ),
        SizedBox(width: 12,),
        InkWell(
          onTap: onTap,
          child: CustomTextWidget(
            text: value,
            // fontColor: Colors.white,
            fontSize: AppConstants.personalInformationFontSize,
          ),
        ),
      ],
    );
  }
}
