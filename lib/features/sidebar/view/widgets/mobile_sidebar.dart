import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/helpers/methods.dart';
import 'package:portfolio/core_old/app_constants.dart';
import 'package:portfolio/core_old/styles/colors.dart';
import 'package:portfolio/core_old/widgets/custom_text.dart';
import 'package:portfolio/core_old/widgets/loading_widget.dart';
import '../../../../core_old/states.dart';
import '../../controller/sidebar_controller.dart';
import '../../model/personal_info.dart';

class MobileSidebar extends StatefulWidget {
  const MobileSidebar({super.key});
  @override
  State<MobileSidebar> createState() => _MobileSidebarState();
}

class _MobileSidebarState extends State<MobileSidebar> {
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
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.outline.withOpacity(0.4),
            width: 1,
          ),
        ),
      ),
      child:  sideBarController.personalInfo.value == RequestState.success ? Row(
        children: [
          // Avatar
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(personalInfo!.image),
          ),
          const SizedBox(width: 16),
          // Name and Title
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  text: personalInfo!.fullName,
                  fontSize: AppConstants.subTitleFontSize,
                ),
                SizedBox(height: 6,),
                CustomTextWidget(
                  text: personalInfo!.professionalTitle,
                  fontSize: AppConstants.personalInformationFontSize,
                ),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () => openInNewTab(personalInfo!.linkedIn),
                child: Container(
                  width: 28,
                  height: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: AppColors.textSecondaryColor(context),
                      width: 1,
                    ),
                  ),
                  child: CustomTextWidget(
                    text: "In",
                    fontColor: AppColors.textSecondaryColor(context),
                    fontSize: 14,
                  )
                ),
              ),
              SizedBox(width: 14,),
              InkWell(
                onTap: () => openInNewTab(personalInfo!.linkedIn),
                child: Container(
                  width: 28,
                  height: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: AppColors.textSecondaryColor(context),
                      width: 1,
                    ),
                  ),
                  child: Image.asset("assets/images/github.png", color: AppColors.textSecondaryColor(context), width: 20, height: 20,),
                ),
              ),
              SizedBox(width: 14,),
              InkWell(
                onTap: () => sideBarController.downloadCV(),
                child: Container(
                  width: 28,
                  height: 28,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: AppColors.textSecondaryColor(context),
                      width: 1,
                    ),
                  ),
                  child: CustomTextWidget(
                    text: "Cv",
                    fontColor: AppColors.textSecondaryColor(context),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(width: 8,),
            ],
          )
        ],
      ) : LoadingWidget(),
    );
  }
}
