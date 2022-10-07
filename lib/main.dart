import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:market_app2/views/pages/001_splash/splash.dart';
import 'package:market_app2/views/test.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    )
  );
}







// class User extends StatelessWidget{
//   getUser() async {
//     var url = Uri.parse("https://fakestoreapi.com/products/1");
//     var response = await http.get(url);
//
//     return json.decode(response.body);
//
//
//   }
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Center(
//         child: FutureBuilder(
//           future: getUser(),
//           builder: (context, AsyncSnapshot<Map> response){
//             if(response.connectionState == ConnectionState.waiting){
//               return CircularProgressIndicator();
//             }
//             else{
//               return Text("${response["use"]}");
//             }
//           },
//
//         ),
//       ),
//     );
//   }
//
// }
/*
*  getname() async{
  var name = await getUsername();
  print(name);
}

getpass() async {
  var pass = await getPass();
  print(pass);
}

Future <String> getUsername(){
  return Future.value("hello");
}

Future <int> getPass(){
  return Future.value(22);
}

* */