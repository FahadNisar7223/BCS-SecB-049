import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final String result;
  final Color color;

  ResultScreen({required this.result,required this.color});

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(widget.result,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: widget.color,
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: Material(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20.0),
              child: InkWell(
                borderRadius: BorderRadius.circular(20.0),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'Play Again',
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
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black
            ),
            child: TextButton(
                onPressed: () {

                },
                child: Text("Firebase", style: TextStyle(fontSize: 20, color: Colors.white))
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black
            ),
            child: TextButton(
                onPressed: () {

                },
                child: Text("SQLite", style: TextStyle(fontSize: 20, color: Colors.white))
            ),
          ),
        ],
      ),
    );
  }
}
