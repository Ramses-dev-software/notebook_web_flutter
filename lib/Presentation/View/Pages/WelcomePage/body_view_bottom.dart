import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Button/app_bar_button.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BodyViewBottom extends StatelessWidget {
  const BodyViewBottom({super.key});

  @override
  Widget build(BuildContext context) {
  double richFontSize = !ResponsiveBreakpoints.of(context).isDesktop ? 40 : 100;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Join us, and start using',
                style: AfacadFluxFont.afacadBold.copyWith(
                  fontSize: richFontSize,
                  color: ColorsApp.black
                )
              ),
              TextSpan(
                text: ' Noterg',
                style: AfacadFluxFont.afacadBlack.copyWith(
                  fontSize: richFontSize,
                  color: ColorsApp.darkPink
                )
              )
            ] 

          ),
        ),
        SizedBox(height: 10,),
        Align(
          alignment: Alignment.center,
          child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [ColorsApp.redPink, ColorsApp.pinkPurple])
            ),
            padding: EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get started',
                  style: AfacadFluxFont.afacadBlack.copyWith(
                    fontSize: richFontSize
                  ),
                ),
                Text(
                  'Make your ideas true with Noterg',
                  style: AfacadFluxFont.afacadBold.copyWith(
                    fontSize: 40
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                AppBarButton(
                  toRoute: '/', 
                  text: 'Start ->',
                  width: 100,
                  background: ColorsApp.black,
                  textColor: ColorsApp.white,
                )
              ],
            ),
          ),
        ),
        )
      ],
    );
  }
}