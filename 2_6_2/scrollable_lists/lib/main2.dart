import 'package:flutter/material.dart';
const double textSize = 22;
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal, // Указываем горизонтальное направление
        children: [
          Text("Alex", style: TextStyle(fontSize: textSize)),
          Text("Tanya", style: TextStyle(fontSize: textSize)),
          Text("Eric", style: TextStyle(fontSize: textSize)),
          Text("Michael", style: TextStyle(fontSize: textSize)),
          Text("Dmitry", style: TextStyle(fontSize: textSize)),
        ],
      ),
      appBar: AppBar(title: Text("Horizontal List Example")),
    ),
  ));
}
