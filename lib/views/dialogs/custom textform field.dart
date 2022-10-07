import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {

  String text = "";
  String hintText = "";
  Icon ?icon;

  CustomTextForm({required this.text, required this.hintText, this.icon});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Color(0xff9796A1),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
           decoration: InputDecoration(
             hintText: hintText,
             suffixIcon: icon,
             hintStyle: TextStyle(color: Color(0xffC4C4C4),fontWeight: FontWeight.w400,fontSize: 17),
             enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: Color(0xffEEEEEE)),
             ),
             focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(color: Color(0xffEEEEEE)),
             ),
           )
          )
        ],
      ),
    );
  }
}
