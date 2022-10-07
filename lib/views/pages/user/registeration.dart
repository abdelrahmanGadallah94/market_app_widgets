import 'package:flutter/material.dart';
import '../../components/custom elevated button.dart';
import '../../dialogs/custom textform field.dart';
import 'login.dart';

class Registeration extends StatelessWidget {
  const Registeration({Key? key}) : super(key: key);
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
                                      borderRadius: BorderRadius.circular(10)),
                                  child: IconButton(
                                      padding: EdgeInsets.zero,
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                    Login()));
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios,
                                        color: Color(0xff111719),
                                        size: 18,
                                      )),
                                ))
                          ],
                        ),
                        Image.asset("assets/images/user/login/circle 3.png"),
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
                            "Registration",
                            style: TextStyle(
                                fontSize: 36, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Enter your phone number to verify\n your account",
                            style: TextStyle(
                                color: Color(0xffC4C4C4),
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          ),
                          SizedBox(
                            height: size.height * .04,
                          ),
                          CustomTextForm(
                              text: "E-mail", hintText: "Your email or phone"),
                          SizedBox(
                            height: size.height * .04,
                          ),
                          CustomButton(text: "Send new password".toUpperCase(),),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
