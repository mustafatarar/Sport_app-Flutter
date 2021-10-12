import 'dart:async';


import 'package:flutter/material.dart';
import 'package:sportapp/UI/Privacy_policy/Privacy_policy.dart';
import 'package:sportapp/UI/home_page/home_page.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>PrivacyPolicy())));
  }

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Scaffold(
       backgroundColor: Colors.grey,
       body: 
      Container(
child: Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        backgroundImage:    AssetImage('assets/images/Ls logo.png'),
        radius: 30,

      ),
     Padding(padding: EdgeInsets.only(bottom: 10,left: 5),
      child:
       Text("TopBongaDa",style: TextStyle(
           color: Colors.white,
         fontSize: 30,
         fontWeight: FontWeight.bold


      )),)
    ],
  )
  
),

      )
        
      
       
    );
  }
}