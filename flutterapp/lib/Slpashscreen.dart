import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterapp/Login.dart';
import 'package:flutterapp/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Slpashscreen extends StatefulWidget {
  @override
  State<Slpashscreen> createState() => SlpashscreenState();
}

class SlpashscreenState extends State<Slpashscreen> {
  // var fwidth = 500.0;
  static const String keylogin = "login"; //set value for login

  @override
  void initState() {
    super.initState();
    checkloginm();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          width: double.infinity,
          height: double.infinity,
          child: AnimatedContainer(
            duration: Duration(seconds: 3),
            child: Image.asset("assets/images/category_2.png"),
            height: 400,
            width: 400,
            curve: Curves.bounceInOut,
          ),
        ),
      ),
    );
  }

  void checkloginm() async {
    var Shareprefrence = await SharedPreferences.getInstance();
    var isLogend = Shareprefrence.getBool(keylogin);
    Timer(Duration(seconds: 3), () {

      if(isLogend != null){
          if(isLogend){
            Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Home page",)));
          }
          else{
             Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginpage()));
          }
      }
      else{
         Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginpage()));
      }
      
    });
  }
}
