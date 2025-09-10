import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/core/widgets/loading_widget.dart';
import 'package:portfolio/features/experiense/view/widget/experience_card.dart';
import '../../../core/app_constants.dart';
import '../../../core/states.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/custom_text.dart';
import '../../about/view/widgets/feature_widget.dart';
import '../controller/experience_controller.dart';
import '../model/experience_model.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});
  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  final ExperienceController experienceController = Get.find();
  ExperienceModel? experienceModel;

  @override
  void initState() {
    experienceController.loadExperience().then((info) {
      setState(() {
        experienceModel = info;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return experienceController.experienceStates.value == RequestState.success ? Padding(
      padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeatureWidget(
              title: "Professional Experience",
              fontSize: AppConstants.titleFontSize,
              titleColor:  AppColors.textColor,
              isSubTitle: false,
              widgetValue: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: experienceModel!.experience.map((e) => Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 20),
                  child: ExperienceCard(experience: e),
                )).toList(),
              ),
            ),
          ],
        )
      )
    ):LoadingWidget();
  }
}
