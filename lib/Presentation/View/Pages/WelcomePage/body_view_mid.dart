import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/positive_qualities.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/ticket_section.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/tools.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Responsive/row_column.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body_view_bottom.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BodyViewMid extends StatelessWidget {
  const BodyViewMid({super.key});

  @override
  SliverToBoxAdapter build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: ColorsApp.white,
        child: Column(children: [
          SizedBox(
            height: 150,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(30),
                width: !Responsive.onMobile(context) ? 700 : null,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TicketSection(
                        width: 250,
                        text:
                            'Build to have an simple experience in the writing'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'Noterg have the design and style at you fingertips',
                      style: AfacadFluxFont.afacadBold.copyWith(
                          fontSize: Responsive.onMobile(context) ? 40 : 60,
                          overflow: TextOverflow.clip),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 50,
          ),
          RowColumnResponsiveSection(
            ticketTitle: 'Google packages',
            title: 'Import fonts, icons or utils from Google',
            content:
                'Import packages, fonts or utils from Google and import them in your project, just like you would in a local Google keep  or with Google docs. Sampling packages has never been easier.',
            routeImage: RouteAssetImages.google,
          ),
          RowColumnResponsiveSection(
              ticketTitle: 'Embed documents',
              title: 'Simple document, faster and nice ',
              content:
                  'Noterg provides you with embed documents, who you can personalize and importing to other documents like “Word”',
              routeImage: RouteAssetImages.document),
          RowColumnResponsiveSection(
              ticketTitle: 'Integrate',
              title: 'Integrate and build with any screen',
              routeImage: RouteAssetImages.phone),
          Container(
            width: ResponsiveBreakpoints.of(context).screenWidth,
            color: ColorsApp.lightGrey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                    padding: EdgeInsets.all(20),
                    width: 700,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TicketSection(text: 'Noterg tools', width: 150),
                        Text(
                          textAlign: TextAlign.center,
                          'The power of Noterg to build notes and designs',
                          style: AfacadFluxFont.afacadBold.copyWith(
                              fontSize:
                                  !ResponsiveBreakpoints.of(context).isDesktop
                                      ? 40
                                      : 70),
                        )
                      ],
                    )),
                SizedBox(
                  height: 30,
                ),
                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  layout: ResponsiveBreakpoints.of(context).screenWidth <= 1000
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                  children: [
                    ResponsiveRowColumnItem(
                      child: ToolsCard(
                          ticketTitle: 'Analyze',
                          routeImage: RouteAssetImages.autocomplete,
                          content:
                              'IntelliSense is built directly into the editor, allowing you to quickly preview documentation, jump to sources, apply quick fixes and more. '),
                    ),
                    ResponsiveRowColumnItem(
                      child: SizedBox(
                        width: ResponsiveBreakpoints.of(context).isDesktop
                            ? 20
                            : null,
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: ToolsCard(
                          ticketTitle: 'AI-Tool',
                          routeImage: RouteAssetImages.ai,
                          content:
                              'IntelliSense is built directly into the editor, allowing you to quickly preview documentation, jump to sources, apply quick fixes and more. '),
                    )
                  ],
                ),
                ToolsCard(
                    ticketTitle: 'Navigate',
                    routeImage: RouteAssetImages.files,
                    content:
                        'IntelliSense is built directly into the editor, allowing you to quickly preview documentation, jump to sources, apply quick fixes and more. '),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
              padding: EdgeInsets.all(ResponsiveBreakpoints.of(context).isMobile ? 20 : 30),
              child: ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                layout: ResponsiveBreakpoints.of(context).screenWidth <= 870
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                      child: SizedBox(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TicketSection(text: 'Integrate', width: 200),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Superpower your workflow with collaborative notes and fasting build in real-time',
                          style:
                              AfacadFluxFont.afacadBold.copyWith(fontSize: 35),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Bring the power of Noterg! to your own workflow. Rapidly build, instantly analyze and collaborative notes in real-time with other people.',
                          style: RobotoFont.robotoRegular
                              .copyWith(fontSize: 17, color: Colors.grey),
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          color: ColorsApp.lightGrey,
                          child: Column(
                            children: [
                              PositiveQualities(
                                  content:
                                      'Bring the power of Noterg! to your own workflow. Rapidly build, instantly analyze and collaborative notes in real-time with other people.'),
                              SizedBox(
                                height: 10,
                              ),
                              PositiveQualities(
                                content:
                                    'Bring the power of Noterg! to your own workflow. Rapidly build, instantly analyze and collaborative notes in real-time with other people.',
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              PositiveQualities(
                                content:
                                    'Bring the power of Noterg! to your own workflow. Rapidly build, instantly analyze and collaborative notes in real-time with other people.',
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  ResponsiveRowColumnItem(
                    child: AssetsIM(
                      assetRoute: RouteAssetImages.notephone,
                      height: ResponsiveBreakpoints.of(context).screenWidth <= 1000 ? 600 : 1000,
                      width: ResponsiveBreakpoints.of(context).screenWidth <= 1000 ? 300 : 400,
                    ),
                  )
                ],
              )),
            
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(20),
              child: BodyViewBottom(),
            )
        ]),
      ),
    );
  }
}
