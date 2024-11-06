import 'package:flutter/material.dart';

enum FormSection { twoColumns, oneColumn }

class ToolsSections extends StatelessWidget {
  final String title;
  final String subTitle;
  final String assetRoute;
  final FormSection form;
  final List<Color> gradient;

  const ToolsSections({
    super.key,
    required this.title,
    required this.subTitle,
    required this.assetRoute,
    required this.gradient,
    this.form = FormSection.oneColumn
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: gradient)
      ),
    );
  }
}