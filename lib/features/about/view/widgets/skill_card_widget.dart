import 'package:flutter/material.dart';
import 'package:portfolio/core/styles/colors.dart';
import '../../../../core/app_constants.dart';
import '../../../../core/widgets/border_style.dart';
import '../../../../core/widgets/custom_text.dart';

class SkillCardWidget extends StatelessWidget {
  final String text;
  const SkillCardWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getBorderStyle(context),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 8),
      child: CustomTextWidget(text: text, fontSize: AppConstants.informationFontSize, fontColor: AppColors.textSecondaryColor(context)),
    );
  }
}
