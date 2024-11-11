import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';

class ContainerSection extends StatelessWidget {
  final List<Color>? gradient;
  final Color? color;
  final List<Widget> elements;

  const ContainerSection({super.key, this.gradient, this.color, required this.elements});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color ?? ColorsApp.white,
        gradient: LinearGradient(colors: gradient!)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: elements,
      )
    );
  }
}

class SectionCheck extends StatelessWidget {
  final String assetRoute;
  final String text;
  const SectionCheck({super.key, required this.assetRoute, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AssetsImpl(assetRoute: assetRoute, width: 10, height: 10,),
        SizedBox(width: 10,),
        Expanded(
          child: Text(
            text,
            style: RobotoFont.robotoRegular.copyWith(
              fontSize: 14
            ),
          ),
        )
      ],
    );
  }
}