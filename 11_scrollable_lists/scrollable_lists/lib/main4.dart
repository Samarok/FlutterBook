import 'package:flutter/material.dart';
const List<String> users = <String>["Alex", "Tanya", "Eric", "Michael", "Dmitry"];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(users[index], style: TextStyle(fontSize: 22));
        },
      ),
      appBar: AppBar(title: Text("ListView.builder Example")),
    ),
  ));
}
