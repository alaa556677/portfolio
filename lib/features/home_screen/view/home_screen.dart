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
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, AppColors.primaryColor],
                stops: [0.2, 1],
              ),
            ),
            child: DesktopLayout()
          );
        },
      ),
    );
  }
}
