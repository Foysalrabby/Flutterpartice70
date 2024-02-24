import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterapp/Login.dart';

class Slpashscreen extends StatefulWidget {
  @override
  State<Slpashscreen> createState() => _SlpashscreenState();
}

class _SlpashscreenState extends State<Slpashscreen> {
 // var fwidth = 500.0;


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) =>Loginpage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          width: double.infinity,
          height: double.infinity,  
        child: AnimatedContainer(duration: Duration(seconds: 5),
        child: Image.asset("assets/images/category_2.png"),
        height: 400,
        width: 400,
        curve: Curves.bounceInOut,
        ),
      
            
          ),
      ),
    
    );
  }
}
