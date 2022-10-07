import 'package:flutter/material.dart';

import '../../config/colors/custom color.dart';

class CustomButton extends StatelessWidget {
  String text = "";
  CustomButton({required this.text});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: MainColor.orange,
            fixedSize: Size(size.width *.7 , size.height * .08),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(size.height * .04),
            )
        ),
        onPressed: (){},
        child: Text(text.toUpperCase(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
      ),
    );
  }
}
