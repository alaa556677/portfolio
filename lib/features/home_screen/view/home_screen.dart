import 'package:flutter/material.dart';
import 'package:portfolio/features/home_screen/view/widgets/desktop_layout.dart';
import 'package:portfolio/features/home_screen/view/widgets/mobile_layout.dart';

import '../../../core_old/app_constants.dart';
import '../../../core_old/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.gradientColor1,AppColors.gradientColor2],
            stops: [0.6, 1],
          ),
        ),
        child: LayoutBuilder(
          builder: (context, constraints){
            if (constraints.maxWidth < AppConstants.tabletBreakpoint) {
              return const MobileLayout();
            } else {
              return const DesktopLayout();
            }
          }
        )
      ),
    );
  }
}
