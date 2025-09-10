import 'package:get/get.dart';

class HomeController extends GetxController{
  RxInt currentTabIndex = 0.obs;
  changeTabBarIndex(int newIndex) {
    currentTabIndex.value = newIndex;
  }
}