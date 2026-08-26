import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Text("MaterialApp in Flutter",
          style: TextStyle(fontSize: 22, color: Colors.black87),
          textDirection: TextDirection.ltr),
      appBar: AppBar(
        title: const Text("METANIT.COM",
            style: TextStyle(color: Colors.blue)),
      ),
    ),
  ));
}
