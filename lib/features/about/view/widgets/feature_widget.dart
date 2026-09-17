import 'package:flutter/material.dart';
import 'package:portfolio/core_old/styles/colors.dart';
import '../../../../core_old/app_constants.dart';
import '../../../../core_old/widgets/custom_text.dart';

class FeatureWidget extends StatelessWidget {
  final String title;
  final Widget widgetValue;
  final double? fontSize;
  final Color? titleColor;
  final bool isSubTitle;

  const FeatureWidget({super.key,
    required this.title,
    required this.widgetValue,
    this.fontSize,
    this.titleColor,
    this.isSubTitle = true
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if(isSubTitle)...[
              Icon(Icons.circle, size: 10, color: AppColors.textColor),
              SizedBox(width: 8,),
            ],
            CustomTextWidget(
              text: title,
              fontColor: titleColor ?? AppColors.textSecondaryColor(context),
              fontSize: fontSize ??  AppConstants.subTitleFontSize,
              fontWeight: titleColor != null ? FontWeight.w600 : FontWeight.w400,
            ),
          ],
        ),
        SizedBox(height: 16,),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 20),
          child: widgetValue,
        )
      ],
    );
  }
}
