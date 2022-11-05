import 'package:flutter/material.dart';

void main(){
  runApp(inputpage());
}

class inputpage extends StatelessWidget {
  const inputpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: input(),
    );
  }
}

class input extends StatefulWidget {
  const input({Key? key}) : super(key: key);

  @override
  State<input> createState() => _inputState();
}

class _inputState extends State<input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("BMI Calculator"),),
    );
  }
}



