import 'package:flutter/material.dart';
import 'package:portfolio/core/widgets/border_style.dart';
import '../../../../core/app_constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/container_image.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../model/projects_model.dart';

class ProjectCard extends StatelessWidget {
  final Projects projects;
  const ProjectCard({super.key, required this.projects});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      // height: 360,
      decoration: getBorderStyle(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ContainerImage(
            // width: double.infinity,
            height: 200,
            imageUrl: projects.imageUrl!,
            topLeft: 18,
            topRight: 18,
          ),
          SizedBox(height: 12,),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: projects.projectName,
                  fontSize: AppConstants.titleFontSize,
                  fontColor: AppColors.textColor,
                ),
                SizedBox(height: 12,),
                Column(
                  children: projects.information!.map((e) => Padding(
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
                SizedBox(height: 12,),
                Row(
                  children: [
                    if(projects.googleLink != "")...[
                      Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                            child: CustomButton(buttonName: "Android",),
                          )
                      ),
                    ],
                    if(projects.appleLink != "")...[
                      Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                            child: CustomButton(buttonName: "IOS",),
                          )
                      ),
                    ],
                    if(projects.webLink != "")...[
                      Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                            child: CustomButton(buttonName: "Web",),
                          )
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 12,),
        ],
      ),
    );
  }
}
