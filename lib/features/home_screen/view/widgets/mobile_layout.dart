import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../core/app_constants.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/divider_widget.dart';
import '../../../about/view/about_page.dart';
import '../../../contact_me/view/contact_screen.dart';
import '../../../experiense/view/experience_page.dart';
import '../../../projects/view/projects_page.dart';
import '../../../sidebar/view/personal_sidebar.dart';
import '../../controller/home_controller.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});
  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> with SingleTickerProviderStateMixin{
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
    return Column(
      children: [
        PersonalSidebar(isMobile: true,),
        Expanded(
          child: Column(
            children: [
              TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                dividerColor: Colors.transparent,
                indicatorColor: Colors.white,
                indicatorWeight: 2.5,
                indicatorSize: TabBarIndicatorSize.tab,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                labelStyle: TextStyle(color: Colors.white),
                unselectedLabelStyle: TextStyle(color: Colors.white),
                tabs: [
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                    child: CustomTextWidget(
                      text: "About",
                      fontSize: AppConstants.tabTitleFontSize,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                    child: CustomTextWidget(
                      text: "Experience",
                      fontSize: AppConstants.tabTitleFontSize,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                    child: CustomTextWidget(
                      text: "Projects",
                      fontSize: AppConstants.tabTitleFontSize,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(vertical: 12),
                    child: CustomTextWidget(
                      text: "Contact me",
                      fontSize: AppConstants.tabTitleFontSize,
                      maxLines: 1,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],),
              SizedBox(width: 20,),
              DividerWidget(),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 0),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      AboutPage(),
                      ExperiencePage(isMobile: true,),
                      ProjectPage(),
                      ContactScreen(),
                    ]
                  ),
                )
              )
            ],
          )
        )
      ],
    );
  }
}
