import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Theme/responsive.dart';
<<<<<<< HEAD:lib/Presentation/View/Pages/WelcomePage/body_view.dart
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/height_view.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body.dart';
=======
import 'package:notebook_web/Presentation/View/Pages/PresentationPage/height_view.dart';
import 'package:notebook_web/Presentation/View/Pages/PresentationPage/body.dart';
>>>>>>> 414a8a2ce89881e60a17c7ca5d64c9b11cdbae2a:lib/Presentation/View/Pages/PresentationPage/body_view.dart
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
        const HeightViewPage(),
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




