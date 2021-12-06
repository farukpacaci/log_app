import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 1,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: screenWidth * 0.3,
              ),
            ),
            Positioned(
              top: 1,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: screenWidth * 0.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
