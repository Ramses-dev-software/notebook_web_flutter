import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Pages/PresentationPage/body_view.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/appbar_button.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/drawerbar.dart';
import 'package:notebook_web/Presentation/View/Widgets/PresentationPage/dropdown_sections.dart';
import 'package:notebook_web/Presentation/View/WidgetsGlobal/logo.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PresentationPage extends StatelessWidget {
  const PresentationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      endDrawer: ResponsiveBreakpoints.of(context).screenWidth <= 690 ? const Drawerbar() : null,
      body: const BodyView(),
    );
  }
}
