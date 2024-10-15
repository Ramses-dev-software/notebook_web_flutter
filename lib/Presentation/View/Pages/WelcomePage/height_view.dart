
import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/button_getstarted.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class HeightViewPage extends StatefulWidget {
  const HeightViewPage({super.key});

  @override
  State<HeightViewPage> createState() => _HeightViewPageState();
}

class _HeightViewPageState extends State<HeightViewPage> {
  final Color appBarColor = Colors.white;
  final double toolbarHeight = 100;
  
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: appBarColor,
      surfaceTintColor: ColorsApp.white,
      elevation: 40,
      floating: false,
      pinned: true,
      expandedHeight: toolbarHeight,
      toolbarHeight: toolbarHeight,
      shadowColor: ColorsApp.black,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.symmetric(horizontal: 20),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
                FlutterLogo(
                  textColor: Colors.black,
                  style: FlutterLogoStyle.horizontal,
                  size: 110,
                ),
                ButtonGetstarted(
                  toRoute: '/start_loginpage',
                  text: 'Get Started',
                  gradient: [Colors.lightBlue, Colors.blue, const Color.fromARGB(255, 4, 46, 67)],
                  textColor: ColorsApp.white,
                )
          ],
        ),
      )
    );
  }
}
