import 'package:flutter/material.dart';
import 'package:log_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "LOGIN",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kPrimaryColor),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              SvgPicture.asset(
                "assets/icons/login.svg",
                width: screenWidth * 0.75,
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.05),
                width: screenWidth * 0.8,
                height: screenHeight * 0.075,
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    hintText: "E-mail",
                    hintStyle: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
              Container(
                width: screenWidth * 0.8,
                height: screenHeight * 0.075,
                margin: EdgeInsets.only(top: screenHeight * 0.02),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextField(
                  obscureText: true,
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: kPrimaryColor,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: kPrimaryColor,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenHeight * 0.01),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: screenWidth * 0.01,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(),
                          ));
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
