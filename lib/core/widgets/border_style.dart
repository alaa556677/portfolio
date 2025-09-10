import 'package:flutter/material.dart';

Decoration getBorderStyle(BuildContext context, {
  Color? containerColor,
  double? radius
}){
  return BoxDecoration(
    color: containerColor ?? Colors.transparent,
    borderRadius: BorderRadius.circular(radius ?? 20),
    border: Border.all(
      color: Theme.of(context).colorScheme.outline.withOpacity(0.2),
      width: 2,
    ),
  );
}