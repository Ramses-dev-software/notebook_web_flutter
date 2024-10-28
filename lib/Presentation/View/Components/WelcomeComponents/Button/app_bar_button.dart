import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/Controller/WelcomePage/github_api.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:notebook_web/Presentation/View/routes.dart';

final _apiService = GithubApi();

class AppBarButton extends StatelessWidget {
  final String? toRoute;
  final bool? url;
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
      this.toRoute,
      this.url,
      required this.text,
      this.textColor,
      this.background,
      this.gradient});


  factory AppBarButton.signIn() {
    return AppBarButton(
      toRoute: Routes.loginPage,
      text: 'Sign in',
      textColor: ColorsApp.white,
      background: ColorsApp.black,
    );
  }


  factory AppBarButton.download() {
    return AppBarButton(
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
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
            color: background,
            gradient: gradient,
            borderRadius: BorderRadius.circular(10)),
        child: GestureDetector(
          onTap: () => url != null || toRoute != null ? 
            url == null ? Navigator.pushReplacementNamed(context, toRoute!) :
              _apiService.openUrlFromApi(context) 
              
          : null,
          child: routeImage != null
              ? Row(
                  children: [
                    AssetsIM(
                      assetRoute: routeImage!,
                      width: 40,
                      height: 80,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      text,
                      style: AfacadFluxFont.afacadLight.copyWith(
                          color: textColor ?? ColorsApp.black, fontSize: 18),
                    ),
                  ],
                )
              : Text(
                  text,
                  style: AfacadFluxFont.afacadLight.copyWith(
                      color: textColor ?? ColorsApp.black, fontSize: 18),
                ),
        ));
  }
}


