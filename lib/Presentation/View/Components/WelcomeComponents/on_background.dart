import 'dart:ui';

import 'package:flutter/material.dart';

class OnBackground extends StatelessWidget {
  const OnBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        children: [
          Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.lightBlue, BlendMode.color),
                image: AssetImage('assets/images/abstractBackground.png'))),
    ),
    ),

    Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 7),
            child: Container(
              color: Colors.white.withOpacity(0),
            ),
          ),
        ),
        ],
      ),
    );
  }
}
