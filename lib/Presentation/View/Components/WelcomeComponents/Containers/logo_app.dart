import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';


class LogoApp extends StatelessWidget {
  final Color? background;
  final Color? textColor;
  final double width;
  final double height;
  const LogoApp({
    super.key, this.background, this.textColor, required this.height, required this.width});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 50,
      decoration: BoxDecoration(
          color: background, borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          AssetsIM(
            assetRoute: RouteAssetImages.notelogo,
            width: 60,
            height: 60,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Noterg',
            style: AfacadFluxFont.afacadBold
                .copyWith(color: textColor, fontSize: 18),
          ),
        ],
      ),
    );
  }
}


