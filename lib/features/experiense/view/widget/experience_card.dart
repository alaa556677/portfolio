import 'package:flutter/material.dart';
import 'package:portfolio/core/app_constants.dart';
import 'package:portfolio/core/styles/colors.dart';
import 'package:portfolio/core/widgets/border_style.dart';
import 'package:portfolio/core/widgets/custom_text.dart';
import '../../../about/view/widgets/feature_widget.dart';
import '../../../about/view/widgets/skill_card_widget.dart';
import '../../model/experience_model.dart';

class ExperienceCard extends StatelessWidget {
  final Experience? experience;
  const ExperienceCard({super.key, required this.experience});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 16),
      decoration: getBorderStyle(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: getBorderStyle(context, radius: 8, containerColor: AppColors.textSecondaryColor(context)),
            child: CustomTextWidget(text: experience!.company[0], fontSize: AppConstants.titleFontSize, fontColor: AppColors.textTransparent,),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextWidget(
                      text: experience!.jobTitle,
                      fontSize: AppConstants.titleFontSize,
                      fontColor: AppColors.textColor,
                    ),
                    if(experience!.company == "Dexef ERP")...[
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.textSecondaryColor(context),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 4),
                        child: CustomTextWidget(text: "current", fontSize: AppConstants.personalInformationFontSize, fontColor: AppColors.textTransparent,),
                      )
                    ]
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.work, color: AppColors.textSecondaryColor(context), size: 18,),
                    SizedBox(width: 6,),
                    CustomTextWidget(
                      text: experience!.company,
                      fontSize: AppConstants.tabTitleFontSize,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.location_on, color: AppColors.textSecondaryColor(context), size: 18,),
                    SizedBox(width: 6,),
                    CustomTextWidget(
                      text: experience!.location,
                      fontSize: AppConstants.tabTitleFontSize,
                    ),
                    SizedBox(width: 30,),
                    Icon(Icons.access_time, color: AppColors.textSecondaryColor(context), size: 18,),
                    SizedBox(width: 6,),
                    CustomTextWidget(
                      text: "${experience!.dateFrom} - ${experience!.dateTo}",
                      fontSize: AppConstants.tabTitleFontSize,
                    ),
                  ],
                ),
                SizedBox(height: 14,),
                FeatureWidget(
                  title: "Key Responsibilities",
                  fontSize: AppConstants.tabTitleFontSize,
                  isSubTitle: false,
                  widgetValue: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: experience!.skills.map((e) => Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 9),
                            child: Icon(Icons.circle, size: 10, color: AppColors.textColor),
                          ),
                          SizedBox(width: 14,),
                          Expanded(
                            child: CustomTextWidget(
                              text: e,
                              fontColor: AppColors.textSecondaryColor(context),
                              fontSize: 15,
                              height: 1.8,
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                    )).toList(),
                  ),
                ),
                SizedBox(height: 14,),
                FeatureWidget(
                  title: "Personal Interests",
                  isSubTitle: false,
                  fontSize: AppConstants.tabTitleFontSize,
                  widgetValue: Wrap(
                    runSpacing: 12,
                    spacing: 6,
                    children: experience!.technology.map((e) => SkillCardWidget(text: e)).toList(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
