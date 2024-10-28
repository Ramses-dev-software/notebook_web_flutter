import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Button/app_bar_button.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:notebook_web/Presentation/View/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BodyViewBottom extends StatelessWidget {
  const BodyViewBottom({super.key});

  @override
  Widget build(BuildContext context) {
    double fonts = ResponsiveBreakpoints.of(context).isDesktop ? 80 : 40;

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
                  fontSize: fonts,
                  color: ColorsApp.black
                )
              ),
              TextSpan(
                text: ' Noterg',
                style: AfacadFluxFont.afacadBlack.copyWith(
                  fontSize: fonts,
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
          padding: EdgeInsets.all(5),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [ColorsApp.redPink, ColorsApp.pinkPurple])
            ),
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get started',
                  style: AfacadFluxFont.afacadBlack.copyWith(
                    fontSize: fonts
                  ),
                ),
                Text(
                  'Make your ideas true with Noterg',
                  style: AfacadFluxFont.afacadBold.copyWith(
                    fontSize: fonts - 20
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(context, Routes.loginPage),
                  child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  decoration: BoxDecoration(
                    color: ColorsApp.black,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    'Start ->',
                    style: RobotoFont.robotoLight.copyWith(
                      fontSize: 20,
                      color: ColorsApp.white
                    ),
                  ),
                ),
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