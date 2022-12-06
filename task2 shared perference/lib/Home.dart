import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasbhee/custom.dart';
import 'package:tasbhee/predefined%20tashbhee.dart';

class TasbheeHome extends StatefulWidget {
  
  @override
  State<TasbheeHome> createState() => _TasbheeHomeState();
}

class _TasbheeHomeState extends State<TasbheeHome> {
  //  int key1count=0;
  //  int key2count=0;
  //  int key3count=0;
  //  String key1name='';
  //  String key2name='';
  //  String key3name='';
  // String keycustomname='';
  // int keycustomcount=0;
  void savedata() async{
    SharedPreferences sp= await SharedPreferences.getInstance();
    sp.setString('Allah_ho_Akbar', firstsavename);
    sp.setInt('Allah_ho_Akbarcount', firstsavecount);
    sp.setString('Allahamdulliah', secondsavename);
    sp.setInt('Allahamdulliahcount', secondsavecount);
    sp.setString('SubhanAllah', thirdsavename);
    sp.setInt('SubhanAllahcount', thirdsavecount);
  }


  // void getdata() async{
  //   SharedPreferences sp= await SharedPreferences.getInstance();
  //   key1name=sp.getString('Allah_ho_Akbar').toString();
  //   key1count=sp.getInt('Allah_ho_Akbarcount') ?? 0;
  //   key2name=sp.getString('Allahamdulliah').toString();
  //   key2count=sp.getInt('Allahamdulliahcount') ?? 0;
  //   key3name=sp.getString('SubhanAllah').toString();
  //   key3count=sp.getInt('SubhanAllahcount') ?? 0;
  //
  // }

   void getdata() async{
     SharedPreferences sp= await SharedPreferences.getInstance();
     firstsavename=sp.getString('Allah_ho_Akbar').toString();
     firstsavecount=sp.getInt('Allah_ho_Akbarcount') ?? 0;
     secondsavename=sp.getString('Allahamdulliah').toString();
     secondsavecount=sp.getInt('Allahamdulliahcount') ?? 0;
     thirdsavename=sp.getString('SubhanAllah').toString();
     thirdsavecount=sp.getInt('SubhanAllahcount') ?? 0;

   }




  int precount=0;
  String prename="Allah_ho_Akbar";
  String savename="";
  int savecount=0;
  List listvalue=[];


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
    precount=precount+1;
    if(prename=='Allah_ho_Akbar' && precount==34){
      firstsavename=prename;
      firstsavecount=precount;
      prename="Allahamdulliah";
      precount=0;
    }
    if (prename=="Allahamdulliah" && precount==33) {
      secondsavename=prename;
      secondsavecount=precount;
      prename="SubhanAllah";
      precount=0;
    }
    if (prename=="SubhanAllah" && precount==33) {
      thirdsavename=prename;
      thirdsavecount=precount;
      prename="Tasbhee_Fatima(as)_Completed";
      precount=0;
    };


  }
  void restsp() async{
    SharedPreferences sp= await SharedPreferences.getInstance();
    sp.remove('Allah_ho_Akbar');
    sp.remove('Allah_ho_Akbarcount');
    sp.remove('Allahamdulliah');
    sp.remove('Allahamdulliahcount');
    sp.remove('SubhanAllah');
    sp.remove('SubhanAllahcount');
  }
  void rest(){
    precount=0;
    prename="Allah_ho_Akbar";
    firstsavename="";
    secondsavename="";
    thirdsavename="";
    firstsavecount=0;
    secondsavecount=0;
    thirdsavecount=0;
    restsp();
  }

  void saved(){
    if (prename=='Allah_ho_Akbar' && precount>0 && precount<=34) {
      firstsavename=prename;
      firstsavecount= precount;
    }

    if (prename=='Allahamdulliah' && precount>0 && precount<=33) {
      secondsavename=prename;
      secondsavecount= precount;
    }
    if (prename=='SubhanAllah' && precount>0 && precount<=33) {
      thirdsavename=prename;
      thirdsavecount= precount;
    }

  }

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
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20,left: 10),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RawMaterialButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Custom()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Custom Tasbhee"),
                ),
                  fillColor: Colors.blueGrey,

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RawMaterialButton(onPressed: (){
                  setState(() {
                    saved();
                    savedata();
                    getdata();
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
              Text("$prename",style: TextStyle(fontSize: 20,color: Colors.blueGrey),),
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


