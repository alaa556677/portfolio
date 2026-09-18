import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/helpers/methods.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import '../../about/view/widgets/feature_widget.dart';
import '../data/model/projects_model.dart';
import 'widgets/container_image.dart';
import 'widgets/custom_button.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Projects projects;
  const ProjectDetailsPage({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.gradientColor1, AppColors.gradientColor2],
            stops: [0.6, 1],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                width: 720,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width - 40,
                ),
                padding: EdgeInsetsDirectional.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back,
                            color: AppColors.textColor,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          PortfolioManager.text(
                            TextModel(
                              text: "Back",
                              style:
                                  PortfolioManager.style(
                                    textType: TextTypes.bodyMedium14,
                                  ).copyWith(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ContainerImage(
                      imageUrl: projects.imageUrl ?? '',
                      height: 320,
                      width: double.infinity,
                      topLeft: 18,
                      topRight: 18,
                      bottomLeft: 18,
                      bottomRight: 18,
                    ),
                    if ((projects.imagePaths ?? []).isNotEmpty) ...[
                      SizedBox(height: 12),
                      SizedBox(
                        height: 90,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: projects.imagePaths!.length,
                          separatorBuilder: (_, __) => SizedBox(width: 10),
                          itemBuilder: (context, index) => ContainerImage(
                            imageUrl: projects.imagePaths![index],
                            width: 120,
                            height: 90,
                            topLeft: 12,
                            topRight: 12,
                            bottomLeft: 12,
                            bottomRight: 12,
                          ),
                        ),
                      ),
                    ],
                    SizedBox(height: 24),
                    PortfolioManager.text(
                      TextModel(
                        text: projects.projectName ?? '',
                        style:
                            PortfolioManager.style(
                              textType: TextTypes.bodyMedium14,
                            ).copyWith(
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                              color: AppColors.textColor,
                            ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FeatureWidget(
                      title: "Overview",
                      fontSize: 18,
                      isSubTitle: false,
                      titleColor: AppColors.textColor,
                      widgetValue: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (projects.information ?? [])
                            .map(
                              (e) => Padding(
                                padding: EdgeInsetsDirectional.only(bottom: 8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 9),
                                      child: Icon(
                                        Icons.circle,
                                        size: 10,
                                        color: AppColors.textColor,
                                      ),
                                    ),
                                    SizedBox(width: 14),
                                    Expanded(
                                      child: PortfolioManager.text(
                                        TextModel(
                                          text: e,
                                          style:
                                              PortfolioManager.style(
                                                textType:
                                                    TextTypes.bodyMedium14,
                                              ).copyWith(
                                                color: AppColors.textSecondary(
                                                  context,
                                                ),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                                height: 1.8,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                    SizedBox(height: 28),
                    Row(
                      children: [
                        if ((projects.googleLink ?? "") != "") ...[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 6,
                              ),
                              child: CustomButton(
                                buttonName: "Android",
                                onTap: () => openInNewTab(projects.googleLink!),
                              ),
                            ),
                          ),
                        ],
                        if ((projects.appleLink ?? "") != "") ...[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 6,
                              ),
                              child: CustomButton(
                                buttonName: "IOS",
                                onTap: () => openInNewTab(projects.appleLink!),
                              ),
                            ),
                          ),
                        ],
                        if ((projects.webLink ?? "") != "") ...[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 6,
                              ),
                              child: CustomButton(
                                buttonName: "Web",
                                onTap: () => openInNewTab(projects.webLink!),
                              ),
                            ),
                          ),
                        ],
                        if ((projects.googleLink ?? "") == "" &&
                            (projects.appleLink ?? "") == "" &&
                            (projects.webLink ?? "") == "") ...[
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 6,
                              ),
                              child: CustomButton(
                                buttonName: "Working on it",
                                onTap: () {},
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
