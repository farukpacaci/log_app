import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:log_app/constants.dart';
import 'components/background.dart';
import 'components/body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Background(screenWidth: screenWidth, screenHeight: screenHeight),
          Body(screenWidth: screenWidth, screenHeight: screenHeight),
        ],
      ),
    );
  }
}
