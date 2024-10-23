import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/app_bar_button.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/logo_app.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body_view.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: !ResponsiveBreakpoints.of(context).isDesktop
          ? Drawer(
              width: ResponsiveBreakpoints.of(context).screenWidth - 40,
              backgroundColor: ColorsApp.white,
              child: Builder(
                builder: (context) => ListView(
                  children: [
                    SizedBox(
                      height: 100,
                      child: DrawerHeader(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LogoApp(
                              width: 60,
                              height: 100,
                              background: Colors.black,
                              textColor: ColorsApp.white,
                            ),
                            IconButton(
                                onPressed: () =>
                                    Scaffold.of(context).closeEndDrawer(),
                                icon: Icon(Icons.close))
                          ],
                        ),
                    ),
                    ), 
                    ListTile(
                      title: DrawerListButton(titleList: 'Sign in'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: DrawerListButton(titleList: 'Download'),
                      onTap: () {},
                    )
                  ],
                ),
              ))
          : null,
      body: BodyView(),
    );
  }
}
