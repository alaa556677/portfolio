import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/app_routes.dart';
import 'binding.dart';
import 'features/contact_me/controller/controller.dart';
import 'features/home_screen/view/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EmailService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Portfolio',
      initialRoute: AppRoutes.homeScreen,
      initialBinding: PortfolioBinding(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: AppRoutes.splashScreen, page: () => const HomeScreen())
      ],
    );
  }
}