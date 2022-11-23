import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); //MaterialApp
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                gfgApp()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: const Color(0xff7c94b6),
        image: DecorationImage(
            image: AssetImage("images/tasbeeh pic.jpg"),
            fit: BoxFit.cover),
      ),

    );
  }
}


MaterialApp gfgApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black54,
        // title: const Text('TASBEEH',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        title: Row(
          children: [

            Text('TASBEEH',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),

            SizedBox(width: 150,),
            TextButton(onPressed: (){}, child: Text('Custom')),
            SizedBox(width: 20,),

            TextButton(onPressed: (){}, child: Text('Saved')),

          ],
        ),
      ), //AppBar
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: const Color(0xff7c94b6),
          image: DecorationImage(
              image: AssetImage("images/ff.jpg"),
              fit: BoxFit.cover),
        ),
      ),
    ),//Scaffold
    //Removing Debug Banner
  );
}