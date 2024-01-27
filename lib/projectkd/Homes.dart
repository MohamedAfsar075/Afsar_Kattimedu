import 'package:first_project/projectkd/Newticket.dart';
import 'package:flutter/material.dart';

import 'login page.dart';

class homes extends StatefulWidget {
  const homes({super.key});

  @override
  State<homes> createState() => _homesState();
}

class _homesState extends State<homes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('IT Support Service',style: TextStyle(color: Colors.amberAccent.shade400,fontWeight: FontWeight.bold),)),
          backgroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.logout,color: Colors.amberAccent.shade400,),
            )
        ),
        ],
       // leading:Icon(Icons.add_circle) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(//color: Colors.white54,),
                     image: DecorationImage(
                     image: AssetImage('assets/images/kpost.jpeg'),
                     fit: BoxFit.fill)),
              child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                          color: Colors.amberAccent.shade700,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0
                      ),
                    ],),
                      child:  Column(
                        children: [   InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const NewTicket()));
                              });
                            },
                            child:
                                Center(child: Icon(Icons.add_chart_outlined, size: 70,color: Colors.amberAccent.shade400,)),
                               // Center(child: Text("New Ticket",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo.shade700),))
                            //  child: Icon(Icons.logout,color: Colors.amberAccent.shade400,),
                        ),
                         //Center(child: Icon(Icons.add_chart_outlined, size: 70,color: Colors.amberAccent.shade400,)),
                           Center(child: Text("New Ticket",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo.shade700),))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                          color: Colors.amberAccent.shade700,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0
                      ),
                    ],),
                      child:   Column(
                        children: [
                          Center(child: Icon(Icons.airplane_ticket_outlined, size: 70,color: Colors.amberAccent.shade400)),
                          Center(child: Text("My Ticket",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo.shade700),))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                          color: Colors.amberAccent.shade700,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0
                      ),
                    ],),
                      child:   Column(
                        children: [
                          Center(child: Icon(Icons.settings, size: 70,color: Colors.amberAccent.shade400)),
                          Center(child: Text("Setting",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo.shade700),))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                          color: Colors.amberAccent.shade700,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0
                      ),
                    ],),
                      child:   Column(
                        children: [
                          Center(child: Icon(Icons.device_unknown, size: 70,color: Colors.amberAccent.shade400)),
                          Center(child: Text("FAQ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo.shade700),))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                          color: Colors.amberAccent.shade700,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0
                      ),
                    ],),
                      child:   Column(
                        children: [
                          Center(child: Icon(Icons.history_edu_outlined, size: 70,color: Colors.amberAccent.shade400)),
                          Center(child: Text("History",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo.shade700),))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white,
                      boxShadow: [
                      BoxShadow(
                          color: Colors.amberAccent.shade700,
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15,
                          spreadRadius: 1.0
                      ),
                    ],),
                      child:   Column(
                        children: [
                          Center(child: Icon(Icons.info_outline, size: 70,color: Colors.amberAccent.shade400)),
                          Center(child: Text("INFO",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo.shade700),))
                        ],
                      ),
                    ),
                  ),
                 // Center(child: Text('kpost Company',style: TextStyle(color: Colors.amberAccent.shade700,fontWeight: FontWeight.bold),)),
                  //Center(child: Text('IT Support Services (C) 2025',style: TextStyle(color: Colors.amberAccent.shade700,fontWeight: FontWeight.bold),))
                ],
              )
              ),
          ],
        ),
      ),
    );
  }
}
