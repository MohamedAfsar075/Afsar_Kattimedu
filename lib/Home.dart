import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  const Text("IT Support Service"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0),
            children: [
              // const SizedBox(height: 10,),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                color: Colors.blue.shade500,
                child:  const Column(
                  children: [
                    Icon(Icons.add_chart_outlined, size: 70),
                    Text("New Ticket"),
                  ],
                ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                color: Colors.blue.shade500,
                child:  const Column(
                  children: [
                    Icon(Icons.contact_phone, size: 70),
                    Text("Contact"),
                  ],
                ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                color: Colors.blue.shade500,
                child:  const Column(
                  children: [
                    Icon(Icons.map, size: 70),
                    Text("Map"),
                  ],
                ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                color: Colors.blue.shade500,
                child:  const Column(
                  children: [
                    Icon(Icons.phone, size: 70),
                    Text("Phone"),
                  ],
                ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                color: Colors.blue.shade500,
                child:  const Column(
                  children: [
                    Icon(Icons.camera_alt_outlined, size: 70),
                    Text("Camera"),
                  ],
                ),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                color: Colors.blue.shade500,
                child:  const Column(
                  children: [
                    Icon(Icons.settings, size: 70),
                    Text("Setting"),
                  ],
                ),
              ),
            ], //children
          ),
        ));
  }
}