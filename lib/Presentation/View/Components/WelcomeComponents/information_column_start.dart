import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class InformationColumnStart extends StatelessWidget {
  final String titleSpace;
  final String contentSpace;
  
  const InformationColumnStart({
    super.key,
    required this.titleSpace,
    required this.contentSpace
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 80,
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          titleSpace,
          style: RobotoFont.robotoItalic.copyWith(
            fontSize: 20, color: ColorsApp.black
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          contentSpace,
          style: RobotoFont.robotoRegular.copyWith(
            fontSize: 15, color: ColorsApp.black
          ),
        )
      ],
    ),
    );
  }
}