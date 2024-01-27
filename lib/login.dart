import 'package:first_project/main.dart';
import 'package:flutter/material.dart';

class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 144,
            ),
            Padding(
              padding: EdgeInsets.only(right: 299),
              child: Text(
                'SIGN UP',
                style: TextStyle(color: Colors.black,fontSize: 21),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: EdgeInsets.only(right: 299),
              child: Text(
                'name',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your name',
                  suffixStyle: TextStyle(color: Colors.black)
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.only(right: 299),
              child: Text(
                'Email',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your email id',
                  suffixStyle: TextStyle(color: Colors.black)),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: EdgeInsets.only(right: 249),
              child: Text(
                'Email password',
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextField(obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Enter your password',
                  suffixStyle: TextStyle(color: Colors.black),suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,)),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Afsar1()));},
              child: Container(
                height: 22,
                width: 194,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(55),color: Colors.amber),
                child: Padding(
                  padding: const EdgeInsets.only(left: 66),
                  child: Text('SIGN IN'),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}