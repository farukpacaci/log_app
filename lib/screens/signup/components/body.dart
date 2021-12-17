import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:log_app/constants.dart';
import 'package:log_app/screens/login/login.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.fromLTRB(screenWidth * 0.05, 0, screenWidth * 0.05, 0),
        child: Container(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "SIGNUP",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kPrimaryColor),
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              SvgPicture.asset("assets/icons/signup.svg"),
              Container(
                margin: EdgeInsets.only(top: screenWidth * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kPrimaryLightColor,
                ),
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: kPrimaryColor,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenWidth * 0.01),
                decoration: BoxDecoration(
                  color: kPrimaryLightColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const TextField(
                  key: Key("Hello"),
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: kPrimaryColor,
                    ),
                    suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: screenWidth * 0.05),
                width: screenWidth * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kPrimaryColor,
                ),
                child: const TextButton(
                  onPressed: null,
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.01),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  Text("OR"),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => null,
                    child: Container(
                      width: screenWidth * 0.1,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPrimaryLightColor,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        width: screenWidth * 0.15,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  GestureDetector(
                    onTap: () => null,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: kPrimaryLightColor),
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        width: screenWidth * 0.105,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  GestureDetector(
                    onTap: () => null,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        width: screenWidth * 0.105,
                        color: kPrimaryColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
//Background(screenWidth: screenWidth, screenHeight: screenHeight)