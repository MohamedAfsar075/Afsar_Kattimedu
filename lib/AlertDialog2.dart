import 'package:flutter/material.dart';

class Flutt extends StatefulWidget {
  const Flutt({super.key});

  @override
  State<Flutt> createState() => _FluttState();
}

class _FluttState extends State<Flutt> {
  @override

  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      showDialog(context: context, builder: (builder) => Column(
        children: [
         AlertDialog(
           title: Icon(Icons.directions_run_outlined,color: Colors.pink.shade600,
           ),
           content: Text("Are you sureyou want to quit ?",),
           actions: [
             TextButton(onPressed: () {
              Navigator.of(context).pop();
             },
               child: Container(
                 height: 30,
                 width: 70,
                 decoration: BoxDecoration(

                   borderRadius: BorderRadius.circular(10),
                   color: Colors.pink
                 ),
                 child: Center(
                   child: Text("NO",style: TextStyle(color: Colors.white),
                   ),
                 )
               ),
             ),
             TextButton(onPressed: (){
               Navigator.of(context).pop();
             },
               child: Container(
                 height: 30,
                 width: 70,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: Colors.white60,
                 ),
                 child: Center(
                   child: Text(
                     "YES",style: TextStyle(
                     color: Colors.pinkAccent),
                   ),
                 ),
               ),
             ),
           ],
         )
        ],
      ));

    }
    );

    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Center(child: Text('AlertDialog')),
     ),
    );
  }
}
