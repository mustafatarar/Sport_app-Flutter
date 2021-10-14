import 'package:flutter/material.dart';
import 'package:sportapp/UI/Splash_screen.dart';
import 'package:sportapp/UI/home_page/home_page.dart';
import 'package:sportapp/UI/values/values.dart';

import 'UI/values/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Styles.appTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
