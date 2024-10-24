import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body_view_mid.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body_view_top.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/height_view.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';


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
        HeightViewPage(),
        //Todo: This is the top design on the presentation web.
        BodyViewTop(),

        BodyViewMid()
      ],
    );
  }
}




