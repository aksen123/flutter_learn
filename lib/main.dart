import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(title: Text('상단 부분'), titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color:Colors.black),backgroundColor: Colors.blue,),
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row( mainAxisAlignment: MainAxisAlignment.center, children: [ Icon(Icons.star), Icon(Icons.star), Icon(Icons.star) ] ),
          ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            color: Colors.green,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [Icon(Icons.phone),Icon(Icons.message), Icon(Icons.contact_page)],),
          )
        )
    );

  }
}
