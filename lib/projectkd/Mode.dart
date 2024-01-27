import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'Modular.dart';




class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  Future<AlbumModel4> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));
    if (response.statusCode == 200) {
      return AlbumModel4.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }


  @override
  void initState() {
    // TODO: implement initState

   fetchAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Po Ulla Va Veliya',
      debugShowCheckedModeBanner:false ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body:  Center(
          child: FutureBuilder<AlbumModel4>(
            future:fetchAlbum(),
            builder: (context, snapshot) {
              if (snapshot.hasData){
                return SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: snapshot.data!.data!.length,
                      itemBuilder: (context, index)
                      {
                        return Card(
                          child: Column(
                          children: [
                            Text (snapshot.data!.data![index].employeeName.toString()
                              ),
                            Text(
                              snapshot.data!.data![index].employeeAge.toString(),
                            ),
                            Text(
                              snapshot.data!.data![index].id.toString(),
                            ),
                          ],
                      ),
                        );
                      }
                  ),
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