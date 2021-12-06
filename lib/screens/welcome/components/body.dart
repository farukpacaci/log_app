import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:log_app/constants.dart';
import 'package:log_app/screens/login/login.dart';
import 'package:log_app/screens/signup/signup.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.08),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to EDU",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              width: screenWidth * 0.7,
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Container(
              width: screenWidth * 0.8,
              height: screenHeight * 0.075,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: kPrimaryColor,
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight * 0.02),
              width: screenWidth * 0.8,
              height: screenHeight * 0.075,
              decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ));
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: kPrimaryColor),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
//