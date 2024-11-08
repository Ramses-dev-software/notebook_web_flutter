import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_button.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_option.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/logo.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeightViewPage extends StatefulWidget {
  final ScrollController scrollController;
  const HeightViewPage({super.key, required this.scrollController});

  @override
  State<HeightViewPage> createState() => _HeightViewPageState();
}

class _HeightViewPageState extends State<HeightViewPage> {
  final Color appBarColor = Colors.white;
  final double toolbarHeight = 100;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: appBarColor,
        surfaceTintColor: ColorsApp.white,
        toolbarHeight: toolbarHeight,
        expandedHeight: 100,
        elevation: 20,
        shadowColor: ColorsApp.black,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          title: ResponsiveBreakpoints.of(context).screenWidth <= 690 ? 
          Row(
            children: [
              LogoNoterg(backgroundColor: ColorsApp.black,)
            ],
          )
          : 
          Row(
            children: [
              LogoNoterg(backgroundColor: ColorsApp.black,),
              SizedBox(width: 5,), 
              Expanded(
                child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorsApp.black
                ),
                padding: EdgeInsets.symmetric(vertical: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppbarOption(text: 'Forum'),
                    AppbarOption(text: 'Blog'),
                    AppbarOption(text: 'Docs')
                  ],
                ),
              ),
              ),
              SizedBox(width: 5,),
              Row(
                children: [
                  AppbarButton.signIn(),
                  SizedBox(width: 3,),
                  AppbarButton.download()
                ],
              )
            ],
          )
        ));
  }
}
