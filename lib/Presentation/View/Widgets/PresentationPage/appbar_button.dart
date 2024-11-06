import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';

class AppbarButton extends StatefulWidget {
  final String text;
  final String? assetRoute;
  final Color? startBackground;
  final Color? onHoverBackground;
  final List<Color>? gradient;
  const AppbarButton(
      {super.key,
      required this.text,
      this.assetRoute,
      this.startBackground,
      this.onHoverBackground,
      this.gradient});

  factory AppbarButton.signIn() {
    return AppbarButton(
      text: 'Sign in',
      startBackground: ColorsApp.black, 
      onHoverBackground: const Color.fromARGB(255, 236, 236, 236)
    );
  }

  factory AppbarButton.download() {
    return AppbarButton(
      text: 'Download',
      gradient: [ColorsApp.black, ColorsApp.blue],      
    );
  }

  @override
  State<AppbarButton> createState() => _AppbarButtonState();
}

class _AppbarButtonState extends State<AppbarButton> {
  bool onHover = false;

  void _buttonHover() {
    setState(() {
      onHover = !onHover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => _buttonHover(),
      onExit: (_) => _buttonHover(),
      child: InkWell(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          gradient: widget.gradient != null
              ? LinearGradient(colors: widget.gradient!)
              : null,
          color: onHover ? widget.onHoverBackground : widget.startBackground,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
                widget.text,
                style: RobotoMono.bold.copyWith(
                    fontSize: 15,
                    color: widget.gradient != null ? ColorsApp.white : onHover ? ColorsApp.black : ColorsApp.white 
                  ),
              ),
      )),
    );
  }
}
