import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Pages/LoginPage/login.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/welcome.dart';
import 'package:notebook_web/Presentation/View/Style/responsive.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';
import 'package:notebook_web/Presentation/View/routes.dart';
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
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case Routes.start:
           return MaterialPageRoute(builder: (_) => WelcomePage());
          
          case Routes.loginPage:
           return MaterialPageRoute(builder: (_) => Login());
        }
        return MaterialPageRoute(builder: (_) => WelcomePage());
      },
      
      
      home: WelcomePage(),
    );
  }
}
