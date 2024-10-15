import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/welcome.dart';
import 'package:notebook_web/Presentation/View/routes.dart';

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
      // theme: ThemeApp.themeDataLight,
      // darkTheme: ThemeApp.ThemeDataDark,
      onGenerateRoute: (settings) {
        switch(settings.name) {
          case Routes.start:
           return MaterialPageRoute(builder: (_) => WelcomePage());
          
        }

        return MaterialPageRoute(builder: (_) => WelcomePage());
      },
      
      home: WelcomePage()
    );
  }
}
