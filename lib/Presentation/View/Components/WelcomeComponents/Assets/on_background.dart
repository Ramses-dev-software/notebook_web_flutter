import 'package:flutter/material.dart';

class AssetsIM extends StatelessWidget {
  final String assetRoute;
  final double? height;
  final double? width;
  const AssetsIM({
    super.key,
    required this.assetRoute,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        assetRoute,
        width: width,
        height: height,
      ),
    );
  }
}

final class OnBackground extends StatelessWidget {
  final String assetRoute;
  final double? width;
  final double? height;
  final ColorFilter? filter;
  final Alignment? alignment;

  const OnBackground(
      {super.key,
      required this.assetRoute,
      this.height,
      this.alignment = Alignment.center,
      this.width,
      this.filter});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
              colorFilter: filter,
              alignment: alignment!,
              image:ExactAssetImage(assetRoute),
              fit: BoxFit.cover)),
    );
  }
}
