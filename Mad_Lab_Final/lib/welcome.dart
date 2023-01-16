import 'package:flutter/material.dart';
import 'package:guessingno/Roundbutton.dart';
import 'package:guessingno/Signup.dart';
import 'package:guessingno/Login.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(height: 30.0),
                RoundedButton(
                  colour: Colors.black,
                  title: 'Log In',
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                  },
                ),

                RoundedButton(
                    colour: Colors.black,
                    title: 'Register',
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                    }),
              ]),
        ));
  }
}
