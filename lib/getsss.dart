import 'dart:async';
import 'dart:convert';
import 'package:first_project/same.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'json.dart';




Future<List<same>> fetchAlbum() async {
  final response =
  await http.get(Uri.parse('https://fakestoreapi.com/products/category/jewelery'));


  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
   final List<dynamic> data = json.decode(response.body);

    List<same> products = data.map((item) {
      return same.fromJson(item);
    }).toList();

    return products;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class ggetapi extends StatefulWidget {
  const ggetapi({super.key});

  @override
  State<ggetapi> createState() => _ggetapiState();
}

class _ggetapiState extends State<ggetapi> {
  late Future<List<same>> produts;

  @override
  void initState() {
    // TODO: implement initState

    produts=fetchAlbum();
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
          child: FutureBuilder<List<same>>(
            future:produts,
            builder: (context, snapshot) {
              if (snapshot.hasData){
                return SizedBox(
                  height: 500,
                  child: GridView.builder(
                    itemCount: snapshot.data!.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {return Column(
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
                          snapshot.data![index].category!,style: const TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,
                        ),

                        Text(
                            snapshot.data![index].price!.toString()
                        ),
                        Text(
                          snapshot.data![index].description !,style: const TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,
                        )
                      ],
                    );}),
                );
              }else if(snapshot.hasError){
                return Text('${snapshot.error}');
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}