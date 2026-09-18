import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';

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
            PortfolioManager.text(TextModel(
              text: title,
              style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                color: titleColor ?? AppColors.textSecondary(context),
                fontSize: fontSize ?? 16,
                fontWeight: titleColor != null ? FontWeight.w600 : FontWeight.w400,
              ),
            )),
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
