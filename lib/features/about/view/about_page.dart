import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import 'package:portfolio/features/about/view/widgets/skill_card_widget.dart';
import '../logic/about_cubit.dart';
import '../logic/about_states.dart';
import 'widgets/feature_widget.dart';
import 'widgets/section_decorations.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AboutCubit>()..loadAbout(),
      child: BlocBuilder<AboutCubit, AboutStates>(
        builder: (context, state) {
          final aboutModel = state.aboutState.data;
          if (!state.aboutState.isSuccess || aboutModel == null) {
            return PortfolioManager.loadingWidget();
          }
          return Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeatureWidget(
                    title: "Professional Summary",
                    fontSize: 20,
                    isSubTitle: false,
                    titleColor: AppColors.textColor,
                    widgetValue: Column(
                      children: aboutModel.about.map((e) => Padding(
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
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 70, vertical: 20),
                    child: DividerWidget(),
                  ),
                  FeatureWidget(
                    title: "Core Technical Skills",
                    fontSize: 20,
                    isSubTitle: false,
                    titleColor: AppColors.textColor,
                    widgetValue: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        FeatureWidget(
                          title: "Languages & Frameworks",
                          widgetValue: Wrap(
                            runSpacing: 12,
                            spacing: 6,
                            children: aboutModel.frameworks.map((e) => SkillCardWidget(text: e)).toList(),
                          ),
                        ),
                        SizedBox(height: 16,),
                        FeatureWidget(
                          title: "State Management",
                          widgetValue: Wrap(
                            runSpacing: 12,
                            spacing: 6,
                            children: aboutModel.stateManagement.map((e) => SkillCardWidget(text: e)).toList(),
                          ),
                        ),
                        SizedBox(height: 16,),
                        FeatureWidget(
                          title: "Databases & Storage",
                          widgetValue: Wrap(
                            runSpacing: 12,
                            spacing: 6,
                            children: aboutModel.database.map((e) => SkillCardWidget(text: e)).toList(),
                          ),
                        ),
                        SizedBox(height: 16,),
                        FeatureWidget(
                          title: "Architecture & Patterns",
                          widgetValue: Wrap(
                            runSpacing: 12,
                            spacing: 6,
                            children: aboutModel.architecture.map((e) => SkillCardWidget(text: e)).toList(),
                          ),
                        ),
                        SizedBox(height: 16,),
                        FeatureWidget(
                          title: "Tools & Platforms",
                          widgetValue: Wrap(
                            runSpacing: 12,
                            spacing: 6,
                            children: aboutModel.tools.map((e) => SkillCardWidget(text: e)).toList(),
                          ),
                        ),
                        SizedBox(height: 16,),
                        FeatureWidget(
                          title: "Testing & Quality",
                          widgetValue: Wrap(
                            runSpacing: 12,
                            spacing: 6,
                            children: aboutModel.testing.map((e) => SkillCardWidget(text: e)).toList(),
                          ),
                        ),
                        SizedBox(height: 16,),
                        FeatureWidget(
                          title: "Other Skills",
                          widgetValue: Wrap(
                            runSpacing: 12,
                            spacing: 6,
                            children: aboutModel.otherSkills.map((e) => SkillCardWidget(text: e)).toList(),
                          ),
                        ),
                      ],
                    )
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 70, vertical: 20),
                    child: DividerWidget(),
                  ),
                  FeatureWidget(
                    title: "Education",
                    isSubTitle: false,
                    titleColor: AppColors.textColor,
                    fontSize: 22,
                    widgetValue: Container(
                      decoration: getBorderStyle(context),
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 46,
                            height: 46,
                            alignment: Alignment.center,
                            decoration: getBorderStyle(context, radius: 8, containerColor: AppColors.textSecondary(context)),
                            child: PortfolioManager.text(TextModel(
                              text: "CS",
                              style: PortfolioManager.style(textType: TextTypes.cardTitle20).copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textTransparent,
                              ),
                            )),
                          ),
                          SizedBox(width: 16,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                PortfolioManager.text(TextModel(
                                  text: aboutModel.education?.title ?? '',
                                  style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                    color: AppColors.textSecondary(context),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                                SizedBox(height: 10,),
                                PortfolioManager.text(TextModel(
                                  text: aboutModel.education?.location ?? '',
                                  style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                    color: AppColors.textSecondary(context),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                                SizedBox(height: 10,),
                                PortfolioManager.text(TextModel(
                                  text: aboutModel.education?.year ?? '',
                                  style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                    color: AppColors.textSecondary(context),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  FeatureWidget(
                    title: "Languages",
                    isSubTitle: false,
                    titleColor: AppColors.textColor,
                    fontSize: 20,
                    widgetValue: Container(
                      decoration: getBorderStyle(context),
                      width: double.infinity,
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (aboutModel.languages ?? []).map((e) =>Padding(
                          padding: EdgeInsetsDirectional.symmetric(vertical: 6),
                          child: PortfolioManager.text(TextModel(
                            text: "${e.language} : ${e.level}",
                            style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                              color: AppColors.textSecondary(context),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                        )).toList(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(horizontal: 70, vertical: 20),
                    child: DividerWidget(),
                  ),
                  FeatureWidget(
                    title: "Personal Interests",
                    isSubTitle: false,
                    titleColor: AppColors.textColor,
                    fontSize: 20,
                    widgetValue: Wrap(
                      runSpacing: 12,
                      spacing: 6,
                      children: aboutModel.interests.map((e) => SkillCardWidget(text: e)).toList(),
                    ),
                  ),
                  SizedBox(height: 12,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
