import 'package:first_project/main.dart';
import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("Flutter Grid View Demo"),
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
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.home, size: 70),
                    Text("Home"),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.contact_phone, size: 70),
                    Text("Contact"),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.map, size: 70),
                    Text("Map"),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.phone, size: 70),
                    Text("Phone"),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.camera_alt_outlined, size: 70),
                    Text("Camera"),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.settings, size: 70),
                    Text("Setting"),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.photo_album, size: 70),
                    Text("Album"),
                  ],
                ),
              ),
              Container(
                color: Colors.lightBlue,
                child: const Column(
                  children: [
                    Icon(Icons.wifi, size: 70),
                    Text("Wifi"),
                  ],
                ),
              ),
            ], //children
          ),
        ));
  }
}

/////////////GRID VIEW//////////////

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}
class _gridState extends State<grid> {
  List grid = [
    {
      'name': 'BANANAS',
      'rate': '${10}kg',
      'image': 'assets/images/banana.jpg'
    },
    {
      'name': 'ORANGE',
      'rate': '${30}kg',
      'image': 'assets/images/orange.jpg'
    },
    {
      'name': 'WATERMELON',
      'rate': '${50}kg',
      'image': 'assets/images/water melon.jpg'
    },
    {
      'name': 'GRAPES',
      'rate': '${49}kg',
      'image': 'assets/images/Graphes.jpg'
    },
    {
      'name': 'PEACH',
      'rate': '${90}kg',
      'image': 'assets/images/peach.jpg'
    },
    {
      'name': 'KIWI',
      'rate': '${30}kg',
      'image': 'assets/images/kiwi.jpg'
    },
    { 'name': 'APPLE',
    'rate': '${65}kg',
    'image': 'assets/images/apple.jpg'
    },
    {
      'name': 'ORANGE',
      'rate': '${70}kg',
      'image': 'assets/images/orange.jpg'
    },
    {
      'name': 'GRAPES',
      'rate': '${30}kg',
      'image': 'assets/images/Graphes.jpg'
    },
    {
      'name': 'PEACH',
      'rate': '${10}kg',
      'image': 'assets/images/peach.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text(
          'FRUITS',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            color: Colors.black,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.menu_sharp,
            color: Colors.black,
          )
        ],
      ),
      body:SingleChildScrollView( child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: grid.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shadowColor: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      grid[index]['image'].toString(),
                      height: 40,
                    ),
                    Text(grid[index]['name'].toString()),
                    Text(grid[index]['rate'].toString()),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 35,
                      width: 135,
                      decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(6)),
                      child: const Center(
                        child: Text('Add To Cart',style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          ),
      )
    );
  }
}
