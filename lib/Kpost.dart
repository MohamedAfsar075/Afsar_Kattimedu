import 'package:flutter/material.dart';


class Kpost extends StatefulWidget {
  const Kpost({super.key});

  @override
  State<Kpost> createState() => _KpostState();
}

class _KpostState extends State<Kpost> {
  List values = [
    {
      'name':'NAME : MOHAMED.M',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313001',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
      'img':'assets/images/R.png',
      'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : AHAMED.R',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313002',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : SOWFIK.A',
     'nationality':'NATIONALITY: India',
      'id':'ID:1122313003',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : ASWATH.I',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313004',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : MUKSIN.J',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313005',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : RAYAN.D',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313006',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : MIZFER,T',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313007',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : HALITH.R',
      'nationality':'NATIONALITY: India',
      'id':'ID:811223130078',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : FARVEZ.M',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313009',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : ABSAR.A',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313010',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : FAIZ.M',
      'nationality':'NATIONALITY: India',
      'id':'ID:1122313011',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : ARZATH.K',
      'nationality':'NATIONALITY: India',
      'id':'ID:11122313012',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : FAHEEM.H',
     'nationality':'NATIONALITY: India',
      'id':'ID:1122313013',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : SABEEK.R',
      'nationality':'NATIONALITY:India ',
      'id':'ID:1122313014',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
    {
      'name':'NAME : UVAIS.M',
     'nationality':'NATIONALITY: India',
      'id':'ID:1122313015',
      'phone':'+951 373668436',
      'image':'assets/images/men.png',
    'using':'USING MOBILE:I PHONE 11'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title:  Center(child: Text("USER INFORMATION",style: TextStyle(color: Colors.black),)),
        actions:  [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.search,color: Colors.black,),
          ),
          Padding(
          padding: EdgeInsets.all(5.0),

          child: CircleAvatar(
              backgroundColor: Colors.brown.shade300,
              radius: 25,
              backgroundImage: AssetImage('assets/images/kpost.jpeg'),
            ),

        ),
        ],

        leading:  Icon(Icons.arrow_back,color: Colors.black,)
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: values.length,
            itemBuilder: (context, index){
              return Card(
                color: Colors.brown.shade200,
                elevation: 50,
                child: ListTile(
                  leading: Image(height: 40,width: 40,image: AssetImage(values[index]['image'].toString()),),
                  title: Text(values[index]['name'].toString(),style: TextStyle(fontSize: 20,color: Colors.brown),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text(values[index]['nationality'].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(values[index]['id'].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(values[index]['using'].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(values[index]['phone'].toString(),style: TextStyle(fontWeight: FontWeight.bold),),

                      // Container(color: Colors.white,
                      //   height: 70,
                      //   width: 35,
                      //   child: Image(image: AssetImage(values[index]['img'].toString()),),
                     // )
                    ],
                  ),
                  trailing: Container(
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                    ),
                    // child:  Center(child: TextButton(onPressed: (){
                    //   print("Successfully added to cart");
                    // },
                       child: Center(child: Text("VIEW DOC",style: TextStyle(color: Colors.white),))
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}
