import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/helpers/methods.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import '../../../about/view/widgets/section_decorations.dart';
import '../../data/model/projects_model.dart';
import 'container_image.dart';
import 'custom_button.dart';

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
                PortfolioManager.text(TextModel(
                  text: projects.projectName ?? '',
                  style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textColor,
                  ),
                )),
                SizedBox(height: 12,),
                Container(
                  constraints: BoxConstraints(
                    minHeight: (1.8 * 15 * 7) + (3*6)
                  ),
                  child: Column(
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
                SizedBox(height: 12,),
                Row(
                  children: [
                    if(projects.googleLink != "")...[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                          child: CustomButton(
                            buttonName: "Android",
                            onTap: () => openInNewTab(projects.googleLink!),
                          ),
                        )
                      ),
                    ],
                    if(projects.appleLink != "")...[
                      Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                            child: CustomButton(
                              onTap: () => openInNewTab(projects.appleLink!),
                              buttonName: "IOS",
                            ),
                          )
                      ),
                    ],
                    if(projects.webLink != "")...[
                      Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                            child: CustomButton(
                              onTap: () => openInNewTab(projects.webLink!),
                              buttonName: "Web",),
                          )
                      ),
                    ],
                    if(projects.webLink == "" && projects.appleLink == "" && projects.googleLink == "")...[
                      Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(horizontal: 6),
                            child: CustomButton(
                              onTap: (){},
                              buttonName: "Working on it",),
                          )
                      ),
                    ]
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
