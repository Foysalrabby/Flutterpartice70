import 'dart:async';

import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Loginstate();
  }
}

class Loginstate extends State<Loginpage> {

  var email =TextEditingController();
  var password =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
          child: Container(
            width: 250 ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
            opacity: 0.5, 
            duration: Duration(seconds: 3),
            curve: Curves.bounceOut,
            
            child: Image.asset("assets/images/profile.png")),
            SizedBox(height: 20,),
            TextField(
              controller:email ,
              
              decoration: InputDecoration(
              
                border: OutlineInputBorder(
                borderRadius:BorderRadius.circular(5)
                ),
                label: Text("EMAIL"),
                prefix: Icon(Icons.email)
                
               ),
            )


            
          ]),
      )),
    );
  }
}
