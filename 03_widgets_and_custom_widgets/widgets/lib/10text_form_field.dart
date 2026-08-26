import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
          body: Person(),
          appBar: AppBar(title: Text("METANIT.COM")))
  ));
}

class Person extends StatefulWidget {

  Person({ Key ? key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}
class _PersonState extends State<Person>{

  String _name = "Tom";

  _changeName(String text){
    setState(() => _name = text);
  }

  @override
  Widget build(BuildContext context) {

    return Column(children:[
      Text("Имя пользователя: $_name", style: TextStyle(fontSize: 22)),
      TextFormField(initialValue: _name,
          style: TextStyle(fontSize: 22),
          onChanged: _changeName)
    ],
        crossAxisAlignment: CrossAxisAlignment.start);
  }
}
