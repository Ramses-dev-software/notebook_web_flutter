import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:notebook_web/main.dart';

final class TextSectionContent {
  // Todo: Titles sections
  static String firstTitle = 'Start writing your ideas!!';
  static String secondTitle = 'Save your notes, and be safe with Cloud Sync';
  static String thirdTitle = 'Reach users on every screen';
  static String fourthTitle = 'Collaborative notes with other people';
  static String fiveTitle = 'Rich Format to good designs';

  // Todo: Info sections
  static String first = """
Start using notept to dreaming!!
""";

  static String second = """
Notept allow users to sync their notes between devices, storing them in the cloud.
  """;
  static String third = """
Notept have compatibility with all devices, mobile, desktop and web.
You can dream with everything!!
""";
  static String fourth = """
Notept offfer the possibility of sharing notes with other users and working on them in real time, similar to Google Docs. This is especially useful for teamwork or shared projects.
""";
  static String five = """
Provides the ability to format notes, allowing for bold text, italics, bulleted lists, headings, links, etc. You could also allow inserting images and attachments
""";
}

class SectionAbout extends StatelessWidget {
  final String routeImage;
  final String titleSection;
  final String content;

  const SectionAbout(
      {super.key,
      required this.routeImage,
      required this.titleSection,
      required this.content});

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).width;

    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 450) {
          return Center(
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  OnBackground(
                    assetRoute: routeImage,
                    width: 450,
                    height: 450,
                  ),
                  SizedBox(
                      child: Column(
                    children: [
                      Text(
                        titleSection,
                        style: RobotoFont.robotoBlack.copyWith(fontSize: 25),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        content,
                        style: AfacadFluxFont.afacadThin.copyWith(fontSize: 20),
                      )
                    ],
                  )),
                ],
              ),
            ),
          );
        } 
        else {
          return Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          titleSection,
                          style: RobotoFont.robotoBlack.copyWith(fontSize: 50),
                        ),
                        Text(
                          content,
                          style:
                              AfacadFluxFont.afacadThin.copyWith(fontSize: 30),
                        )
                      ],
                    ),
                  OnBackground(
                    assetRoute: routeImage,
                    width: 400,
                    height: 400,
                  )
              ],
            ),
          );
        }
      },
    );
  }
}
