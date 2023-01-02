import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasbhee/Home.dart';

class Predefined extends StatelessWidget {
  int firstsavecount=0;
  int secondsavecount=0;
  int thirdsavecount=0;
  int customsavecount=0;

  ////variable for saving strings

   String  firstsavename='';
  String  secondsavename='';
  String  thirdsavename='';
  String customsavename='';

  Predefined({
    required this.firstsavename,
    required this.firstsavecount,
    required this.secondsavename,
    required this.secondsavecount,
    required this.thirdsavename,
    required this.thirdsavecount,
    required this.customsavename,
    required this.customsavecount
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
        ),
        title: Text("Tasbhee App"),
      ),
      body: SafeArea(
        child:Column(
          children: [
            ListTile(
              title:Text("Tasnhee Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blueGrey),) ,
              trailing: Text("Count",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.blueGrey),) ,
            ),
            Divider(),
            ListTile(
              title:Text("$firstsavename") ,
              trailing: Text("$firstsavecount"),
            ),
            ListTile(
              title:Text("$secondsavename") ,
              trailing: Text("$secondsavecount"),
            ),
            ListTile(
              title:Text("$thirdsavename") ,
              trailing: Text("$thirdsavecount"),
            ),
            ListTile(
              title:Text("$customsavename") ,
              trailing: Text("$customsavecount"),
            ),

          ],
        )
      ),
    );
  }
}


// class Predefined extends StatefulWidget {
//   @override
//   State<Predefined> createState() => _PredefinedState();
// }
//
// class _PredefinedState extends State<Predefined> {
// //   int firstsavecount=0;
//    int key1count=0;
//    int key2count=0;
//    int key3count=0;
//    String key1name='';
//    String key2name='';
//    String key3name='';
//   String keycustomname='';
//   int keycustomcount=0;
//
//   void initState(){
//     super.initState();
//     setState(() {
//       getdata();
//     });
//   }
//
//    void getdata() async{
//      SharedPreferences sp= await SharedPreferences.getInstance();
//      key1name=sp.getString('Allah_ho_Akbar').toString();
//      key1count=sp.getInt('Allah_ho_Akbarcount') ?? 0;
//      key2name=sp.getString('Allahamdulliah').toString();
//      key2count=sp.getInt('Allahamdulliahcount') ?? 0;
//      key3name=sp.getString('SubhanAllah').toString();
//      key3count=sp.getInt('SubhanAllahcount') ?? 0;
//      keycustomname=sp.getString('owntasbhee').toString();
//      keycustomcount=sp.getInt('count') ??0;
//    }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(icon: Icon(Icons.arrow_back),
//           onPressed: (){
//             Navigator.pop(context);
//           },
//         ),
//         title: Text("Tasbhee App"),
//       ),
//       body: SafeArea(
//           child:Column(
//             children: [
//               ListTile(
//                 title:Text("Tasnhee Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.amber),) ,
//                 trailing: Text("Count",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.amber),) ,
//               ),
//               Divider(),
//               ListTile(
//                 title:Text("$key1name") ,
//                 trailing: Text("$key1count"),
//               ),
//               ListTile(
//                 title:Text("$key2name") ,
//                 trailing: Text("$key2count"),
//               ),
//               ListTile(
//                 title:Text("$key3name") ,
//                 trailing: Text("$key3count"),
//               ),
//               ListTile(
//                 title:Text("$keycustomname") ,
//                 trailing: Text("$keycustomcount"),
//               ),
//
//             ],
//           )
//       ),
//     );
//   }
// }
