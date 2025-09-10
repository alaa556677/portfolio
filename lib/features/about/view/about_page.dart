import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/core/styles/colors.dart';
import 'package:portfolio/core/widgets/custom_text.dart';
import 'package:portfolio/core/widgets/divider_widget.dart';
import 'package:portfolio/core/widgets/loading_widget.dart';
import 'package:portfolio/features/about/model/about_model.dart';
import 'package:portfolio/features/about/view/widgets/skill_card_widget.dart';
import '../../../core/app_constants.dart';
import '../../../core/states.dart';
import '../../../core/widgets/border_style.dart';
import '../../../core/widgets/custom_rich.dart';
import '../controller/about_controller.dart';
import 'widgets/feature_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});
  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final AboutController aboutController = Get.find();
  AboutModel? aboutModel;

  @override
  void initState() {
    aboutController.loadAbout().then((info) {
      setState(() {
        aboutModel = info;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return aboutController.aboutStates.value == RequestState.success ? Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeatureWidget(
              title: "Professional Summary",
              fontSize: AppConstants.titleFontSize,
              isSubTitle: false,
              titleColor: AppColors.textColor,
              widgetValue: Column(
                children: aboutModel!.about.map((e) => Padding(
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
                        ),
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
              fontSize: AppConstants.titleFontSize,
              isSubTitle: false,
              titleColor: AppColors.textColor,
              widgetValue: Padding(
                padding: EdgeInsetsDirectional.only(start: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,),
                    FeatureWidget(
                      title: "Languages & Frameworks",
                      widgetValue: Wrap(
                        runSpacing: 12,
                        spacing: 6,
                        children: aboutModel!.frameworks.map((e) => SkillCardWidget(text: e)).toList(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    FeatureWidget(
                      title: "State Management",
                      widgetValue: Wrap(
                        runSpacing: 12,
                        spacing: 6,
                        children: aboutModel!.stateManagement.map((e) => SkillCardWidget(text: e)).toList(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    FeatureWidget(
                      title: "Databases & Storage",
                      widgetValue: Wrap(
                        runSpacing: 12,
                        spacing: 6,
                        children: aboutModel!.database.map((e) => SkillCardWidget(text: e)).toList(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    FeatureWidget(
                      title: "Architecture & Patterns",
                      widgetValue: Wrap(
                        runSpacing: 12,
                        spacing: 6,
                        children: aboutModel!.architecture.map((e) => SkillCardWidget(text: e)).toList(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    FeatureWidget(
                      title: "Tools & Platforms",
                      widgetValue: Wrap(
                        runSpacing: 12,
                        spacing: 6,
                        children: aboutModel!.tools.map((e) => SkillCardWidget(text: e)).toList(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    FeatureWidget(
                      title: "Testing & Quality",
                      widgetValue: Wrap(
                        runSpacing: 12,
                        spacing: 6,
                        children: aboutModel!.testing.map((e) => SkillCardWidget(text: e)).toList(),
                      ),
                    ),
                    SizedBox(height: 16,),
                    FeatureWidget(
                      title: "Other Skills",
                      widgetValue: Wrap(
                        runSpacing: 12,
                        spacing: 6,
                        children: aboutModel!.otherSkills.map((e) => SkillCardWidget(text: e)).toList(),
                      ),
                    ),
                  ],
                ),
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
                      decoration: getBorderStyle(context, radius: 8, containerColor: AppColors.textSecondaryColor(context)),
                      child: CustomTextWidget(text: "CS", fontSize: AppConstants.titleFontSize, fontColor: AppColors.textTransparent,),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextWidget(
                            text: aboutModel!.education!.title,
                            fontColor: AppColors.textSecondaryColor(context),
                            fontSize: AppConstants.educationalFontSize,
                          ),
                          SizedBox(height: 10,),
                          CustomTextWidget(
                            text: aboutModel!.education!.location,
                            fontColor: AppColors.textSecondaryColor(context),
                            fontSize: AppConstants.educationalFontSize,
                          ),
                          SizedBox(height: 10,),
                          CustomTextWidget(
                            text: aboutModel!.education!.year,
                            fontColor: AppColors.textSecondaryColor(context),
                            fontSize: AppConstants.educationalFontSize,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24,),
            FeatureWidget(
              title: "Personal Interests",
              isSubTitle: false,
              titleColor: AppColors.textColor,
              fontSize: AppConstants.titleFontSize,
              widgetValue: Wrap(
                runSpacing: 12,
                spacing: 6,
                children: aboutModel!.interests.map((e) => SkillCardWidget(text: e)).toList(),
              ),
            ),
            SizedBox(height: 12,),
          ],
        ),
      ),
    ) : LoadingWidget();
  }
}
