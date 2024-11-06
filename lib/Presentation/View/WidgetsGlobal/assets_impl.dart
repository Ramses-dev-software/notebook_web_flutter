import 'dart:ui';
import 'package:flutter/material.dart';

class AssetsImpl extends StatelessWidget {
  final String assetRoute;
  final double? width;
  final double? height;
  const AssetsImpl(
      {super.key,
      required this.assetRoute,
      this.width,
      this.height,});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      fit: BoxFit.cover,
            assetRoute,
            width: width,
            height: height,
          );
  }
}

class AssetsImplBlur extends StatelessWidget {
  final String assetRoute;
  final double? width;
  final double? height;
  final double? sigmaX;
  final double? sigmaY;
  const AssetsImplBlur({
    super.key, 
    required this.assetRoute, 
    this.height, 
    this.width,
    this.sigmaX = 1.0,
    this.sigmaY = 1.0
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(assetRoute)
                )
              ),
            ),

            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: sigmaX!, sigmaY: sigmaY!),
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            )
          ],
        );
  }
}
