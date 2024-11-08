import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_option.dart';

class DropdownSections extends StatefulWidget {
  const DropdownSections({super.key});

  @override
  State<DropdownSections> createState() => _DropdownSectionsState();
}

class _DropdownSectionsState extends State<DropdownSections> {
  
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Sections',
        style: RobotoMono.bold,
      ),
      collapsedBackgroundColor: ColorsApp.black,
      backgroundColor: ColorsApp.black,
      textColor: ColorsApp.white,
      collapsedTextColor: ColorsApp.white,
      iconColor: ColorsApp.white,
      collapsedIconColor: ColorsApp.white,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: Alignment(-1, 0),
      children: [
        AppbarOption(text: 'Forum'),
        SizedBox(height: 10,),
        AppbarOption(text: 'Blog'),
        SizedBox(height: 10,),
        AppbarOption(text: 'Docs')
      ],
    );
  }
}