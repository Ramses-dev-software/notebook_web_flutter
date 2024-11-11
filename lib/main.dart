import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:notebook_web/Core/Routes/routes_app.dart';
import 'package:notebook_web/Core/Theme/responsive.dart';
import 'package:notebook_web/Core/Theme/theme_pallete.dart';
import 'package:notebook_web/Presentation/View/Pages/PresentationPage/presentation_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case RoutesApp.presentation:
           return MaterialPageRoute(builder: (_) => const PresentationPage());
        }
        return MaterialPageRoute(builder: (_) => const PresentationPage());
      },
      
      
      home: const PresentationPage(),
    );
  }
}
