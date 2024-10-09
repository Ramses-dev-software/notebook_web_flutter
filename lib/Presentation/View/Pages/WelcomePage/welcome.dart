
import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Components/WelcomeComponents/on_background.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/body_part.dart';
import 'package:notebook_web/Presentation/View/Pages/WelcomePage/top_part.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // final PageController _pageController = PageController();
  // int currentPage = 0;
  // void _onPageChanged(int index) => setState(() {
  // currentPage = index;
  // });

  @override
  void dispose() {
    super.dispose();
    // _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.square(90), 
        child: TopWelcomepage()
      ),
      body: SafeArea(
        child: Stack(
          children: [
            OnBackground(),
            BodyPartPage()
          ],
        )
    ),
    );
  }
}
