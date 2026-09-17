import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final double? topLeft;
  final double? topRight;
  final double? bottomLeft;
  final double? bottomRight;

  const ContainerImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.topRight,
    this.bottomRight,
    this.bottomLeft,
    this.topLeft
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft ?? 0),
          topRight: Radius.circular(topRight ?? 0),
          bottomLeft: Radius.circular(bottomLeft ?? 0),
          bottomRight: Radius.circular(bottomRight ?? 0),
        )
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
    );
  }
}
