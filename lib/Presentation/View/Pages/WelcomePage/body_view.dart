import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/height_view.dart';
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

  final String _assetImage = 'assets/images/AbstractBackground-assets.png';
  final double _heightBackground = 600;

  final ScrollController _scrollController = ScrollController();
  double opacity = 1;
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
      setState(() {
        opacity = _scrollController.position.pixels < 300 ||
         _scrollController.position.pixels > 1100 ? 0 : 1;
      });
      print('Posicion actual scroll: ${_scrollController.position.pixels}');
    });

  }

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.sizeOf(context).width;

    // Tamaño fuentes
    if(ResponsiveBreakpoints.of(context).isMobile) {
      titleSize = 35; 
      contentSize = 15;
      widthContainer = sizeWidth - 70;

      widthLogo = 120;
      heightLogo = 230;
      positionLeft = sizeWidth - 120;
               
    }
    else if(ResponsiveBreakpoints.of(context).isTablet) { 
      titleSize = 50; 
      contentSize = 17;
      widthContainer = sizeWidth - 140;

      widthLogo = 150;
      widthLogo = 250;
      positionLeft = sizeWidth - 250;
    }
    else if(ResponsiveBreakpoints.of(context).isDesktop) {
      titleSize = 75;
      contentSize = 17;
      widthContainer = 700;

      widthLogo = 250;
      heightLogo= 500;
      positionLeft = sizeWidth - 300;
    }
    

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
                assetRoute: _assetImage,
                height: _heightBackground,
              ),
              Container(
                height: _heightBackground,
                width: widthContainer,
                decoration: BoxDecoration(
                  color: ColorsApp.white,
                        border: Border.fromBorderSide(BorderSide(color: ColorsApp.black))
                ),
              ),
              Positioned(
                top: ResponsiveBreakpoints.of(context).isMobile ? 150 : 170,
                left: positionLeft,
                child: OnBackground(
                  assetRoute:
                      '/home/ramses/Develop/flutter_dev/notebook_web_flutter/notebook_web/assets/images/NTAssets.png',
                  width: widthLogo,
                  height: heightLogo,
                ),
              ),
              Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: widthContainer,
                      height: _heightBackground,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: ResponsiveBreakpoints.of(context).isMobile ? 30 : 40, 
                          ),
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Build and write better notes with ',
                                        style: AfacadFluxFont.afacadBlack.copyWith(
                                          fontSize: titleSize,
                                          color: ColorsApp.black
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'NOTERG',
                                        style: AfacadFluxFont.afacadBlack.copyWith(
                                          fontSize: titleSize,
                                          color: Colors.purple
                                        )
                                      )
                                    ]
                                  ),
                                ),
                                Text(
                                  'Build better notes, more attractives, and more cool!',
                                  style: RobotoFont.robotoLight.copyWith(
                                    fontSize: contentSize
                                  ),
                                ),
                              ],
                          )
                        )),
                        ),
            ],
          ),
        )),

        // Todo: Gere is the center on the first page.
        SliverToBoxAdapter(
          child: OnBackground(
            assetRoute: 'assets/images/App-removebg-assets.png',
          ),

          // child: AnimatedOpacity(
          //   opacity: opacity, 
          //   duration: Duration(seconds: 1),
          //   child: Column(
          //     children: [
          //       SizedBox(height: 200,),

          //       SizedBox(
          //         width: sizeWidth - 20,
          //         child: OnBackground(
          //           assetRoute: '/home/ramses/Develop/flutter_dev/notebook_web_flutter/notebook_web/assets/images/App-removebg-assets.png',
          //           width: ResponsiveBreakpoints.of(context).isMobile ? 300 : 500,
          //           height: ResponsiveBreakpoints.of(context).isMobile? 350 : 600,
          //         )
          //       ),

          //       SizedBox(height: 1000)
          //     ],
          //   ),
          // ),
        )
      ],
    );
  }
}
