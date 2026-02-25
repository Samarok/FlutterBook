import 'package:flutter/material.dart';
const double textSize = 22;
const double space = 15;
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: space),
            child: Text("Alex", style: TextStyle(fontSize: textSize)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: space),
            child: Text("Tanya", style: TextStyle(fontSize: textSize)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: space),
            child: Text("Eric", style: TextStyle(fontSize: textSize)),
          ),
        ],
      ),
      appBar: AppBar(title: Text("List with Padding")),
    ),
  ));
}
