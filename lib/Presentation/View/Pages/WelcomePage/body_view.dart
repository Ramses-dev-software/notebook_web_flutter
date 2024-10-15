import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/section_about.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/height_view.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class BodyView extends StatefulWidget {
  const BodyView({super.key});

  @override
  State<BodyView> createState() => _BodyViewState();
}

const String _assetImage = 'assets/images/AbstractBackground-assets.png';
const double _heightBackground = 600;

double _fontSize = 80;
double _widthContainer = 700;
// double _heightContainer = 500;

const double _sizeLimitMobile = 50;
const double _sizeLimitDesktop = 130;

final ScrollController _scrollController = ScrollController();

class _BodyViewState extends State<BodyView> {
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
      print('Posicion actual scroll: ${_scrollController.position.pixels}');
    });
  }

  double _responsiveFontSize() {
    if(Responsive.onDesktop(context)) {
      _fontSize = 100;
    }
    else if(Responsive.onTablet(context)) {
      _fontSize = 80;
    }
    else {
      _fontSize = 60;
    }
    return _fontSize;
  }

  @override
  Widget build(BuildContext context) {
    final sizeWidth = MediaQuery.sizeOf(context).width;

    _widthContainer = sizeWidth - (Responsive.onMobile(context) ? _sizeLimitMobile : _sizeLimitDesktop);

    Responsive.deviceComprobation(context);

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        HeightViewPage(),

        //Todo: This is the top design on the presentation web.
        SliverToBoxAdapter(
            child: SizedBox(
          height: _heightBackground,
          child: Stack(
            children: [
              OnBackground(
                  filter: ColorFilter.mode(Colors.lightBlue, BlendMode.color),
                  assetRoute: _assetImage),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SizedBox(
                      width: _widthContainer,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Write everything you can imagine',
                        style: AfacadFluxFont.afacadBlack.copyWith(
                            color: ColorsApp.black,
                            fontSize: _responsiveFontSize(),
                      ),
                    ),
                  ))
          )],
          ),
        )),

        // Todo: Gere is the center on the first page.

        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 100),
              SizedBox(
                width: _widthContainer,
                child: Text(
                  textAlign: TextAlign.center,
                  'Notept can convert your ideas in reality!',
                  style: RobotoFont.robotoRegular.copyWith(
                      fontSize: Responsive.onMobile(context) ? 20 : 26),
                ),
              ),
              SizedBox(
                height: 100,
              ),

              
              SectionAbout(
                  routeImage:
                      'assets/images/mobile-assets-removebg-preview.png',
                  titleSection: TextSectionContent.firstTitle,
                  content: TextSectionContent.first)
            ],
          ),
        ))
      ],
    );
  }
}
