import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:log_app/constants.dart';
import 'package:log_app/screens/login/login.dart';
import 'package:log_app/screens/welcome/welcome.dart';
import 'components/background.dart';
import 'package:log_app/screens/signup/components/body.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Background(),
        SignUpBody(screenWidth: screenWidth, screenHeight: screenHeight),
      ],
    ));
  }
}

//