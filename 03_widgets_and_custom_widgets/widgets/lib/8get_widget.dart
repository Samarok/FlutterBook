import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: Column(children:[
          Counter(increment: 2),
          Counter(increment: 1),
        ]),
        appBar: AppBar(title: Text("METANIT.COM")),)
  ));
}
class Counter extends StatefulWidget{

  int increment = 1;

  Counter({ super.key, required this.increment});
  @override
  _CounterState createState() => _CounterState();
}
class _CounterState extends State<Counter>{

  int value = 0;

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        child: Text("Value: $value", style: TextStyle(fontSize: 22)),
        onPressed:(){ setState(() {
          value = value + widget.increment;
        });}
    );
  }
}
