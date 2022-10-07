import 'package:flutter/material.dart';

import '../../../config/colors/custom color.dart';
import '../../../config/images-links/images-links.dart';
import '../003_onboarding/onboarding.dart';
import '../user/login.dart';
import '../user/sign up.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(ImageLinks.WelcomeBg),
            fit: BoxFit.cover,
          )),
          child: Container(
            width: size.width,
            height: size.height,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    .1,
                    .6
                  ],
                  colors: [
                    Color(0xff494D63).withOpacity(.1),
                    Color(0xff191B2F).withOpacity(.8),
                  ]),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      alignment: Alignment.topRight,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: WhiteColor.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      OnBoarding()));
                        },
                        child: Text(
                          "skip",
                          style: TextStyle(color: MainColor.orange),
                        ),
                      )),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    "Welcome to",
                    style: TextStyle(
                        fontSize: 53,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff111719)),
                  ),
                  Text(
                    "FoodHub",
                    style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w700,
                        color: MainColor.orange),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Your favourite foods delivered\n fast at your door.",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff30384F)),
                  ),
                  SizedBox(
                    height: 187,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * .25,
                        height: 1,
                        decoration: BoxDecoration(
                            color: WhiteColor.white.withOpacity(.5)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Sign in with",
                          style: TextStyle(
                              color: WhiteColor.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        width: size.width * .25,
                        height: 1,
                        decoration: BoxDecoration(
                            color: WhiteColor.white.withOpacity(.5)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: size.width * .37,
                        height: 60,
                        decoration: BoxDecoration(
                            color: WhiteColor.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(ImageLinks.facebookLogo)),
                            TextButton(
                              onPressed: () {},
                              child: Text("Facebook".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: size.width * .37,
                        height: 60,
                        decoration: BoxDecoration(
                            color: WhiteColor.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset(ImageLinks.googleLogo)),
                            TextButton(
                              onPressed: () {},
                              child: Text("google".toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * .8,
                      height: 54,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white.withOpacity(.3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  side: BorderSide(color: WhiteColor.white))),
                          onPressed: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));
                          },
                          child: Text("Start with email or phone")),
                    ),
                  ),
                  SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an acount?",
                        style: TextStyle(
                            color: WhiteColor.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (BuildContext context) => Login()));
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: WhiteColor.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                decoration: TextDecoration.underline),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
