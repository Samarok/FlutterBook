import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: Counter(),
        appBar: AppBar(title: Text("METANIT.COM")),)
  ));
}
class Counter extends StatefulWidget{
  Counter({ Key ? key}) : super(key: key);
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter>{

  int _value = 0;

  _increaseValue(){
    setState(() =>_value++);
  }
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: _increaseValue,
      child: Container(
        color: Colors.lightBlueAccent,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Text("Value: $_value", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}
