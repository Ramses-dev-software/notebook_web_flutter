import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Theme/responsive.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/bottom_view.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/height_view.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body.dart';
import 'package:responsive_framework/responsive_framework.dart';


class BodyView extends StatefulWidget {
  const BodyView({super.key});

  @override
  State<BodyView> createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    super.dispose();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController.addListener(() {
      print('Scroll position: ${_scrollController.position.pixels}');
    });
  }


  @override
  Widget build(BuildContext context) {
    Responsive.deviceComprobation(context);

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        HeightViewPage(scrollController: _scrollController,),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).isMobile ? 10 : 20),
            child: Body(controller: _scrollController,),
          ),
        ),

      ],
    );
  }
}




