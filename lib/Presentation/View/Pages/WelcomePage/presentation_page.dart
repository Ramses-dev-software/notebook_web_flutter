import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body_view.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_button.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/dropdown_sections.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/logo.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PresentationPage extends StatelessWidget {
  const PresentationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      endDrawer: ResponsiveBreakpoints.of(context).screenWidth <= 690
          ? Drawer(

            width: ResponsiveBreakpoints.of(context).screenWidth,
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
                            LogoNoterg(backgroundColor: ColorsApp.black,),
                            IconButton(
                                onPressed: () =>
                                    Scaffold.of(context).closeEndDrawer(),
                                icon: Icon(Icons.close))
                          ],
                        ),
                    ),),
                    ListTile(
                      title: AppbarButton.signIn(),
                    ),
                    ListTile(
                      title: AppbarButton.download(),
                    ),
                    ListTile(
                      title: DropdownSections()
                    )
                  ],
                ),
              ))
          : null,
      body: BodyView(),
    );
  }
}
