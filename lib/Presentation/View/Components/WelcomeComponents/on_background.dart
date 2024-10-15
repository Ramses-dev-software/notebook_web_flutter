import 'package:flutter/material.dart';

class OnBackground extends StatelessWidget {
  final String assetRoute;
  final double? height;
  final double? width;
  final ColorFilter? filter;
  const OnBackground({
    super.key, 
    required this.assetRoute, 
    this.height, 
    this.width,
    this.filter
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: filter,
                image: AssetImage(assetRoute))),
    ),
    ),
        ],
      ),
    );
  }
}
