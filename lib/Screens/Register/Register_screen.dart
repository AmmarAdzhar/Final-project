import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Register/components/Registerbody.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDE7F6),
      body: RegisterBody(),
    );
  }
}
