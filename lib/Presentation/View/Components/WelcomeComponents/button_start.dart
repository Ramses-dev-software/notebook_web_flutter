import 'package:flutter/material.dart';
import 'package:notebook_web/Presentation/View/Style/style_app.dart';

class ButtonStart extends StatefulWidget {
  final Color background;
  const ButtonStart({super.key, required this.background});

  @override
  State<ButtonStart> createState() => _ButtonStartState();
}

class _ButtonStartState extends State<ButtonStart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.pushReplacementNamed(context, '/start_loginpage');
        // if(currentPage < 2) {
        //   pageController.nextPage(
        //     duration: Duration(seconds: 1),
        //     curve: Curves.fastEaseInToSlowEaseOut
        //   );
        // }
      },
      child: SizedBox(
        width: 200,
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: widget.background),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_forward,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Get started...',
                style: TextStylesApp.lightPoppinsFonts[0],
              )
            ],
          ),
        ),
      ),
    );
  }
}
