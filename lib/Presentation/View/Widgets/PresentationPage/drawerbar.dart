import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_button.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/dropdown_sections.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/logo.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Drawerbar extends StatefulWidget {
  const Drawerbar({super.key});

  @override
  State<Drawerbar> createState() => _DrawerbarState();
}

class _DrawerbarState extends State<Drawerbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                      LogoNoterg(
                        backgroundColor: ColorsApp.black, logoTheme: LogoTheme.light,
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
                title: AppbarButton.signIn(),
              ),
              ListTile(
                title: AppbarButton.download(),
              ),
              ListTile(title: DropdownSections())
            ],
          ),
        ));
  }
}
