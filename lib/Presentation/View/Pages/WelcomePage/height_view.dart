import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/app_bar_button.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/logo_app.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeightViewPage extends StatefulWidget {
  const HeightViewPage({super.key});

  @override
  State<HeightViewPage> createState() => _HeightViewPageState();
}

class _HeightViewPageState extends State<HeightViewPage> {
  final Color appBarColor = Colors.white;
  final double toolbarHeight = 100;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: appBarColor,
        surfaceTintColor: ColorsApp.white,
        elevation: 40,
        pinned: true,
        expandedHeight: toolbarHeight,
        toolbarHeight: toolbarHeight,
        shadowColor: ColorsApp.black,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          title: ResponsiveBreakpoints.of(context).isDesktop ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogoApp(
                      width: 60,
                      height: 120,
                      background: ColorsApp.black,
                      textColor: ColorsApp.white,
                    ),
                    Row(
                      children: [
                        AppBarButton.signIn(),
                        SizedBox(
                          width: 10,
                        ),
                        AppBarButton.download()
                      ],
                    )
                  ],
                ) : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LogoApp(
                      background: ColorsApp.black,
                      textColor: ColorsApp.white,
                      height: 200, width: 60
                    )
                  ],
                ),
        ));
  }
}
