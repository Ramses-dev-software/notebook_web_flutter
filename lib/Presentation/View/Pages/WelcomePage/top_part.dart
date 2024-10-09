
import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class TopWelcomepage extends StatelessWidget {
  const TopWelcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 20,
        toolbarHeight: 85,
        backgroundColor: ColorsApp.white,
        surfaceTintColor: ColorsApp.white,
        shadowColor: ColorsApp.black,
        title: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlutterLogo(
                  style: FlutterLogoStyle.horizontal,
                  size: 110,
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                      }, 
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Sign up', style: TextStylesApp.lightPoppinsFonts[0],),
                      )
                    ),

                    SizedBox(width: 10,),

                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, '/start_loginpage');
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get started',
                              style: TextStylesApp.darkPoppinsFonts[1],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )));
  }
}
