import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class ButtonGetstarted extends StatelessWidget {
  final String toRoute;
  final String text;
  final Color? textColor;
  final Color? background;
  final List<Color>? gradient;
  
  const ButtonGetstarted({
    super.key, 
    required this.toRoute, 
    required this.text, 
    this.textColor,
    this.background,
    this.gradient
  });

  ButtonGetstarted initButton() {
    return ButtonGetstarted(
      toRoute: toRoute, 
      text: text, 
      textColor: textColor, 
      background: background
      );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pushReplacementNamed(context, toRoute);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: gradient!),
          borderRadius: BorderRadius.circular(5) ,color: background),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AfacadFluxFont.afacadThin.copyWith(
                color: textColor, fontSize: 14
              ),
            )
          ],
        ),
      ),
    );
  }
}
