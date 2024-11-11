import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_option.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/logo.dart';
import 'package:responsive_framework/responsive_framework.dart';

const _changeLog = <AppbarOption>[
  AppbarOption(text: 'Github'),
  AppbarOption(text: 'Youtube'),
  AppbarOption(text: 'X'),
];

const _company = <AppbarOption>[
  AppbarOption(text: 'Blog'),
  AppbarOption(text: 'Forum'),
  AppbarOption(text: 'Docs'),
];

class BottomView extends StatelessWidget {
  const BottomView({super.key});

  Widget _buildListWidgets(
      BuildContext context, String headerSection, List<AppbarOption> option) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerSection,
          style:
              RobotoMono.regular.copyWith(fontSize: 14, color: ColorsApp.white),
        ),
        SizedBox(height: 12,),
        Column(
          children: option,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(20),
            color: ColorsApp.black,
            child: ResponsiveRowColumn(
              columnMainAxisAlignment: MainAxisAlignment.center,
              rowMainAxisAlignment: MainAxisAlignment.start,
              layout: ResponsiveBreakpoints.of(context).isMobile
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              children: [
                ResponsiveRowColumnItem(
                  child: const LogoNoterg(
                    logoTheme: LogoTheme.light,
                  ),
                ),
                ResponsiveRowColumnItem(
                  child: ResponsiveRowColumn(
                    rowMainAxisAlignment: MainAxisAlignment.spaceAround,
                    layout: ResponsiveRowColumnType.ROW,
                    children: [
                      ResponsiveRowColumnItem(
                        child:
                            _buildListWidgets(context, "Changelog", _changeLog),
                      ),
                      ResponsiveRowColumnItem(
                        child: _buildListWidgets(context, "Company", _company),
                      )
                    ],
                  ),
                )
              ],
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: AlignmentDirectional.centerStart,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 194, 192, 192),
              borderRadius: BorderRadius.circular(10)),
          child: Text(
            'Made by: Ramses Garcia Sanchez',
            style: RobotoMono.regular.copyWith(fontSize: 15),
          ),
        )
      ],
    );
  }
}
