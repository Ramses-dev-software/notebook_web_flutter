import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:visibility_detector/visibility_detector.dart';

enum FormSection { twoColumns, oneColumn }

class ToolsSections extends StatefulWidget {
  final String title;
  final String subTitle;
  final String assetRoute;
  final FormSection? form;
  final Widget? complement;
  final List<Color> gradient;
  final String keyV;

  const ToolsSections(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.assetRoute,
      required this.gradient,
      this.complement,
      required this.keyV,
      this.form = FormSection.oneColumn});

  @override
  State<ToolsSections> createState() => _ToolsSectionsState();
}

class _ToolsSectionsState extends State<ToolsSections> {
  double opacity = 0;

  void _changeOpacity(VisibilityInfo info) {
    if(info.visibleFraction > 0) {
      setState(() {
        opacity = 1;
      });
    }
    else {
      setState(() {
        opacity = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.keyV),  
      onVisibilityChanged: _changeOpacity,
      child: AnimatedOpacity(
      opacity: opacity,
      duration: Duration(seconds: 1),
      curve: Curves.ease,
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).isMobile ? 20 : 40, vertical: 35),
      width: ResponsiveBreakpoints.of(context).screenWidth,
      decoration: BoxDecoration(gradient: LinearGradient(colors: widget.gradient)),
      child: widget.form == FormSection.twoColumns ? 
       
       ResponsiveRowColumn(
        rowMainAxisAlignment: MainAxisAlignment.center,
        columnCrossAxisAlignment: CrossAxisAlignment.center,
        layout: ResponsiveBreakpoints.of(context).screenWidth <= 1030 ? ResponsiveRowColumnType.COLUMN
         : ResponsiveRowColumnType.ROW,
         children: [

          ResponsiveRowColumnItem(
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 500,
            child: Column(
              children: [
                Text(
                  widget.title,
                  style: RobotoMono.bold.copyWith(
                    fontSize:
                        ResponsiveBreakpoints.of(context).isMobile ? 27 : 40,
                  ),
                ),
                Text(
                  widget.subTitle,
                  style: RobotoMono.regular.copyWith(
                      fontSize:
                          ResponsiveBreakpoints.of(context).isMobile ? 15 : 20),
                ),
                ResponsiveRowColumnItem(
            child: widget.complement ?? SizedBox(height: 80, width: 40,),
          ),
              ],
            ),
          ),
        ],
      ),
          ),

          ResponsiveRowColumnItem(
            child: Card.filled(
              elevation: 20,
              color: Colors.transparent,
              child:AssetsImpl(
            assetRoute: widget.assetRoute,
            width: null,
            height: 500,
          )
            )
          ),
         ],
       ) : 
       Column(
        children: [
          SizedBox(
            width: 750,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.start,
                  style: RobotoMono.bold.copyWith(
                    fontSize:
                        ResponsiveBreakpoints.of(context).isMobile ? 27 : 40,
                  ),
                ),
                Text(
                  widget.subTitle,
                  textAlign: TextAlign.start,
                  style: RobotoMono.regular.copyWith(
                      fontSize:
                          ResponsiveBreakpoints.of(context).isMobile ? 15 : 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: !ResponsiveBreakpoints.of(context).isDesktop ? null : 800,
            child: Card.filled(
              elevation: 20,
              color: Colors.transparent,
              child: AssetsImpl(
            assetRoute: widget.assetRoute,
            width: !ResponsiveBreakpoints.of(context).isMobile ? null : 700,
            height: null,
            ),
            )
          )
        ],
      ),
      )
     ), 
    );
  }
}
