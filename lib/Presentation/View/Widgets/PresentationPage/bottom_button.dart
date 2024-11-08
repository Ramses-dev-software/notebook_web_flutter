import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/AssetsApp/assets_images.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';

enum ColorLogo { black, white }

class BottomButton extends StatefulWidget {
  final String text;
  final String assetRoute;
  final Color? startBackground;
  final Color? onHoverBackground;
  final Color textColor;
  const BottomButton(
      {super.key,
      required this.textColor,
      required this.text,
      this.startBackground,
      this.onHoverBackground,
      required this.assetRoute});

  factory BottomButton.download(ColorLogo color) {
    return BottomButton(
      textColor: ColorsApp.black,
      text: 'Download for free',
      assetRoute: color == ColorLogo.black ? RouteAssetImages.ntd : RouteAssetImages.ntl,
      startBackground: ColorsApp.white,
      onHoverBackground: ColorsApp.lightGrey,
    );
  }

  factory BottomButton.github() {
    return BottomButton(
        textColor: ColorsApp.white,
        text: 'Github',
        assetRoute: RouteAssetImages.github,
        startBackground: ColorsApp.black,
        onHoverBackground: const Color.fromARGB(255, 27, 27, 27));
  }

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  bool onHover = false;

  void _buttonHover() {
    setState(() {
      onHover = !onHover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _buttonHover(),
      onExit: (_) => _buttonHover(),
      child: InkResponse(
          mouseCursor: SystemMouseCursors.click,
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
              decoration: BoxDecoration(
                color:
                    onHover ? widget.onHoverBackground : widget.startBackground,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AssetsImpl(
                    assetRoute: widget.assetRoute,
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.text,
                    style: RobotoMono.bold
                        .copyWith(fontSize: 15, color: widget.textColor),
                  ),
                ],
              ))),
    );
  }
}
