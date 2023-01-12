import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Flutter App"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(context: context, color: Colors.red, blocktext: "RED"),
          Card(context: context, color: Colors.green, blocktext: "GREEN"),
          Card(context: context, color: Colors.blue, blocktext: "BLUE"),
          Card(context: context, color: Colors.yellow, blocktext: "YELLOW"),
          
        ],
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String blocktext}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailScreen()));
        },
        child: Column(
          children: [
            Image.asset(
              "images/001.png",
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(blocktext)),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Text("This is a detail page"),
        ));
  }
}
