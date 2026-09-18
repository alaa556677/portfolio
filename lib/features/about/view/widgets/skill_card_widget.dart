import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import 'section_decorations.dart';

class SkillCardWidget extends StatelessWidget {
  final String text;
  const SkillCardWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: getBorderStyle(context),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 8),
      child: PortfolioManager.text(TextModel(
        text: text,
        style: PortfolioManager.style(textType: TextTypes.badge12).copyWith(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: AppColors.textSecondary(context),
        ),
      )),
    );
  }
}
