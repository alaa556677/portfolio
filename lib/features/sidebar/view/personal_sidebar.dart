import 'package:flutter/material.dart';
import 'package:portfolio/features/sidebar/view/widgets/mobile_sidebar.dart';
import 'widgets/desktop_sidebar.dart';

class PersonalSidebar extends StatelessWidget {
  final bool isMobile;
  const PersonalSidebar({super.key, this.isMobile = false});
  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return MobileSidebar();
    } else {
      return DesktopSidebar();
    }
  }
}
