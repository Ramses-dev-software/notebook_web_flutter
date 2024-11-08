import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ViewTools extends StatelessWidget {
  final String assetRoute;
  final String title;
  final String content;
  const ViewTools({
    super.key,
    required this.assetRoute,
    required this.title,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ResponsiveRowColumn(
      rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
      columnMainAxisAlignment: MainAxisAlignment.spaceEvenly,
      layout: ResponsiveBreakpoints.of(context).screenWidth <= 730 ? 
        ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
      children: [
        ResponsiveRowColumnItem(
          child: AssetsImpl(
            width:  ResponsiveBreakpoints.of(context).screenWidth <= 730 ? 100 : 140,
            height: ResponsiveBreakpoints.of(context).screenWidth <= 730 ? 100 : 140,
            assetRoute: assetRoute,
          ),
        ),
        ResponsiveRowColumnItem(
          child: SizedBox(height: 10, width: 10,),
        ),
        ResponsiveRowColumnItem(
          child: SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: RobotoMono.bold.copyWith(
                    fontSize: 30
                  ),
                ),
                Text(
                  content,
                  style: RobotoFont.robotoRegular.copyWith(
                    fontSize: 15
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
    );
  }
}