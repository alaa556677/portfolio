import 'package:flutter/material.dart';
import 'package:portfolio/features/home_screen/view/widgets/desktop_layout.dart';

import '../../../core/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints){
          return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // color: AppColors.blackColor.withOpacity(.85),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.gradientColor1,AppColors.gradientColor2],
                stops: [0.6, 1],
              ),
            ),
            child: DesktopLayout()
          );
        },
      ),
    );
  }
}
