import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Routes/routes_app.dart';
import 'package:notebook_web/Core/Theme/responsive.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/presentation_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  
  FlutterError.onError = (FlutterErrorDetails details) {
    print(details.exceptionAsString());
  };

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveBreakpoints.builder(
        child: widget!,
        breakpoints: Responsive.breakpointsResponsive
      ),
      theme: ThemeApp.themeDataLight,
      onGenerateRoute: AppWidgetRoutes.routeFactory,
      home: AppWidget.presentationPage,
    );
  }
}
