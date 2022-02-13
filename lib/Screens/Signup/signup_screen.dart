import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Signup/components/Signupbody.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFEBEE),
      body: SignupBody(),
    );
  }
}
