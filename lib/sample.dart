import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'json.dart';




Future<List<Getaii2>> fetchAlbum() async {
  final response =
  await http.get(Uri.parse('https://fakestoreapi.com/products'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List<dynamic> data = json.decode(response.body);

    List<Getaii2> products = data.map((item) {
      return Getaii2.fromJson(item);
    }).toList();

    return products;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Getaii36 extends StatefulWidget {
  const Getaii36({super.key});

  @override
  State<Getaii36> createState() => _Getaii36State();
}

class _Getaii36State extends State<Getaii36> {
  late Future<List<Getaii2>> produts;

  @override
  void initState() {
    // TODO: implement initState

    produts=fetchAlbum() ;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<List<Getaii2>>(
            future:produts,
            builder: (context, snapshot) {

              return GridView.builder(
                  itemCount: snapshot.data!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Image(
                          image: NetworkImage(snapshot.data![index].image!),
                          height: 55,
                          width: 65,
                        ),
                        Text(
                          snapshot.data![index].title!,
                        ),
                        Text(
                          snapshot.data![index].category!,
                        ),
                        Text(
                          snapshot.data![index].description !,style: const TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,
                        )
                      ],
                    );});
            },
          ),
        ),
      ),
    );
  }
}