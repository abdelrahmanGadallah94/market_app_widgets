import 'package:flutter/material.dart';
import 'package:market_app2/views/pages/user/sign%20up.dart';

import '../../../config/colors/custom color.dart';
import '../../components/custom elevated button.dart';
import '../../dialogs/custom textform field.dart';
import '../002_welcome/welcome.dart';
import 'forget password.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                      "assets/images/user/login/circle 1.png"),
                                  Image.asset(
                                      "assets/images/user/login/circle 2.png"),
                                  Positioned(
                                      left: size.width * .07,
                                      top: size.height * .04,
                                      child: Container(
                                        alignment: Alignment.center,
                                        width: 38,
                                        height: 38,
                                        padding: EdgeInsets.only(left: 5),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: IconButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () {
                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Welcome()));
                                            },
                                            icon: Icon(
                                              Icons.arrow_back_ios,
                                              color: Color(0xff111719),
                                              size: 18,
                                            )),
                                      ))
                                ],
                              ),
                              Image.asset(
                                  "assets/images/user/login/circle 3.png"),
                            ],
                          ),
                          SizedBox(
                            height: size.height * .1,
                          ),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 36, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: size.height * .04,
                                ),
                                CustomTextForm(
                                    text: "E-mail", hintText: "Your email or phone"),
                                SizedBox(
                                  height: size.height * .04,
                                ),
                                CustomTextForm(
                                    text: "password",
                                    hintText: "Password",
                                    icon: Icon(Icons.remove_red_eye)),
                                SizedBox(
                                  height: size.height * .04,
                                ),
                                Center(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ResetPassword()));
                                    },
                                    child: Text(
                                      "Forgot password?",
                                      style: TextStyle(
                                          color: MainColor.orange,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                CustomButton(text: "Login",),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Dont have an account?",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                                        },
                                        child: Text("Sign up",
                                            style: TextStyle(
                                                color: MainColor.orange,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400)))
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                    ),
                Container(
                  width: size.width,
                  height: size.height * .15,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: size.width * .3,
                            height: 1,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            color: Color(0xffB3B3B3),
                          ),
                          Text(
                            "Sign in with",
                            style: TextStyle(
                                color: Color(0xff5B5B5E),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            width: size.width * .3,
                            height: 1,
                            color: Color(0xffB3B3B3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.facebook,
                                color: Color(0xff1877F2),
                                size: 38,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Facebook".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ))
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                  "assets/images/user/login/google logo.png"),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "google".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
