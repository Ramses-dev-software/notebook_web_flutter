import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/AssetsApp/assets_images.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';

enum LogoTheme { light, dark }

class LogoNoterg extends StatelessWidget {
  final Color? backgroundColor;
  final LogoTheme? logoTheme;
  const LogoNoterg({super.key, this.backgroundColor, this.logoTheme});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AssetsImpl(
            assetRoute: logoTheme == LogoTheme.light ? RouteAssetImages.ntd : RouteAssetImages.ntl,
            width: 25,
            height: 25,
          ),
          SizedBox(width: 10,),
          Text(
            'NOTERG',
            style: AfacadFluxFont.afacadBlack.copyWith(
              fontSize: 25,
              color: ColorsApp.white
            ),
          )
        ],
      ),
    );
  }
}