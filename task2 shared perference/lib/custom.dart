import 'package:flutter/material.dart';
import 'package:tasbhee/Custom%20Home.dart';
import 'package:tasbhee/Home.dart';

class Custom extends StatefulWidget {
  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  final key=GlobalKey<FormState>();

  String owntasbhee="";

  int count=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: (){

          },
        ),
        title: Text("Tasbhee App"),
      ),
      body: Center(
        child: AlertDialog(
          title: Text("Customized Your Own"),
          content: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value){
                    if (value==null || value.isEmpty) {
                      return "Enter Tasbhee Name must";
                    }
                    return null;
                  },
                  onSaved: (value){
                    owntasbhee=value!;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Tasbhe",
                  ),

                ),
        Padding(padding: EdgeInsets.all(15)),
        TextFormField(
            validator: (value){
              if (value==null || value.isEmpty) {
                return "Enter 0 to 10000";
              }
              return null;
              },
            onSaved: (value){
              count=int.parse(value!);
            },
            decoration: InputDecoration(
              hintText: "Enter count's",
            ),),
                SizedBox(height: 30,),

                Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    },
                        child: Text("Cancel")
                    ),

                    TextButton(
                        onPressed: (){
                         if (key.currentState!.validate()) {
                           key.currentState!.save();
                           Navigator.push(context,
                               MaterialPageRoute(builder: (context) => CustomHome(
                                 owntasbhee: owntasbhee,count:count
                               )));
                           print(owntasbhee);
                           print(count);
                         }
                        },
                        child: Text("OK")
                    ),
                  ],
                )
              ],
            ),

          ),



        )
      ),
    );
  }
}

