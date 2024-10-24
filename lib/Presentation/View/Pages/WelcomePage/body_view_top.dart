import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Button/app_bar_button.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';


final double _heightBackground = 1100;
double _titleSize = 0;
double _contentSize = 0;


class BodyViewTop extends StatelessWidget {
  const BodyViewTop({super.key});


  void _setDimensions(BuildContext context) {
    _titleSize = ResponsiveBreakpoints.of(context).isMobile ? 50 : 70;
    _contentSize = ResponsiveBreakpoints.of(context).isMobile ? 20 : 30;
  }


  @override
  Widget build(BuildContext context) {
    _setDimensions(context);
    return SliverToBoxAdapter(
        child: Stack(
      children: [OnBackground(
          alignment: Alignment.center,
          assetRoute: RouteAssetImages.background,
          width: ResponsiveBreakpoints.of(context).screenWidth,
          height: _heightBackground,
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 100,),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            width: 600,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: 'Build better notes with',
                                      style: AfacadFluxFont.afacadRegular
                                          .copyWith(
                                              fontSize: _titleSize,
                                              color: ColorsApp.white),
                                    ),
                                    TextSpan(
                                        text: 'NOTERG',
                                        style: AfacadFluxFont.afacadBlack
                                            .copyWith(
                                                fontSize: _titleSize,
                                                color: Colors.purple))
                                  ]),
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'Build better notes, more attractives, and more cool!',
                                  style: RobotoFont.robotoLight.copyWith(
                                      fontSize: _contentSize,
                                      color: ColorsApp.white),
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      
                      Align(
                        alignment: Alignment.center,
                        child: ResponsiveRowColumn(
                          rowMainAxisAlignment: MainAxisAlignment.center,
                          columnMainAxisAlignment: MainAxisAlignment.center,
                          layout: !ResponsiveBreakpoints.of(context).isDesktop
                              ? ResponsiveRowColumnType.COLUMN
                              : ResponsiveRowColumnType.ROW,
                          children: [
                            ResponsiveRowColumnItem(
                              child: AppBarButton(
                                toRoute: '/',
                                text: 'Download for free',
                                background: ColorsApp.white,
                                textColor: ColorsApp.black,
                                width: 240,
                                height: 70,
                                routeImage: RouteAssetImages.notelogo,
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              child: SizedBox(
                                height: 10,
                                width: 10,
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              child: AppBarButton(
                                toRoute: '/',
                                text: 'Github',
                                width: ResponsiveBreakpoints.of(context).isMobile
                                   || ResponsiveBreakpoints.of(context).isTablet ? 240 : 190,
                                height: 70,
                                background: ColorsApp.black,
                                textColor: ColorsApp.white,
                                routeImage: RouteAssetImages.github,
                              ),
                            )
                          ],
                        ),
                      ),


                      SizedBox(height: 70,),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: 950,
                              height:
                                ResponsiveBreakpoints.of(context).isMobile ||
                                  ResponsiveBreakpoints.of(context).isTablet  ? 300 : 550,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                ColorsApp.redPink,
                                ColorsApp.pinkPurple
                              ]
                              ),
                              ),
                              child: OnBackground(
                                assetRoute: RouteAssetImages.coding,
                                alignment: Alignment.centerLeft,
                              )
                            ))
                    ],
                  ))),
      ],
    ));
  }
}
