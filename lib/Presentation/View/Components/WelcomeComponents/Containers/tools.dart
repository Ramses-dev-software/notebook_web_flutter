import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/ticket_section.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ToolsCard extends StatelessWidget {
  final String routeImage;
  final String ticketTitle;
  final String content;

  const ToolsCard({
    super.key,
    required this.ticketTitle,
    required this.routeImage,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ResponsiveBreakpoints.of(context).screenWidth >= 530 ? 450 : null,
      height: 500,
      child: Card(
      color: ColorsApp.lightGrey,
      shape: Border.fromBorderSide(BorderSide(width: 2, color: ColorsApp.black)),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            OnBackground(
              alignment: Alignment.centerLeft,
              assetRoute: routeImage,
              height: 250,
              width: double.infinity,
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: TicketSection(
              text: ticketTitle, 
              width: 120
            ),
            ),
            SizedBox(height: 10,),
            Text(content, style: RobotoFont.robotoRegular.copyWith(fontSize: 17),)
          ],
        ),
      )
    ),
    );
  }
}