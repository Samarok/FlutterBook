import 'package:flutter/material.dart';
final List<String> users = ["Tom", "Alice", "Sam", "Bob", "Kate"];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(users[index]));
        },
      ),
      appBar: AppBar(title: Text('ListView with Dividers')),
    ),
  ));
}
