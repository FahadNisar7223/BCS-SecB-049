import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasbhee/predefined%20tashbhee.dart';

import 'Home.dart';


class CustomHome extends StatefulWidget {
  int count=0;
  String owntasbhee="";
  CustomHome({
    required this.count,
    required this.owntasbhee,
  });

  @override
  State<CustomHome> createState() => _CustomHomeState(
      owntasbhee: owntasbhee,count:count
  );
}

class _CustomHomeState extends State<CustomHome> {
  // int key1count=0;
  // int key2count=0;
  // int key3count=0;
  // String key1name='';
  // String key2name='';
  // String key3name='';
  // String keycustomname='';
  // int keycustomcount=0;

  // void getdatacustom() async{
  //   SharedPreferences sp= await SharedPreferences.getInstance();
  //   keycustomname=sp.getString('owntasbhee').toString();
  //   keycustomcount=sp.getInt('count') ??0;
  //
  // }

  void savedatacustom() async{
    SharedPreferences sp= await SharedPreferences.getInstance();
    sp.setString('owntasbhee', customsavename);
    sp.setInt('count', customsavecount);
  }
  void getdatacustom() async{
    SharedPreferences sp= await SharedPreferences.getInstance();
    customsavename=sp.getString('owntasbhee').toString();
    customsavecount=sp.getInt('count') ??0;

  }

  int count;
  String owntasbhee="";
  _CustomHomeState({
    required this.count,
    required this.owntasbhee,
});

  int precount=0;
  String prename="";
  String savename="";


  ///Variable for saving data
  int firstsavecount=0;
  int secondsavecount=0;
  int thirdsavecount=0;
  int customsavecount=0;

  ////variable for saving strings

  String  firstsavename="";
  String  secondsavename="";
  String  thirdsavename="";
  String customsavename="";


  void counter(){
    prename=owntasbhee;
    precount=precount+1;
    if(prename== owntasbhee && precount==count){
      customsavename=prename;
      customsavecount=precount;
      prename="Done";
      precount=0;
    }


  }
  void restspcustom() async{
    SharedPreferences sp= await SharedPreferences.getInstance();
    sp.remove('owntasbhee');
    sp.remove('count');
  }
  void rest(){
    precount=0;
    prename=owntasbhee;
    count=0;
    firstsavename="";
    secondsavename="";
    thirdsavename="";
    firstsavecount=0;
    secondsavecount=0;
    thirdsavecount=0;
    customsavename="";
    customsavecount=0;
    restspcustom();
  }

  void saved(){
    if (prename==owntasbhee && precount>0 && precount<=count) {
      customsavename=prename;
      customsavecount= precount;
    }


  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> TasbheeHome()));

          },
        ),
        title: Text("Tasbhee App"),
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20,left: 10),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$owntasbhee"),
                Text("$count"),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RawMaterialButton(onPressed: (){
                    setState(() {
                      saved();
                      savedatacustom();
                      getdatacustom();
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>
                            Predefined(
                              firstsavename: firstsavename,
                              firstsavecount: firstsavecount,
                              secondsavename: secondsavename,
                              secondsavecount: secondsavecount,
                              thirdsavename: thirdsavename,
                              thirdsavecount: thirdsavecount,
                              customsavename: customsavename,
                              customsavecount: customsavecount,
                            )));
                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Saved"),
                    ),
                    fillColor: Colors.blueGrey,

                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("$owntasbhee",style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
                SizedBox(
                  height: 30,
                ),

                Text("$precount",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RawMaterialButton(onPressed: (){
                      setState(() {
                        counter();

                      });
                    },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Count"),
                      ),
                      fillColor: Colors.blueGrey,

                    ),
                    RawMaterialButton(onPressed: (){
                      setState(() {
                        rest();
                      });
                    },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Reset"),
                      ),
                      fillColor: Colors.blueGrey,

                    ),
                  ],
                )


              ],
            ),
          )

      ),
    );
  }
}
