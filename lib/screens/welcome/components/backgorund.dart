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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: -1,
            child: Image.asset(
              "assets/images/signup_top.png",
              height: screenHeight * 0.15,
            ),
          ),
          Positioned(
            bottom: -1,
            left: -1,
            child: Image.asset(
              "assets/images/main_bottom.png",
              height: screenHeight * 0.15,
            ),
          )
        ],
      ),
    );
  }
}
