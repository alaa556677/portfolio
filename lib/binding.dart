import 'package:get/get.dart';
import 'package:portfolio/features/sidebar/controller/sidebar_controller.dart';
import 'features/about/controller/about_controller.dart';
import 'features/contact_me/controller/controller.dart';
import 'features/experiense/controller/experience_controller.dart';
import 'features/home_screen/controller/home_controller.dart';
import 'features/projects/controller/project_controller.dart';

class PortfolioBinding implements Bindings{
  @override
  void dependencies(){
    Get.put(SideBarController(), permanent: true);
    Get.put(HomeController(), permanent: true);
    Get.put(AboutController(), permanent: true);
    Get.put(ExperienceController(), permanent: true);
    Get.put(ProjectController(), permanent: true);
  }
}