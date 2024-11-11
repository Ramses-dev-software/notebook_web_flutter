import 'package:flutter/material.dart';
import 'package:notebook_web/Core/AssetsApp/assets_fonts.dart';
import 'package:notebook_web/Core/AssetsApp/assets_images.dart';
import 'package:notebook_web/Core/Theme/responsive.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Pages/PresentationPage/bottom_view.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/bottom_button.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/container_section.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/tools.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/view_tools.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/assets_impl.dart';
import 'package:responsive_framework/responsive_framework.dart';

const String _firstContainerTitle = 'Analyze your notes';
const String _firstContainerContent = 'IntelliSense is built directly into the editor, allowing you to quickly preview documentation, jump to sources, apply quick fixes and more. ';

const String _secondContainerTitle = 'AI Implementation';
const String _secondContainerContent = 'With integrate AI, you can od autocomplete, smart recommendations, and easy access to related topics. Elevate you creativity and organization with AI-powered notes!';

const String _thirdContainerTitle = 'Collaborative notes and fasting build in real-time';
const String _thirdContainerContent = 'Bring the power of Noterg! to your own workflow. Rapidly build, instantly analyze and collaborative notes in real-time with other people.';

const _secondGradient = <Color>[ColorsApp.yellowLight, ColorsApp.redOrange];
const _firstGradient = <Color>[ColorsApp.lightPink, ColorsApp.pink];
const _thirdGradient = <Color>[ColorsApp.lightBlue, ColorsApp.highBlue];

class Body extends StatefulWidget {
  final ScrollController controller;
  const Body({super.key, required this.controller});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder( 
      breakpoints: Responsive.breakpointsResponsive,
      child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            AssetsImplBlur(
          assetRoute: RouteAssetImages.backgroundTop,
          width: ResponsiveBreakpoints.of(context).screenWidth,
          height: !ResponsiveBreakpoints.of(context).isMobile ? 480 : 500,
          ),

          Align(
            child: SizedBox(
              width: !ResponsiveBreakpoints.of(context).isMobile ? 650 : 250,
              child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'Build and write better notes with NOTERG',
                  style: AfacadFluxFont.afacadBold.copyWith(
                    color: ColorsApp.white,
                  fontSize: !ResponsiveBreakpoints.of(context).isMobile ? 60 : 40
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  textAlign: TextAlign.center,
                  'Notes more eficient, \nmore atracctive and more nice.',
                  style: RobotoFont.robotoRegular.copyWith(
                    color: ColorsApp.white,
                    fontSize: !ResponsiveBreakpoints.of(context).isMobile ? 20 : 15
                  ),
                ),
                SizedBox(height: 20,),

                ResponsiveRowColumn(
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  layout: ResponsiveBreakpoints.of(context).isMobile ? 
                   ResponsiveRowColumnType.COLUMN : ResponsiveRowColumnType.ROW,
                   children: [
                    ResponsiveRowColumnItem(
                      child: BottomButton.download(ColorLogo.white)
                    ),
                    ResponsiveRowColumnItem(
                      child: SizedBox(height: 10, width: 10,),
                    ),
                    ResponsiveRowColumnItem(
                      child: BottomButton.github())
                   ],
                )
              ],
            ),
            )
          )
        ],
        ),

        SizedBox(height: 20,),

        Container(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsiveBreakpoints.of(context).isMobile ? 0 : 15),
          width: ResponsiveBreakpoints.of(context).screenWidth,
          height: 500,
          color: const Color.fromARGB(255, 203, 203, 203),
          child: SizedBox(
            child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Card.filled(
                color: Colors.transparent,
                shadowColor: ColorsApp.black,
                elevation: 20,
                child: AssetsImpl(
                assetRoute: RouteAssetImages.coding,
                width: ResponsiveBreakpoints.of(context).screenWidth,
                height: 480,
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: ResponsiveBreakpoints.of(context).isMobile ? 300 : 400,
                  child: Text(
                  textAlign: TextAlign.center,
                  'See Noterg in action',
                  style: RobotoMono.bold.copyWith(
                    color: ColorsApp.white,
                    fontSize: ResponsiveBreakpoints.of(context).isMobile ? 40 : 60
                  ),
                ),
                )
              )
            ],
          ),
          )
        ),

        // Todo: 
        SizedBox(height: 20,),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(
            ResponsiveBreakpoints.of(context).isMobile ? 30 : 35
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsApp.black,
          ),
          width: ResponsiveBreakpoints.of(context).screenWidth,
          child: Text(
            textAlign: TextAlign.center,
            'Build to have an simple\nexperience in the writing',
            style: RobotoMono.regular.copyWith(
              color: ColorsApp.white,
              fontSize: ResponsiveBreakpoints.of(context).isMobile ? 15 : 20
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),
        ViewTools(
          assetRoute: RouteAssetImages.google, 
          title: '📦 Import fonts, icons or utils from Google', 
          content: 'Import packages, fonts or utils from Google and import them in your project, just like you would in a local Google keep  or with Google docs. Sampling packages has never been easier. '
          ),
        SizedBox(height: 70,),
        ViewTools(
          assetRoute: RouteAssetImages.document, 
          title: '⚡ faster and nice ', 
          content: 'Noterg provides you with embed documents, who you can personalize and importing to other documents like “Word”'
        ),
        SizedBox(height: 70,),
        ViewTools(
          assetRoute: RouteAssetImages.phone, 
          title: '📱 Integrate and build with any screen', 
          content: 'Noterg have the ability to make notes or projects with different devices and  build them in real time'
        ),
        SizedBox(height: 70,),
        ViewTools(
          assetRoute: RouteAssetImages.key, 
          title: '🔒 Protection and Privacy at All Times', 
          content: 'Your security is our priority. With advanced encryption technology, keep your data safe and private at all times.'
        ),
        SizedBox(height: 20,),

        ToolsSections(
          title: _firstContainerTitle, 
          subTitle: _firstContainerContent, 
          assetRoute: RouteAssetImages.autocomplete, 
          gradient: _firstGradient,
          keyV: 'wid1',
        ),
        SizedBox(height: 20,),
        ToolsSections(
          title: _secondContainerTitle, 
          subTitle: _secondContainerContent, 
          assetRoute: RouteAssetImages.ai, 
          gradient: _secondGradient,
          keyV: 'wid2',
        ),
        SizedBox(height: 20,),
        ToolsSections(
          title: _thirdContainerTitle, 
          subTitle: _thirdContainerContent, 
          assetRoute: RouteAssetImages.notephone, 
          gradient: _thirdGradient,
          keyV: 'wid3',
          form: FormSection.twoColumns,
          complement: ContainerSection(
            elements: [
              SectionCheck(
                text: 'Instantly build, analyze, and work on notes with others, perfect for team projects.', 
                assetRoute: RouteAssetImages.checkbox
              ),
              SectionCheck(
                text: 'Encourages a mindset of letting go, focusing on important notes, and eliminating distractions.', 
                assetRoute: RouteAssetImages.checkbox
              ),
              SectionCheck(
                text: 'Maintains a clear and organized space, making active notes easy to find and manage.', 
                assetRoute: RouteAssetImages.checkbox
              )
            ], 
            gradient: [ColorsApp.lightGreen, ColorsApp.lowerBlue]),
        ),
        SizedBox(height: 20,),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            width: ResponsiveBreakpoints.of(context).screenWidth,
            decoration: BoxDecoration(
              color: ColorsApp.black,
              borderRadius:BorderRadiusDirectional.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(RouteAssetImages.backgroundBottom)
              )
            ),
            child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 800,
                        child: Text(
                        textAlign: TextAlign.center,
                        'Try Noterg now!',
                        style: RobotoMono.bold.copyWith(
                          fontSize: ResponsiveBreakpoints.of(context).isMobile ? 25 : 40,
                          color: ColorsApp.white
                        ),
                      ),
                      ),
                      SizedBox(height: 10,),
                      SizedBox(
                        width: 300,
                        child: 
                      BottomButton.download(ColorLogo.white),
                      )
                    ],
                  ),
                ),
          SizedBox(height: 20,),
          BottomView(),
          SizedBox(height: 20,)
        ],
      ));
  }
}
