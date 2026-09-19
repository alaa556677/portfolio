import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/helpers/methods.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import 'package:portfolio/features/sidebar/view/widgets/row_information_widget.dart';
import '../../../about/view/widgets/section_decorations.dart';
import '../../logic/sidebar_cubit.dart';
import '../../logic/sidebar_states.dart';

class DesktopSidebar extends StatelessWidget {
  const DesktopSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SidebarCubit>()..loadPersonalInfo(),
      child: Builder(
        builder: (context) {
          final sidebarCubit = context.read<SidebarCubit>();
          return Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 50),
            child: Container(
              width: 360,
              height: MediaQuery.of(context).size.height,
              decoration: getBorderStyle(context),
              child: BlocBuilder<SidebarCubit, SidebarStates>(
                builder: (context, state) {
                  final personalInfo = state.personalInfoState.data;
                  if (!state.personalInfoState.isSuccess || personalInfo == null) {
                    return PortfolioManager.loadingWidget();
                  }
                  return SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage(personalInfo.image), fit: BoxFit.cover)
                            ),
                          ),
                          const SizedBox(height: 24),
                          PortfolioManager.text(TextModel(
                            text: personalInfo.fullName,
                            style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textColor
                            ),
                          )),
                          const SizedBox(height: 14),
                          PortfolioManager.text(TextModel(
                            text: personalInfo.professionalTitle,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white.withValues(alpha: .7),
                            ),
                          )),
                          const SizedBox(height: 24),
                          RowInformationWidget(
                            icon: Icons.email_outlined,
                            value: personalInfo.email,
                          ),
                          const SizedBox(height: 14),
                          RowInformationWidget(
                            icon: Icons.phone_android,
                            value: personalInfo.phone,
                          ),
                          const SizedBox(height: 12),
                          RowInformationWidget(
                            stringIcon: "in",
                            value: "LinkedIn",
                            onTap: ()=> openInNewTab(personalInfo.linkedIn),
                          ),
                          const SizedBox(height: 12),
                          RowInformationWidget(
                            value: "GitHub",
                            onTap: ()=> openInNewTab(personalInfo.gitHub),
                          ),
                          const SizedBox(height: 12),
                          RowInformationWidget(
                            stringIcon: "cv",
                            value: "Download CV",
                            onTap: ()=> sidebarCubit.downloadCV(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
