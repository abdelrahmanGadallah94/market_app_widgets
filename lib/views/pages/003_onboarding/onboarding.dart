import 'package:flutter/material.dart';

import '../../../config/colors/custom color.dart';
import '../../../config/images-links/images-links.dart';
import '../../components/CustomSlider.dart';
import '../002_welcome/welcome.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: PageView(
            children: [
              //onboard page 1
              CustomSlider(
                onboardinImage: ImageLinks.onBoardingBackground1,
                logo1: ImageLinks.onBoarding1Logo1,
                logo2: ImageLinks.onBoarding1Logo2,
                logo3: ImageLinks.onBoarding1Logo3,
                logo4: ImageLinks.onBoarding1Logo4,
                logo5: ImageLinks.onBoarding1Logo5,
                mainText: "Browse your  menu\nand order directly",
                secondaryText: "Our app can send you everywhere, even\n space. For only \$2.99 per month",
                horizontalOfmainimage: .1,
                verticalOfmainimage: .1,
                 sizeboxWidth: .6,
                sizeboxHeight: .8,
              ),

              //onboard page 2
              CustomSlider(
                onboardinImage: ImageLinks.onBoardingBackground2,
                logo1: ImageLinks.onBoarding2Logo1,
                logo2: ImageLinks.onBoarding2Logo2,
                logo3: ImageLinks.onBoarding2Logo3,
                logo4: ImageLinks.onBoarding2Logo4,
                logo5: ImageLinks.onBoarding2Logo5,
                mainText: "Even to space with\nus! Together",
                secondaryText: "Our app can send you everywhere, even\n space. For only \$2.99 per month",
                horizontalOfmainimage: .03,
                verticalOfmainimage: -.22,
                sizeboxWidth: .75,
                sizeboxHeight: .9,
              ),

              //onboard page 3
              CustomSlider(
                onboardinImage: ImageLinks.onBoardingBackground3,
                logo1: ImageLinks.onBoarding3Logo1,
                logo2: ImageLinks.onBoarding3Logo2,
                logo3: ImageLinks.onBoarding3Logo3,
                logo4: ImageLinks.onBoarding3Logo4,
                logo5: ImageLinks.onBoarding3Logo5,
                mainText: "Pickup delivery at\nyour door",
                secondaryText: "Our app can send you everywhere, even\n space. For only \$2.99 per month",
                horizontalOfmainimage: .1,
                verticalOfmainimage: .1,
                sizeboxWidth: .6,
                sizeboxHeight: .8,
              ),
            ],
        )
      ),
    );
  }
}
