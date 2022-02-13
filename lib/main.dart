import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Splashpage/splashpage.dart';
import 'package:flutter_auth/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ME AND MARKET',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.deepPurple[50],
      ),
      home: Splashpage(),
    );
  }
}
