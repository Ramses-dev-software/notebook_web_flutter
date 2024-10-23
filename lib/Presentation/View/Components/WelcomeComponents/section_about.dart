import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

enum SectionDirection { left, right }

class SectionAbout extends StatelessWidget {
  final String routeImage;
  final String titleSection;
  final String content;
  final SectionDirection directionContent;

  const SectionAbout(
      {super.key,
      required this.routeImage,
      required this.titleSection,
      required this.content,
      required this.directionContent
    });
  
  double _setTitleFontSize(BuildContext context) => ResponsiveBreakpoints.of(context).isMobile || 
                      ResponsiveBreakpoints.of(context).isTablet ? 50 : 75;
  
  double _setImageSizeWidth(BuildContext context) => ResponsiveBreakpoints.of(context).screenWidth <= 1000 ? 
                300 : 500; 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ResponsiveBreakpoints.of(context).screenWidth,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(BorderSide(color: ColorsApp.black, width: 1.0),
      ),
    ),
      child: ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.spaceAround,
        columnMainAxisAlignment: MainAxisAlignment.center,
        layout: ResponsiveBreakpoints.of(context).screenWidth <= 950 ? 
          ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
        children: directionContent == SectionDirection.right ? 
          <ResponsiveRowColumnItem>[
            ResponsiveRowColumnItem(
            child: SizedBox(
              width: 500,
              child: Column(
              children: [
                Text(
                  titleSection,
                  style: AfacadFluxFont.afacadBlack.copyWith(
                    fontSize: _setTitleFontSize(context)
                  ),
                ),
                Text(
                  content,
                  style: RobotoFont.robotoRegular.copyWith(
                    fontSize: 17
                  ),
                )
              ],
            ),
            )
          ),
          ResponsiveRowColumnItem(
            child: AssetsIM(
              assetRoute: RouteAssetImages.ai,
              height: 260,
              width: _setImageSizeWidth(context)
            ),
          )] 
          : 
          <ResponsiveRowColumnItem>[
            
          ResponsiveRowColumnItem(
            child: AssetsIM(
              assetRoute: routeImage,
              width: ResponsiveBreakpoints.of(context).screenWidth <= 1000 ? 
                300 : 500,
            ),
          ),
            
            ResponsiveRowColumnItem(
            child: SizedBox(
              width: 600,
              child: Column(
              children: [
                Text(
                  titleSection,
                  style: AfacadFluxFont.afacadBlack.copyWith(
                    fontSize: ResponsiveBreakpoints.of(context).isMobile || 
                      ResponsiveBreakpoints.of(context).isTablet ? 50 : 80
                  ),
                ),
                Text(
                  content,
                  style: RobotoFont.robotoRegular.copyWith(
                    fontSize: 20
                  ),
                )
              ],
            ),
            )
          ),
          ],
      ),
    );
  }
}