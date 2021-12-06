import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/signup_top.png",
            height: screenHeight * 0.15,
          ),
          Positioned(
            bottom: 0,
            child: Image.asset("assets/images/main_bottom.png",
                height: screenHeight * 0.13),
          )
        ],
      ),
    );
  }
}
