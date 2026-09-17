import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/helpers/methods.dart';
import 'package:portfolio/core_old/states.dart';
import 'package:portfolio/features/sidebar/view/widgets/row_information_widget.dart';
import '../../../../core_old/app_constants.dart';
import '../../../../core_old/styles/colors.dart';
import '../../../../core_old/widgets/border_style.dart';
import '../../../../core_old/widgets/custom_text.dart';
import '../../../../core_old/widgets/loading_widget.dart';
import '../../controller/sidebar_controller.dart';
import '../../model/personal_info.dart';

class DesktopSidebar extends StatefulWidget {
  const DesktopSidebar({super.key});
  @override
  State<DesktopSidebar> createState() => _DesktopSidebarState();
}

class _DesktopSidebarState extends State<DesktopSidebar> {
  final SideBarController sideBarController = Get.find();
  PersonalInfo? personalInfo;
  @override
  void initState() {
    sideBarController.loadPersonalInfo().then((info) {
      setState(() {
        personalInfo = info;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 30, vertical: 50),
      child: Container(
        width: AppConstants.sidebarWidth,
        height: MediaQuery.of(context).size.height,
        decoration: getBorderStyle(context),
        child: sideBarController.personalInfo.value == RequestState.success ? SingleChildScrollView(
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
                    image: DecorationImage(image: AssetImage(personalInfo!.image), fit: BoxFit.cover)
                  ),
                ),
                const SizedBox(height: 24),
                CustomTextWidget(
                  text: personalInfo!.fullName,
                  fontSize: AppConstants.titleFontSize,
                  fontColor: AppColors.textColor,
                ),
                const SizedBox(height: 14),
                CustomTextWidget(
                  text: personalInfo!.professionalTitle,
                  fontColor: AppColors.whiteColor.withOpacity(.7),
                  fontSize: AppConstants.titleFontSize,
                ),
                const SizedBox(height: 14),
                RowInformationWidget(
                  icon: Icons.email_outlined,
                  value: personalInfo!.email,
                ),
                const SizedBox(height: 14),
                RowInformationWidget(
                  icon: Icons.phone_android,
                  value: personalInfo!.phone,
                ),
                const SizedBox(height: 12),
                RowInformationWidget(
                  stringIcon: "in",
                  value: "LinkedIn",
                  onTap: ()=> openInNewTab(personalInfo!.linkedIn),
                ),
                const SizedBox(height: 12),
                RowInformationWidget(
                  value: "GitHub",
                  onTap: ()=> openInNewTab(personalInfo!.gitHub),
                ),
                const SizedBox(height: 12),
                RowInformationWidget(
                  stringIcon: "cv",
                  value: "Download CV",
                  onTap: ()=> sideBarController.downloadCV(),
                ),
              ],
            ),
          ),
        ) : LoadingWidget(),
      ),
    );
  }
}
