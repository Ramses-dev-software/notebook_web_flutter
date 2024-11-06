import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';


final class Responsive {  

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

  // Todo: Breakpoints comprobation
  static List<Breakpoint> breakpointsResponsive = [
    Breakpoint(start: 0, end: 450, name: 'MOBILE'),
    Breakpoint(start: 451, end: 800, name: 'TABLET'),
    Breakpoint(start: 801, end: 1920, name: 'DESKTOP'),
    Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];

  // Todo: Functions actual size width
  static bool onMobile(BuildContext context) =>
    MediaQuery.sizeOf(context).width <= 450;

  static bool onTablet(BuildContext context) =>
    MediaQuery.sizeOf(context).width <= 800
      && MediaQuery.sizeOf(context).width >= 450;

  static bool onDesktop(BuildContext context) => 
    MediaQuery.sizeOf(context).width > 800 &&
      MediaQuery.sizeOf(context).width <= 1920;

  static bool on4k(BuildContext context) => 
    MediaQuery.sizeOf(context).width > 1920;
}