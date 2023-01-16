import 'package:flutter/material.dart';
import 'package:guessingno/Login.dart';
import 'package:guessingno/welcome.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Guessing App",style: TextStyle(
                fontSize: 25,color: Colors.white
            ),),

          ],
        ),
      ),
    );
  }
}