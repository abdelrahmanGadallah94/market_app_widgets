import 'package:flutter/material.dart';

import '../../../config/colors/custom color.dart';
import '../../components/custom elevated button.dart';
import '../../dialogs/custom textform field.dart';
import 'login.dart';

class SignUp extends StatelessWidget {
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
                                  ],
                                ),
                                Image.asset("assets/images/user/login/circle 3.png"),
                              ],
                            ),
                           Padding(
                             padding: EdgeInsets.all(20),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 SizedBox(
                                   height: size.height * .06,
                                 ),
                                 Text(
                                   "Sign Up",
                                   style: TextStyle(
                                       fontSize: 36, fontWeight: FontWeight.w600),
                                 ),
                                 SizedBox(
                                   height: size.height * .04,
                                 ),
                                 CustomTextForm(text: "Full name",hintText: "Full name"),
                                 SizedBox(height: size.height * .03,),
                                 CustomTextForm(text: "E-mail",hintText: "Your email or phone"),
                                 SizedBox(height: size.height * .03,),
                                 CustomTextForm(text: "password",hintText: "Password",icon: Icon(Icons.remove_red_eye)),
                                 SizedBox(height: size.height * .03,),
                                 CustomButton(text: "sign up",),
                                 SizedBox(
                                   height: size.height * .01,
                                 ),
                                 Row(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Text("Already have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
                                     TextButton(onPressed: () {
                                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Login()));
                                     }, child: Text("Sign in",style: TextStyle(color: MainColor.orange,fontSize: 14,fontWeight: FontWeight.w400)))
                                   ],
                                 ),
                                 SizedBox(height: 10,)
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
