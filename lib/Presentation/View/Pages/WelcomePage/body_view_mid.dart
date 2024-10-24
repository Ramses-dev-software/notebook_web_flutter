import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Containers/ticket_section.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Responsive/row_column.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class BodyViewMid extends StatelessWidget {
  const BodyViewMid({super.key});

  @override
  SliverToBoxAdapter build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: ColorsApp.white,
        child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.onMobile(context) ? 20 : 70
        ), 
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
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
                            fontSize: Responsive.onMobile(context) ? 40 : 60, overflow: TextOverflow.clip),
                      )
                    ],
                ),
              )
            ),
            SizedBox(
              height: 50,
            ),
            RowColumnResponsiveSection(),
          ],
        ),
      ),
    ),
      );
  }
}