import 'package:flutter/material.dart';

import '../../../sidebar/view/personal_sidebar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PersonalSidebar(isMobile: true,),
        SizedBox(height: 20,),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
                  width: 1,
                ),
              ),
            ),
          )
        )
      ],
    );
  }
}
