import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class AppBarButton extends StatelessWidget {
  final String toRoute;
  final String text;
  final Color? textColor;
  final Color? background;
  final LinearGradient? gradient;
  final String? routeImage;
  final double? width;
  final double? height;

  const AppBarButton(
      {super.key,
      this.height,
      this.width,
      this.routeImage,
      required this.toRoute,
      required this.text,
      this.textColor,
      this.background,
      this.gradient});

  factory AppBarButton.signIn() {
    return AppBarButton(
      toRoute: '/',
      text: 'Sign in',
      textColor: ColorsApp.white,
      background: ColorsApp.black,
    );
  }

  factory AppBarButton.download() {
    return AppBarButton(
      toRoute: '/',
      text: 'Download',
      gradient:
          LinearGradient(colors: [ColorsApp.redPink, ColorsApp.pinkPurple]),
      textColor: ColorsApp.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        decoration: BoxDecoration(
            color: background,
            gradient: gradient,
            borderRadius: BorderRadius.circular(5)),
        child: GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, toRoute),
          child: routeImage != null
              ? Row(
                  children: [
                    AssetsIM(
                      assetRoute: routeImage!,
                      width: 40,
                      height: 100,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      text,
                      style: AfacadFluxFont.afacadBold.copyWith(
                          color: textColor ?? ColorsApp.black, fontSize: 18),
                    ),
                  ],
                )
              : Text(
                  text,
                  style: AfacadFluxFont.afacadBold.copyWith(
                      color: textColor ?? ColorsApp.black, fontSize: 18),
                ),
        ));
  }
}

class DrawerListButton extends StatelessWidget {
  final String titleList;
  const DrawerListButton({super.key, required this.titleList});

  @override
  Widget build(BuildContext context) {
    return Text(titleList,
        style: RobotoFont.robotoRegular.copyWith(fontSize: 15));
  }
}
