import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';

class AppbarOption extends StatefulWidget {
  final String text;
  final bool? expanded;
  const AppbarOption({super.key, required this.text, this.expanded = false});

  @override
  State<AppbarOption> createState() => _AppbarOptionState();
}

class _AppbarOptionState extends State<AppbarOption> {
  bool onHover = false;

  void _buttonHover() {
    setState(() {
      onHover = !onHover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.grabbing,
      onExit: (_) => _buttonHover(),
      onEnter: (_) => _buttonHover(),
      child: InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: onHover ? ColorsApp.white : ColorsApp.black,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          widget.text,
          style: RobotoMono.bold.copyWith(
            fontSize: 15,
            color: onHover ? ColorsApp.black : ColorsApp.white
          ),
        ),
      )
      )
    );
  }
}