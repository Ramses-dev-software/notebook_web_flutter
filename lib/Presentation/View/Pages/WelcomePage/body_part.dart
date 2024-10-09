import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/button_start.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class BodyPartPage extends StatelessWidget {
  final int? currentPage;
  final PageController? pageController;
  const BodyPartPage({super.key, this.currentPage, this.pageController});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: 450,
            width: 350,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Start writing everything you can imagine :D',
                textScaler: TextScaler.linear(1),
                style: TextStylesApp.lightPoppinsFonts[5],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'No one starts with all, the time its the one who gives you everything...',
                style: TextStylesApp.lightPoppinsFonts[0],
              ),

              SizedBox(height: 50,),

              ButtonStart(background: ColorsApp.white,)
            ],
        )
    ),
    );
  }
}
