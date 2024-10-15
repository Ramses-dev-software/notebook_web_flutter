import 'package:flutter/material.dart';

final class Responsive extends StatelessWidget {
  
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  const Responsive({
    super.key,
    required this.mobile,
    required this.desktop,
    this.tablet
  });

  static void deviceComprobation(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;

    if(onMobile(context)) {
      print('Mobile: $size');
    }
    
    else if(onTablet(context)) {
      print('Tablet: $size');
    }

    else {
      print('Desktop: $size');
    }
  }


  static bool onMobile(BuildContext context) =>
    MediaQuery.sizeOf(context).width <= 450;

  static bool onTablet(BuildContext context) =>
    MediaQuery.sizeOf(context).width < 1280
      && MediaQuery.sizeOf(context).width >= 450;

  static bool onDesktop(BuildContext context) => 
    MediaQuery.sizeOf(context).width >= 1280;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    if(size.width >= 1280) {
      return desktop;
    }
    else if(size.width >= 450 && tablet != null) {
      return tablet!;
    }
    else {
      return mobile;
    }
  }
}