import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import '../../../about/view/widgets/feature_widget.dart';
import '../../../about/view/widgets/section_decorations.dart';
import '../../../about/view/widgets/skill_card_widget.dart';
import '../../data/model/experience_model.dart';

class ExperienceCard extends StatelessWidget {
  final Experience? experience;
  final bool isMobile;
  const ExperienceCard({super.key, required this.experience, required this.isMobile});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 16),
      decoration: getBorderStyle(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(!isMobile)...[
            Container(
              width: 46,
              height: 46,
              alignment: Alignment.center,
              decoration: getBorderStyle(context, radius: 8, containerColor: AppColors.textSecondary(context)),
              child: PortfolioManager.text(TextModel(
                text: experience!.company[0],
                style: PortfolioManager.style(textType: TextTypes.cardTitle20).copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textTransparent,
                ),
              )),
            ),
            SizedBox(width: 20,),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: PortfolioManager.text(TextModel(
                        text: experience!.jobTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      )),
                    ),
                    if(experience!.company == "Dexef ERP")...[
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.textSecondary(context),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 4),
                        child: PortfolioManager.text(TextModel(
                          text: "Current",
                          style: PortfolioManager.style(textType: TextTypes.badge12).copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textTransparent,
                          ),
                        )),
                      )
                    ]
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.work, color: AppColors.textSecondary(context), size: 18,),
                    SizedBox(width: 6,),
                    PortfolioManager.text(TextModel(
                      text: experience!.company,
                      style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                      ),
                    )),
                  ],
                ),
                SizedBox(height: 10,),
                if(isMobile)...[
                  Row(
                    children: [
                      Icon(Icons.access_time, color: AppColors.textSecondary(context), size: 18,),
                      SizedBox(width: 6,),
                      PortfolioManager.text(TextModel(
                        text: "${experience!.dateFrom} - ${experience!.dateTo}",
                        style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
                Row(
                  children: [
                    Icon(Icons.location_on, color: AppColors.textSecondary(context), size: 18,),
                    SizedBox(width: 6,),
                    PortfolioManager.text(TextModel(
                      text: experience!.location,
                      style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColor,
                      ),
                    )),
                    if(!isMobile)...[
                      SizedBox(width: 30,),
                      Icon(Icons.access_time, color: AppColors.textSecondary(context), size: 18,),
                      SizedBox(width: 6,),
                      PortfolioManager.text(TextModel(
                        text: "${experience!.dateFrom} - ${experience!.dateTo}",
                        style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      )),
                    ]
                  ],
                ),
                SizedBox(height: 14,),
                FeatureWidget(
                  title: "Key Responsibilities",
                  fontSize: 16,
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
                            child: PortfolioManager.text(TextModel(
                              text: e,
                              maxLines: 2,
                              style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                color: AppColors.textSecondary(context),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                height: 1.8,
                              ),
                            )),
                          )
                        ],
                      ),
                    )).toList(),
                  ),
                ),
                SizedBox(height: 14,),
                FeatureWidget(
                  title: "Technology Used",
                  isSubTitle: false,
                  fontSize: 16,
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
