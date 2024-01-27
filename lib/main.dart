
import 'package:first_project/Kpost.dart';
import 'package:first_project/projectkd/Newticket.dart';
import 'package:first_project/PostApi.dart';
import 'package:first_project/Task2.dart';
import 'package:first_project/getsss.dart';
import 'package:first_project/projectkd/login%20page.dart';
import 'package:first_project/login.dart';
import 'package:first_project/sample.dart';
import 'package:flutter/material.dart';

import 'AlertDialog.dart';
import 'projectkd/Homes.dart';
import 'projectkd/Mode.dart';
//import 'GetApi.dart';

void main() {
  runApp(const Afsar());
}

class Afsar extends StatelessWidget {
  const Afsar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'afsar',
      home: Mode(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Task extends StatefulWidget {
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(child: Text("Instagram")),
          // leading: InkWell(
          //     onTap: () {
          //       setState(() {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => const Afsar1()));
          //       });
          //     },
          //     child: const Icon(Icons.arrow_back)),
          actions: const [Icon(Icons.more_vert)],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Center(
                child: Container(
                  height: 180,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(36),
                      color: Colors.red),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.pink.shade700),
                    child: const Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.greenAccent),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.yellow),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 180,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.blueGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







////////////////     Fresh      //////////////////





////////////////     Afsar1      ///////////






class Afsar1 extends StatefulWidget {
  const Afsar1({super.key});

  @override
  State<Afsar1> createState() => _Afsar1State();
}

class _Afsar1State extends State<Afsar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('ListView'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text('BIKE'),
              leading: const Icon(Icons.electric_bike_rounded),
              trailing: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Task()));
                  });
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('CAR'),
              leading: Icon(Icons.car_crash_outlined),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('BOAT'),
              leading: Icon(Icons.directions_boat),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('BUS'),
              leading: Icon(Icons.bus_alert_rounded),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('RAILWAY'),
              leading: Icon(Icons.directions_railway_outlined),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text('RUN'),
              leading: Icon(Icons.directions_run),
            ),
          ),
        ],
      ),
    );
  }
}




////////////////     Task3      ///////////





class Task3 extends StatefulWidget {
  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  List values = [
    {
    'name':'Name :apple',
    'unit':'Unit: kg',
    'price':'Price:99',
    'image':'assets/images/apple.jpg'
  },
    {
      'name':'Name :mango',
      'unit':'Unit: doz',
      'price':'Price:30',
      'image':'assets/images/images.jpg'
    },
    {
      'name':'Name :banana',
      'unit':'Unit: doz',
      'price':'Price:10',
      'image':'assets/images/banana.jpg'
    },
    {
      'name':'Name :grapes',
      'unit':'Unit: kg',
      'price':'Price:8',
      'image':'assets/images/Graphes.jpg'
    },
    {
      'name':'Name :water',
      'unit':'Unit: kg',
      'price':'Price:25',
      'image':'assets/images/water melon.jpg'
    },
    {
      'name':'Name :kiwi',
      'unit':'Unit: pc',
      'price':'Price:40',
      'image':'assets/images/kiwi.jpg'
    },
    {
      'name':'Name :orange',
      'unit':'Unit: doz',
      'price':'Price:15',
      'image':'assets/images/orange.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child: Text("Product List")),
        actions: const [Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.shopping_cart),
        )],
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: ListView.builder(
        itemCount: values.length,
        itemBuilder: (context, index){
          return Card(
            color: Colors.grey,
           // elevation: 50,
            child: ListTile(
              leading: Image(height: 50,width: 50,image: AssetImage(values[index]['image'].toString()),),
              title: Text(values[index]['name'].toString()),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(values[index]['unit'].toString()),
                  Text(values[index]['price'].toString()),
                ],
              ),
              trailing: Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child:  Center(child: TextButton(onPressed: (){
                  print("Successfully added to cart");
                },
                    child: const Text("Add to Cart",style: TextStyle(color: Colors.white),))),
              ),
            ),
          );
        }
          ),
    );
  }
}
