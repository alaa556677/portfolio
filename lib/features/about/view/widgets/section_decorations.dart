import 'package:flutter/material.dart';

Decoration getBorderStyle(BuildContext context, {
  Color? containerColor,
  double? radius,
}){
  return BoxDecoration(
    color: containerColor ?? Colors.transparent,
    borderRadius: BorderRadius.circular(radius ?? 20),
    border: Border.all(
      color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.4),
      width: 2,
    ),
  );
}

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.outline.withValues(alpha: 0.2),
      height: 2,
      width: double.infinity,
    );
  }
}
