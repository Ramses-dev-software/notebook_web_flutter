import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/AssetsApp/assets_images.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';

class LogoNoterg extends StatelessWidget {
  final Color? backgroundColor;
  const LogoNoterg({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5)
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AssetsImpl(
            assetRoute: RouteAssetImages.ntd,
            width: 25,
            height: 25,
          ),
          SizedBox(width: 10,),
          Text(
            'NOTERG',
            style: RobotoMono.bold.copyWith(
              fontSize: 15,
              color: ColorsApp.white
            ),
          )
        ],
      ),
    );
  }
}