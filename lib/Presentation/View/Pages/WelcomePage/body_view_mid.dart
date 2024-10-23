import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/information_column_start.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BodyViewMid extends StatelessWidget {
  const BodyViewMid({super.key});

  @override
  SliverToBoxAdapter build(BuildContext context) {
    return SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ResponsiveBreakpoints.of(context).isMobile ? 20 : 30),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  width: 1000,
                  decoration: BoxDecoration(
                      color: ColorsApp.orange,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      // AssetsIM(
                      //   width: 50,
                      //   height: 50,
                      //   assetRoute: RouteAssetImages.screamAsset,
                      // ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Text(
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.left,
                        "Noterg is an notebook with a powerful system to make notes.",
                        style: RobotoFont.robotoRegular
                            .copyWith(fontSize: 18,
                            color: ColorsApp.white),
                          ),
                      )
                    ],
                  ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 800,
                child: Text(
                  textAlign: TextAlign.center,
                  "Noterg transforms the writing process. Build, design, and deploy beautiful notes, and embedded experiences from a good app.",
                  style: RobotoFont.robotoRegular.copyWith(
                    fontSize: 25
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // AssetsIM(
              //   assetRoute: RouteAssetImages.appRemovebgAsset,
              // ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                child: Divider(
                  color: ColorsApp.black,
                  thickness: 3,
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                child: ResponsiveRowColumn(
                  layout: ResponsiveBreakpoints.of(context).screenWidth <= 800
                      ? ResponsiveRowColumnType.COLUMN
                      : ResponsiveRowColumnType.ROW,
                      columnMainAxisAlignment: MainAxisAlignment.center,
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ResponsiveRowColumnItem(
                      child: InformationColumnStart(
                        titleSpace: "Eficient, faster and optimized",
                        contentSpace: "Speed and performance in every task.",
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: InformationColumnStart(
                        titleSpace: "An simple app performant by design",
                          contentSpace:
                              "Designed to be simple and efficient, maximizing usability."),
                    ),
                    ResponsiveRowColumnItem(
                      child: InformationColumnStart(
                        titleSpace: "Collaborative projects",
                        contentSpace:
                            "acilitates real-time collaboration between multiple users.",
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 400,),

            ],
          ),
        ),
            );
  }
}