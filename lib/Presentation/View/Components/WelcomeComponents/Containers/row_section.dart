import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class RowSection extends StatelessWidget {
  const RowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: Stack(
        children: [
          Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
      color: ColorsApp.black,
            borderRadius: BorderRadius.circular(10)
          )
    ),
    Positioned(
        top: 10,
        left: 10,
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
          gradient: LinearGradient(colors: [ColorsApp.red, ColorsApp.redOrange]),
            borderRadius: BorderRadius.circular(10)
          )
        )
      )
        ]
    ),
    );
  }
}