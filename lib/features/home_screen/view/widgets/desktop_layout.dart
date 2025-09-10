import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/features/home_screen/controller/home_controller.dart';
import '../../../../core/app_constants.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/divider_widget.dart';
import '../../../about/view/about_page.dart';
import '../../../experiense/view/experience_page.dart';
import '../../../sidebar/view/personal_sidebar.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});
  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> with SingleTickerProviderStateMixin{
  final HomeController homeController = Get.find();
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController (length: 4, vsync: this, initialIndex: homeController.currentTabIndex.value);
    _tabController.addListener(() {
      homeController.changeTabBarIndex(_tabController.index);
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TabBar(controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white,
                          dividerColor: Colors.transparent,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2.5,
                          indicatorSize: TabBarIndicatorSize.tab,
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                          labelStyle: TextStyle(
                              color: Colors.white
                          ),
                          unselectedLabelStyle: TextStyle(
                              color: Colors.white
                          ),
                          tabs: [
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: CustomTextWidget(
                                text: "About",
                                fontSize: AppConstants.tabTitleFontSize,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: CustomTextWidget(
                                text: "Experience",
                                fontSize: AppConstants.tabTitleFontSize,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: CustomTextWidget(
                                text: "Projects",
                                fontSize: AppConstants.tabTitleFontSize,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                              child: CustomTextWidget(
                                text: "Contact me",
                                fontSize: AppConstants.tabTitleFontSize,
                              ),
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
                          AboutPage(),
                          ExperiencePage(),
                          Text("Projects"),
                          Text("Contact me"),
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