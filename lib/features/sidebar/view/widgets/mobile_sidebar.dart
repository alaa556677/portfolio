import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/helpers/methods.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import '../../logic/sidebar_cubit.dart';
import '../../logic/sidebar_states.dart';

class MobileSidebar extends StatelessWidget {
  const MobileSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SidebarCubit>()..loadPersonalInfo(),
      child: Builder(
        builder: (context) {
          final sidebarCubit = context.read<SidebarCubit>();
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.4),
                  width: 1,
                ),
              ),
            ),
            child: BlocBuilder<SidebarCubit, SidebarStates>(
              builder: (context, state) {
                final personalInfo = state.personalInfoState.data;
                if (!state.personalInfoState.isSuccess || personalInfo == null) {
                  return PortfolioManager.loadingWidget();
                }
                return Row(
                  children: [
                    // Avatar
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(personalInfo.image),
                    ),
                    const SizedBox(width: 16),
                    // Name and Title
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PortfolioManager.text(TextModel(
                            text: personalInfo.fullName,
                            style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textColor,
                            ),
                          )),
                          SizedBox(height: 6,),
                          PortfolioManager.text(TextModel(
                            text: personalInfo.professionalTitle,
                            style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.textColor,
                            ),
                          )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () => openInNewTab(personalInfo.linkedIn),
                          child: Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: AppColors.textSecondary(context),
                                width: 1,
                              ),
                            ),
                            child: PortfolioManager.text(TextModel(
                              text: "In",
                              style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textSecondary(context),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(width: 14,),
                        InkWell(
                          onTap: () => openInNewTab(personalInfo.linkedIn),
                          child: Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: AppColors.textSecondary(context),
                                width: 1,
                              ),
                            ),
                            child: Image.asset("assets/images/github.png", color: AppColors.textSecondary(context), width: 20, height: 20,),
                          ),
                        ),
                        SizedBox(width: 14,),
                        InkWell(
                          onTap: () => sidebarCubit.downloadCV(),
                          child: Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: AppColors.textSecondary(context),
                                width: 1,
                              ),
                            ),
                            child: PortfolioManager.text(TextModel(
                              text: "Cv",
                              style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textSecondary(context),
                              ),
                            )),
                          ),
                        ),
                        SizedBox(width: 8,),
                      ],
                    )
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
