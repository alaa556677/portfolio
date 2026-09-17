import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(color: Theme.of(context).colorScheme.outline.withOpacity(0.2), height: 2, width: double.infinity,);
  }
}
