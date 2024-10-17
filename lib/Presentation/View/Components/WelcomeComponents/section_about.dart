import 'package:flutter/material.dart';

class SectionAbout extends StatelessWidget {
  final String routeImage;
  final String titleSection;
  final String content;

  const SectionAbout(
      {super.key,
      required this.routeImage,
      required this.titleSection,
      required this.content});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).width;
    return Placeholder();
  }
}