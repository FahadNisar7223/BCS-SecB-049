import 'package:flutter/material.dart';
import 'dart:math';

import 'package:guessingno/result.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _randomNumber;
  late int _userGuess;
  int _triesLeft = 4;

  @override
  void initState() {
    super.initState();
    _randomNumber = Random().nextInt(200 - 100);
  }

  void _guessNumber() {
    setState(() {
      _triesLeft--;
    });

    if (_userGuess == _randomNumber) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ResultScreen(
                result: 'You won!',
                color: Colors.green,
              ),
        ),
      );
    } else if (_triesLeft == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              ResultScreen(
                result: 'You lost!',
                color: Colors.red,
              ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Result"),
            content: _userGuess > _randomNumber
                ? Text("very low")
                : Text("very high"),
            actions: <Widget>[
              TextButton(
                child: Text("Close"),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Guees Number"),
       ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Guess (100 - 200)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter your guess",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  _userGuess = int.parse(value);
                },
              ),
            ),
            Text('Tries left: $_triesLeft'),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
                child: InkWell(
                  borderRadius: BorderRadius.circular(20.0),
                  onTap: _guessNumber,
                  child: Center(
                    child: Text(
                      'Guess',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}

