import 'package:flutter/material.dart';

import '../../config/colors/custom color.dart';
import '../../config/images-links/images-links.dart';
import '../pages/002_welcome/welcome.dart';

class CustomSlider extends StatelessWidget {
  // 1-onboarding image
  String onboardinImage = "";
  // 2- image logos
  String logo1 = "";
  String logo2 = "";
  String logo3 = "";
  String logo4 = "";
  String logo5 = "";
  // 3- main text
  String mainText = "";
  // 4- secondaryText text
  String secondaryText = "";

  // positioning of image
  double horizontalOfmainimage = 0.0;
  double verticalOfmainimage = 0.0;

  // sizedbox width
  double sizeboxWidth = 0.0;
  double sizeboxHeight = 0.0;
  CustomSlider(
      {required this.onboardinImage,
      required this.logo1,
      required this.logo2,
      required this.logo3,
      required this.logo4,
      required this.logo5,
      required this.mainText,
      required this.secondaryText,
      required this.horizontalOfmainimage,
      required this.verticalOfmainimage,
        required this.sizeboxWidth,
        required this.sizeboxHeight,
      });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width * .8,
                    height: size.width * .8,
                    margin: EdgeInsets.only(top: 35),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.width * .4),
                        border: Border(
                          bottom: BorderSide(color: GreenColor.green),
                          top: BorderSide(color: GreenColor.green),
                          left: BorderSide(color: GreenColor.green),
                          right: BorderSide(color: GreenColor.green),
                        )),
                  ),
                  Positioned(
                    top: size.width * .18,
                    left: size.width * .1,
                    child: CircleAvatar(
                      radius: size.width * .3,
                      backgroundColor: GrayColor.gray,
                    ),
                  ),
                  Positioned(
                    left: size.width * horizontalOfmainimage,
                    bottom: size.width * verticalOfmainimage,
                    child: SizedBox(
                      width: size.width * sizeboxWidth,
                      height: size.width * sizeboxHeight,
                      child: Image.asset(onboardinImage, fit: BoxFit.cover,),
                    ),
                  ),
                  Positioned(
                    right: size.width * .1,
                    top: size.width * .1,
                    child: Container(
                      width: size.width * .13,
                      height: size.width * .13,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: WhiteColor.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: CircleAvatar(
                        backgroundColor: WhiteColor.white,
                        radius: 12,
                        child: Image.asset(
                          logo1,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: size.width * .1,
                    bottom: size.width * .03,
                    child: Container(
                      width: size.width * .13,
                      height: size.width * .13,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: WhiteColor.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: CircleAvatar(
                        backgroundColor: WhiteColor.white,
                        radius: 12,
                        child: Image.asset(
                          logo2,
                        ),
                      ),
                    ),
                  ),

                  //3
                  Positioned(
                    left: size.width * .07,
                    top: size.width * .33,
                    child: Container(
                      width: size.width * .1,
                      height: size.width * .1,
                      decoration: BoxDecoration(
                          color: WhiteColor.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: CircleAvatar(
                        backgroundColor: WhiteColor.white,
                        child: Image.asset(
                          logo3,
                          width: size.width * .2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  //4
                  Positioned(
                    left: size.width * .33,
                    bottom: size.width * .05,
                    child: Container(
                      width: size.width * .1,
                      height: size.width * .1,
                      decoration: BoxDecoration(
                          color: WhiteColor.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: CircleAvatar(
                        backgroundColor: WhiteColor.white,
                        child: Image.asset(
                          logo4,
                          width: size.width * .2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  //4
                  Positioned(
                    right: size.width * .07,
                    bottom: size.width * .27,
                    child: Container(
                      width: size.width * .1,
                      height: size.width * .1,
                      decoration: BoxDecoration(
                          color: WhiteColor.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: CircleAvatar(
                        backgroundColor: WhiteColor.white,
                        child: Image.asset(
                          logo5,
                          width: size.width * .2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * .07,
                    height: 4,
                    color: YellowColor.yellow,
                  ),
                  Container(
                    width: 3,
                    height: 3,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: YellowColor.yellow,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Container(
                    width: 3,
                    height: 3,
                    decoration: BoxDecoration(
                        color: YellowColor.yellow,
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .04,
              ),
              Text(
                mainText,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: size.height * .03,
              ),
              Text(
                secondaryText,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 17,
                    height: 1.7,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff616772)),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              SizedBox(
                width: size.width * .2,
                height: size.width * .2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: MainColor.orange,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(size.width * .2))),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Welcome()));
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    size: 35,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
