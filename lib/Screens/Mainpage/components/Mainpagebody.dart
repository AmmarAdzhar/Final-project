import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Register/Register_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';

class MainpageBody extends StatefulWidget {
  const MainpageBody({Key? key}) : super(key: key);

  @override
  _MainpageBodyState createState() => _MainpageBodyState();
}

class _MainpageBodyState extends State<MainpageBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
        child: Column(
      children: [
        Flexible(
          flex: 4,
          child: Column(
            children: [
              Flexible(flex: 4, child: Container(color: Colors.purple)),
              Flexible(
                  flex: 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "WELCOME TO",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " ME AND MARKET",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))
            ],
          ),
        ),
        SizedBox(height: size.height * 0.05),
        Image.asset(
          "assets/images/market.jpeg",
          height: size.height * 0.45,
        ),
        SizedBox(
          height: 10,
        ),
        Flexible(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 10, 5),
              child: Column(
                children: [
                  const Center(
                    child: Text("ME AND MARKET",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Expanded(
                      child: ListView(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          shrinkWrap: true,
                          children: [
                        const MaterialButton(
                          onPressed: null,
                          child: Text("UPDATE NAME"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        const MaterialButton(
                          onPressed: null,
                          child: Text("UPDATE PASSWORD"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        const MaterialButton(
                          onPressed: null,
                          child: Text("UPDATE LOCATION"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        MaterialButton(
                          onPressed: _registerAccountDialog,
                          child: const Text("NEW REGISTRATION"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        MaterialButton(
                          onPressed: _loginDialog,
                          child: const Text("SIGN UP"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                        const MaterialButton(
                          onPressed: null,
                          child: Text("BUY CREDIT"),
                        ),
                        const Divider(
                          height: 2,
                        ),
                      ])),
                ],
              ),
            )),
      ],
    ));
  }

  void _registerAccountDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: const Text(
            "Register new Account",
            style: TextStyle(),
          ),
          content: const Text(
            "Are you sure?",
            style: TextStyle(),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => RegisterScreen()));
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _loginDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          title: const Text(
            "Go to Login Page",
            style: TextStyle(),
          ),
          content: const Text(
            "Are you sure?",
            style: TextStyle(),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Yes",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen()));
              },
            ),
            TextButton(
              child: const Text(
                "No",
                style: TextStyle(),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
