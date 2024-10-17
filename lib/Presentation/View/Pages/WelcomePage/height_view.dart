import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/button_getstarted.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        pinned: true,
        expandedHeight: toolbarHeight,
        toolbarHeight: toolbarHeight,
        shadowColor: ColorsApp.black,
        flexibleSpace: FlexibleSpaceBar(
            titlePadding: EdgeInsets.symmetric(horizontal: 20),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    OnBackground(
                          width: 50,
                          height: 120,
                          assetRoute:
                              '/home/ramses/Develop/flutter_dev/notebook_web_flutter/notebook_web/assets/images/NTAssets.png',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Noterg',
                          style: RobotoFont.robotoBlack,
                        ),
                  ],
                ),
                        ButtonGetstarted(
                          toRoute: '/start_loginpage',
                          text: 'Get Started',
                          gradient: [
                            Colors.yellow,
                            ColorsApp.orange,
                            const Color.fromARGB(255, 255, 115, 0)
                          ],
                          textColor: ColorsApp.white,
                        )
                      ],
                    ),
            ));
  }
}
