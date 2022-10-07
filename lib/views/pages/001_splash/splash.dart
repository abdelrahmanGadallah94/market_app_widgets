import 'dart:async';

import 'package:animated_widgets/widgets/scale_animated.dart';
import 'package:flutter/material.dart';

import '../../../config/colors/custom color.dart';
import '../../../config/images-links/images-links.dart';
import '../002_welcome/welcome.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Timer(
        Duration(seconds: 4),
            () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Welcome()));
            }
    );
    return Scaffold(
      backgroundColor: MainColor.orange,
      body: ScaleAnimatedWidget.tween(
        duration: Duration(milliseconds: 800),
        scaleDisabled: 0.5,
        scaleEnabled: 1,
        child: Center(
         child: SizedBox(
           width: size.width * .6,
           child: Image.asset(ImageLinks.splashLogo),
         )
        ),
      ),
    );
  }
}
