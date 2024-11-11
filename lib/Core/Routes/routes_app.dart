import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/presentation_page.dart';

final class RoutesApp {
  static const String presentation = '/';
  static const String auth = '/auth';
  static const String homePage = '/';
}

final class AppWidget {
  const AppWidget._();

  static const PresentationPage presentationPage = PresentationPage();
}

final class AppWidgetRoutes {
  AppWidgetRoutes._();

  static RouteFactory routeFactory = (settings) {
    switch(settings.name) {
      case RoutesApp.presentation:
        return MaterialPageRoute(builder: (_) => AppWidget.presentationPage);
    }
    return MaterialPageRoute(builder: (_) => AppWidget.presentationPage);
  };
}


