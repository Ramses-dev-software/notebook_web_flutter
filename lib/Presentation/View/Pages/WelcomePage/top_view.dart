import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/AssetsApp/assets_images.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Core/Util/ui_responsivelayout.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_button.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/bottom_button.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/view_tools.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TopView extends StatelessWidget {
  const TopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            AssetsImplBlur(
          assetRoute: RouteAssetImages.backgroundTop,
          width: ResponsiveBreakpoints.of(context).screenWidth,
          height: !ResponsiveBreakpoints.of(context).isMobile ? 480 : 500,
          ),

          Align(
            child: SizedBox(
              width: !ResponsiveBreakpoints.of(context).isMobile ? 650 : 250,
              child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Build and write better notes with NOTERG',
                  style: AfacadFluxFont.afacadBold.copyWith(
                    color: ColorsApp.white,
                  fontSize: !ResponsiveBreakpoints.of(context).isMobile ? 60 : 40
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  textAlign: TextAlign.center,
                  'Notes more eficient, \nmore atracctive and more nice.',
                  style: RobotoFont.robotoRegular.copyWith(
                    color: ColorsApp.white,
                    fontSize: !ResponsiveBreakpoints.of(context).isMobile ? 20 : 15
                  ),
                ),
                SizedBox(height: 20,),

                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  layout: ResponsiveBreakpoints.of(context).isMobile ? 
                   ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                   children: [
                    ResponsiveRowColumnItem(
                      child: BottomButton(
                        textColor: ColorsApp.black,
                        text: 'Download for free',
                        assetRoute: RouteAssetImages.ntd,
                        startBackground: ColorsApp.white,
                        onHoverBackground: ColorsApp.lightGrey,
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: SizedBox(height: 10, width: 10,),
                    ),
                    ResponsiveRowColumnItem(
                      child: BottomButton(
                        textColor: ColorsApp.white,
                        text: 'Github',
                        assetRoute: RouteAssetImages.github,
                        startBackground: ColorsApp.black,
                        onHoverBackground: const Color.fromARGB(255, 27, 27, 27)                      ),
                    )
                   ],
                )
              ],
            ),
            )
          )
        ],
        ),

        SizedBox(height: 35,),

        Container(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveBreakpoints.of(context).isMobile ? 0 : 15),
          width: ResponsiveBreakpoints.of(context).screenWidth,
          height: 500,
          color: const Color.fromARGB(255, 203, 203, 203),
          child: SizedBox(
            child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              AssetsImpl(
                assetRoute: RouteAssetImages.coding,
                width: ResponsiveBreakpoints.of(context).screenWidth,
                height: 450,
              ),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 400,
                  child: Text(
                  textAlign: TextAlign.center,
                  'See Noterg in action',
                  style: RobotoMono.bold.copyWith(
                    color: ColorsApp.white,
                    fontSize: ResponsiveBreakpoints.of(context).isMobile ? 40 : 60
                  ),
                ),
                )
              )
            ],
          ),
          )
        ),

        // Todo: 
        SizedBox(height: 35,),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(
            ResponsiveBreakpoints.of(context).isMobile ? 30 : 35
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsApp.black,
          ),
          width: ResponsiveBreakpoints.of(context).screenWidth,
          child: Text(
            textAlign: TextAlign.center,
            'Build to have an simple\nexperience in the writing',
            style: RobotoMono.regular.copyWith(
              color: ColorsApp.white,
              fontSize: ResponsiveBreakpoints.of(context).isMobile ? 15 : 20
            ),
          ),
        ),

        SizedBox(
          height: 35,
        ),
        ViewTools(
          assetRoute: RouteAssetImages.google, 
          title: '📦 Import fonts, icons or utils from Google', 
          content: 'Import packages, fonts or utils from Google and import them in your project, just like you would in a local Google keep  or with Google docs. Sampling packages has never been easier. '
        ),
        SizedBox(height: 70,),
        ViewTools(
          assetRoute: RouteAssetImages.document, 
          title: '⚡ faster and nice ', 
          content: 'Noterg provides you with embed documents, who you can personalize and importing to other documents like “Word”'
        ),
        SizedBox(height: 70,),
        ViewTools(
          assetRoute: RouteAssetImages.phone, 
          title: '📱 Integrate and build with any screen', 
          content: 'Noterg have the ability to make notes or projects with different devices and  build them in real time'
        ),
        SizedBox(height: 70,),
        ViewTools(
          assetRoute: RouteAssetImages.key, 
          title: '🔒 Protection and Privacy at All Times', 
          content: 'Your security is our priority. With advanced encryption technology, keep your data safe and private at all times.'
        ),
        SizedBox(height: 35,)
      ],
    );
  }
}