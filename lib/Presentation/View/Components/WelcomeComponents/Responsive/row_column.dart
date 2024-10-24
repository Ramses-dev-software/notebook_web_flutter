import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/row_section.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/ticket_section.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RowColumnResponsiveSection extends StatelessWidget {
  const RowColumnResponsiveSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RowSection(),
            SizedBox(
              height: 550,
              child: VerticalDivider(
                thickness: 2,
                color: ColorsApp.black,
              ),
            ),
            RowSection()
          ],
        ),
        SizedBox(
          width: 10,
        ),
        SectionAbout(
          ticketTitle: 'Google packages',
          title: 'Import fonts, icons or utils from Google',
          content:
              'Import packages, fonts or utils from Google and import them in your project, just like you would in a local Google keep  or with Google docs. Sampling packages has never been easier. ',
          routeGif: RouteAssetImages.google,
        )
      ],
    );
  }
}

class SectionAbout extends StatelessWidget {
  final String ticketTitle;
  final String title;
  final String content;
  final String routeGif;

  const SectionAbout(
      {super.key,
      required this.ticketTitle,
      required this.title,
      required this.content,
      required this.routeGif});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ResponsiveRowColumn(
          layout: ResponsiveBreakpoints.of(context).isMobile ||
                  ResponsiveBreakpoints.of(context).isTablet
              ? ResponsiveRowColumnType.COLUMN
              : ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
                child: SizedBox(
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TicketSection(text: ticketTitle, width: 200),
                  Text(
                    title,
                    style: AfacadFluxFont.afacadBold.copyWith(
                        fontSize: Responsive.onDesktop(context) ? 50 : 40,
                        overflow: TextOverflow.clip),
                  ),
                  Text(
                    content,
                    style: RobotoFont.robotoRegular
                        .copyWith(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            )),
            ResponsiveRowColumnItem(
              child: SizedBox(
                width: 50,
              ),
            ),
            ResponsiveRowColumnItem(
                child: SizedBox(
                width: ResponsiveBreakpoints.of(context).screenWidth >= 750
                    ? 600
                    : null,
                child: AssetsIM(
                  assetRoute: routeGif,
                ),
            ))
          ]),
    );
  }
}
