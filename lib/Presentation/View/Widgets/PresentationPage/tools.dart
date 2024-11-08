import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
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
      duration: Duration(milliseconds: 400),
      curve: Curves.ease,
      child: Container(
      padding: EdgeInsets.only(top: ResponsiveBreakpoints.of(context).isMobile ? 40 : 140, left: 20, right: 20, bottom: 20),
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
                        ResponsiveBreakpoints.of(context).isMobile ? 30 : 60,
                  ),
                ),
                Text(
                  widget.subTitle,
                  style: RobotoMono.regular.copyWith(
                      fontSize:
                          ResponsiveBreakpoints.of(context).isMobile ? 18 : 23),
                ),
                ResponsiveRowColumnItem(
            child: widget.complement ?? SizedBox(height: 40, width: 40,),
          ),
              ],
            ),
          ),
        ],
      ),
          ),

          ResponsiveRowColumnItem(
            child: AssetsImpl(
              assetRoute: widget.assetRoute,
              width: ResponsiveBreakpoints.of(context).isMobile ? null : 400,
              height: ResponsiveBreakpoints.of(context).isMobile ? null : 700,
            ),
          ),
         ],
       ) : 
       Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 750,
            child: Column(
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: RobotoMono.bold.copyWith(
                    fontSize:
                        ResponsiveBreakpoints.of(context).isMobile ? 30 : 60,
                  ),
                ),
                Text(
                  widget.subTitle,
                  textAlign: TextAlign.center,
                  style: RobotoMono.regular.copyWith(
                      fontSize:
                          ResponsiveBreakpoints.of(context).isMobile ? 18 : 23),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 70,
          ),
          AssetsImpl(
            assetRoute: widget.assetRoute,
            width: ResponsiveBreakpoints.of(context).screenWidth,
            height: ResponsiveBreakpoints.of(context).isMobile ? 400 : 500,
          )
        ],
      ),
      )
     ), 
    );
  }
}
