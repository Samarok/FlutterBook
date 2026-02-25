import 'package:flutter/material.dart';
class User {
  final String name;
  final int age;
  User(this.name, this.age);
}
final List<User> users = [
  User("Alex", 36),
  User("Tanya", 31),
  User("Eric", 41),
  User("Michael", 28)
];
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(users[index].name),
            subtitle: Text("Возраст: ${users[index].age}"),
          );
        },
      ),
      appBar: AppBar(title: Text("Complex List Example")),
    ),
  ));
}
