import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:responsive_framework/responsive_framework.dart';


const Color whiteCard = Colors.white;
const Color hoverColorCard = ColorsApp.orange;


class InformationColumnStart extends StatelessWidget {
  final String titleSpace;
  final String contentSpace;


  const InformationColumnStart({
    super.key,
    required this.titleSpace,
    required this.contentSpace,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: ResponsiveBreakpoints.of(context).isMobile ||
                ResponsiveBreakpoints.of(context).isTablet
            ? 400
            : 230,
        child: Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
          shadowColor: ColorsApp.black,
          color: ColorsApp.orange,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                titleSpace,
                style: RobotoFont.robotoBold
                    .copyWith(fontSize: 24, color: ColorsApp.white),
              ),
              Text(
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                contentSpace,
                style: RobotoFont.robotoRegular
                    .copyWith(fontSize: 20, color: ColorsApp.black),
              )
            ],
          ),
          )
        ));
  }
}


