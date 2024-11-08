import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_option.dart';
import 'package:responsive_framework/responsive_framework.dart';

const wigdetBottomChildren = <Widget>[
  AppbarOption(text: 'Github'),
  AppbarOption(text: 'Youtube'),
  AppbarOption(text: 'X'),
  
  AppbarOption(text: 'Blog'),
  AppbarOption(text: 'Forum'),
  AppbarOption(text: 'Docs'),
];

class BottomView extends StatelessWidget {
  const BottomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
        color: ColorsApp.black,
        padding: EdgeInsets.all(
            ResponsiveBreakpoints.of(context).isMobile ? 10 : 30),
        width: ResponsiveBreakpoints.of(context).screenWidth,
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 10,
              childAspectRatio:
                  ResponsiveBreakpoints.of(context).isMobile ? 2 : 5),
          children: wigdetBottomChildren,
        )),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.all(10),
          alignment: AlignmentDirectional.centerStart,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 194, 192, 192),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Text(
            'Made by: Ramses Garcia Sanchez',
            style: RobotoMono.regular.copyWith(
              fontSize: 15
            ),
          ),
        )
      ],
    );
  }
}
