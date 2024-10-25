import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/row_section.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/ticket_section.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RowColumnResponsiveSection extends StatelessWidget {
  final String ticketTitle;
  final String title;
  final String content;
  final String routeImage;

  const RowColumnResponsiveSection(

      {super.key,
      required this.ticketTitle,
      required this.title,
      this.content = '',
      required this.routeImage
      }
    );

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveBreakpoints.of(context).screenWidth >= 1100 ? 100 : 25),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                RowSection(),
                SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    thickness: 2,
                    color: ColorsApp.black,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            _SectionAbout(
                ticketTitle: ticketTitle,
                title: title,
                content: content,
                routeGif: routeImage)
          ],
        ));
  }
}

class _SectionAbout extends StatelessWidget {
  final String ticketTitle;
  final String title;
  final String content;
  final String routeGif;

  const _SectionAbout(
      {super.key,
      required this.ticketTitle,
      required this.title,
      required this.content,
      required this.routeGif});

  (double? width, double? height) _imageDimensions(BuildContext context) {
    if(ResponsiveBreakpoints.of(context).screenWidth >= 800 &&
     ResponsiveBreakpoints.of(context).screenWidth <= 1000) {
      return (270, 270);
    }
    
    if(ResponsiveBreakpoints.of(context).screenWidth > 1000) {
      return (300, 300);
    }
    return (400, 200);
  }

  @override
  Widget build(BuildContext context) {
    var (width, height) = _imageDimensions(context);

    return Expanded(
      child: ResponsiveRowColumn(
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          layout: ResponsiveBreakpoints.of(context).screenWidth <= 930
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
                child: SizedBox(
              width: ResponsiveBreakpoints.of(context).isTablet ? 350 : 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketSection(text: ticketTitle, width: 200),
                  Text(
                    title,
                    style: AfacadFluxFont.afacadBold.copyWith(
                        fontSize: !Responsive.onDesktop(context) ? 25 : 50,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    content,
                    style: RobotoFont.robotoRegular
                        .copyWith(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            )),
            ResponsiveRowColumnItem(
              child: SizedBox(
                width: ResponsiveBreakpoints.of(context).isDesktop ? 100 : 30,
              ),
            ),
            ResponsiveRowColumnItem(
                child: AssetsIM(
              assetRoute: routeGif,
              width: width,
              height: height,
            ))
          ]),
    );
  }
}
