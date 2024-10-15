import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';


class ButtonStart extends StatelessWidget {
  final String text;
  final Color? background;
  final Color? textColor;
  final String routeDestination;

  const ButtonStart({super.key, required this.text, 
  this.background, this.textColor, required this.routeDestination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pushReplacementNamed(context, routeDestination);
      },
      child: SizedBox(
        width: 200,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: background),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_forward,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: AfacadFluxFont.afacadThin.copyWith(color: textColor, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
