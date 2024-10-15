
import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body_view.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/height_view.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> implements Error {

  @override
  // TODO: implement stackTrace
  StackTrace? get stackTrace => throw UnimplementedError();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyView()
    );
  }
}
