import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/Assets/on_background.dart';
import 'package:notebook_web/Presentation/View/Style/assets_images.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class PositiveQualities extends StatelessWidget {
  final String content;

  const PositiveQualities({
    super.key,
    required this.content
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AssetsIM(
            assetRoute: RouteAssetImages.checkbox,
            height: 20,
            width: 20,
          ),
          SizedBox(width: 30,),
          Expanded(
            child: Text(
            textAlign: TextAlign.start,
            content,
          style: RobotoFont.robotoRegular.copyWith(
            fontSize: 15, 
            color: Colors.grey,
            overflow: TextOverflow.clip
          ),),
          ),]
    );
  }
}