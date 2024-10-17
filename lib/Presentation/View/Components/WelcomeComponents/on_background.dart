import 'package:flutter/material.dart';

class OnBackground extends StatelessWidget {
  final String assetRoute;
  final double? height;
  final double? width;
  const OnBackground({
    super.key, 
    required this.assetRoute, 
    this.height, 
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Image.asset(assetRoute)
    );
  }
}

final class AssetsIM extends StatelessWidget {
  final String assetRoute;
  final double width;
  final double height;
  final ColorFilter? filter;
  
  const AssetsIM({
    super.key,
    required this.assetRoute,
    required this.height,
    required this.width,
    this.filter
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: filter,
              image: AssetImage(assetRoute),
              fit: BoxFit.cover
            )
          ),
        ),
    );
  }
}
