import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: Counter(),
        appBar: AppBar(title: Text("METANIT.COM")),)
  ));
}

class Counter extends StatefulWidget{
  Counter({ super.key});
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter>{

  int value = 0;

  @override
  Widget build(BuildContext context) {

    return Text(
      "Value: $value", style: TextStyle(fontSize: 22),
    );
  }
}
