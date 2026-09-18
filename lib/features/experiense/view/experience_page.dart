import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import 'package:portfolio/features/experiense/view/widget/experience_card.dart';
import '../../about/view/widgets/feature_widget.dart';
import '../logic/experience_cubit.dart';
import '../logic/experience_states.dart';

class ExperiencePage extends StatelessWidget {
  final bool isMobile;
  const ExperiencePage({
    super.key,
    this.isMobile = false
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ExperienceCubit>()..loadExperience(),
      child: BlocBuilder<ExperienceCubit, ExperienceStates>(
        builder: (context, state) {
          final experienceModel = state.experienceState.data;
          if (!state.experienceState.isSuccess || experienceModel == null) {
            return PortfolioManager.loadingWidget();
          }
          return Padding(
            padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FeatureWidget(
                    title: "Professional Experience",
                    fontSize: 20,
                    titleColor:  AppColors.textColor,
                    isSubTitle: false,
                    widgetValue: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: experienceModel.experience.map((e) => Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 20),
                        child: ExperienceCard(experience: e, isMobile: isMobile,),
                      )).toList(),
                    ),
                  ),
                ],
              )
            ),
          );
        },
      ),
    );
  }
}
