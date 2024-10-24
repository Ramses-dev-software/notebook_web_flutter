import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class TicketSection extends StatelessWidget {
  final String text;
  final double width;
  const TicketSection({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [ColorsApp.redPink, ColorsApp.pinkPurple])
      ),
      child: Text(
        text, 
        style: 
        AfacadFluxFont.afacadBold.copyWith(
          fontSize: 18,
          color: ColorsApp.white,
          overflow: TextOverflow.clip),),
    );
  }
}