import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/information_column_start.dart';
import 'dart:io';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/height_view.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BodyView extends StatefulWidget {
  const BodyView({super.key});

  @override
  State<BodyView> createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  double titleSize = 0.0;
  double widthContainer = 0.0;
  double contentSize = 0.0;

  double widthLogo = 250;
  double heightLogo = 500;
  double positionLeft = 0.0;

  final double _heightBackground = 1000;

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      print('Scroll position: ${_scrollController.position.pixels}');
    });
  }

  void setFontSizeText(BuildContext context) {}

  void setDimensions(BuildContext context) {
    final sizeWidth = MediaQuery.sizeOf(context).width;
    // Tamaño fuentes
    if (ResponsiveBreakpoints.of(context).isMobile) {
      titleSize = 35;
      contentSize = 15;
      widthContainer = sizeWidth - 100;

      widthLogo = 200;
      heightLogo = 230;
      positionLeft = sizeWidth - 150;
    } else if (ResponsiveBreakpoints.of(context).isTablet) {
      titleSize = 50;
      contentSize = 17;
      widthContainer = sizeWidth - 140;

      widthLogo = 150;
      widthLogo = 300;
      positionLeft = sizeWidth - 250;
    } else {
      titleSize = 75;
      contentSize = 17;
      widthContainer = 700;

      widthLogo = 250;
      heightLogo = 500;
    }
  }

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.sizeOf(context).width;
    setDimensions(context);
    Responsive.deviceComprobation(context);

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        HeightViewPage(),

        //Todo: This is the top design on the presentation web.
        SliverToBoxAdapter(
            child: SizedBox(
          height: _heightBackground,
          child: Stack(
            children: [
              OnBackground(
                assetRoute: RouteAssetImages.abstractBackgroundAsset,
                width: sizeWidth,
                height: _heightBackground,
              ),
              Positioned(
                top: 150,
                left: widthContainer - 150,
                child: AssetsIM(assetRoute: RouteAssetImages.ntAsset),
              ),
              Container(
                height: _heightBackground,
                width: widthContainer,
                decoration: BoxDecoration(
                    color: ColorsApp.white,
                    border: Border.fromBorderSide(
                        BorderSide(color: ColorsApp.black))),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                    width: widthContainer,
                    height: _heightBackground,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ResponsiveBreakpoints.of(context).isMobile
                              ? 30
                              : 40,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: 'Build and write better notes with ',
                                  style: AfacadFluxFont.afacadBlack.copyWith(
                                      fontSize: titleSize,
                                      color: ColorsApp.black),
                                ),
                                TextSpan(
                                    text: 'NOTERG',
                                    style: AfacadFluxFont.afacadBlack.copyWith(
                                        fontSize: titleSize,
                                        color: Colors.purple))
                              ]),
                            ),
                            Text(
                              'Build better notes, more attractives, and more cool!',
                              style: RobotoFont.robotoLight
                                  .copyWith(fontSize: contentSize),
                            ),
                          ],
                        ))),
              ),
            ],
          ),
        )),

        // Todo: Gere is the center on the first page.
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveBreakpoints.of(context).isMobile ? 20 : 40),
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  width: 750,
                  decoration: BoxDecoration(
                      color: ColorsApp.orange,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      AssetsIM(
                        width: 50,
                        height: 50,
                        assetRoute: '/home/ramses/Develop/flutter_dev/notebook_web_flutter/notebook_web/assets/images/scream-assets.png',
                      ),
                      SizedBox(width: 20,),
                          Text(
                        textAlign: TextAlign.left,
                        "Noterg is an notebook with a powerful system to make notes.",
                        style: RobotoFont.robotoRegular
                            .copyWith(fontSize: 18, 
                            color: ColorsApp.white),
                          )
                    ],
                  ),
              ),
              SizedBox(
                height: 20,
              ),
              AssetsIM(
                assetRoute: RouteAssetImages.appRemovebgAsset,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: sizeWidth - 200,
                child: Divider(
                  color: ColorsApp.black,
                  thickness: 3,
                ),
              ),
              SizedBox(
                child: ResponsiveRowColumn(
                  layout: ResponsiveBreakpoints.of(context).screenWidth <= 800
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveRowColumnItem(
                      child: InformationColumnStart(
                        titleSpace: "Eficient, faster and optimized",
                        contentSpace: "Speed and performance in every task.",
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: InformationColumnStart(
                          titleSpace: "An simple app performant by design",
                          contentSpace:
                              "Designed to be simple and efficient, maximizing usability."),
                    ),
                    ResponsiveRowColumnItem(
                      child: InformationColumnStart(
                        titleSpace: "Collaborative projects",
                        contentSpace:
                            "acilitates real-time collaboration between multiple users.",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
