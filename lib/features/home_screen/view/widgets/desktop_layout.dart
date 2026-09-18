import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/colors.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import '../../../about/view/about_page.dart';
import '../../../about/view/widgets/section_decorations.dart';
import '../../../contact_me/view/contact_screen.dart';
import '../../../experiense/view/experience_page.dart';
import '../../../projects/view/projects_page.dart';
import '../../../sidebar/view/personal_sidebar.dart';
import '../../logic/home_cubit.dart';
import 'keep_alive_page.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});
  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> with SingleTickerProviderStateMixin{
  final HomeCubit homeCubit = getIt();
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController (length: 4, vsync: this, initialIndex: homeCubit.state.currentTabIndex);
    _tabController.addListener(() {
      homeCubit.changeTabBarIndex(_tabController.index);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1280,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PersonalSidebar(),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 50),
              child: Container(
                decoration: getBorderStyle(context),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white,
                          dividerColor: Colors.transparent,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2.5,
                          indicatorSize: TabBarIndicatorSize.tab,
                          overlayColor: WidgetStateProperty.all(Colors.transparent),
                          labelStyle: TextStyle(
                              color: Colors.white
                          ),
                          unselectedLabelStyle: TextStyle(
                              color: Colors.white
                          ),
                          tabs: [
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: PortfolioManager.text(TextModel(
                                text: "About",
                                style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textSecondary(context),
                                ),
                              )),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: PortfolioManager.text(TextModel(
                                text: "Experience",
                                style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textSecondary(context),
                                ),
                              )),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: PortfolioManager.text(TextModel(
                                text: "Projects",
                                style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textSecondary(context),
                                ),
                              )),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: PortfolioManager.text(TextModel(
                                text: "Contact me",
                                style: PortfolioManager.style(textType: TextTypes.bodyMedium14).copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.textSecondary(context),
                                ),
                              )),
                            ),
                          ],),
                        SizedBox(width: 20,)
                      ],
                    ),
                    DividerWidget(),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          KeepAlivePage(child: AboutPage()),
                          KeepAlivePage(child: ExperiencePage()),
                          KeepAlivePage(child: ProjectPage()),
                          KeepAlivePage(child: ContactScreen()),
                        ]
                      )
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
