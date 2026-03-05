import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: Column(children:[
          Counter(value: 4, increment: 2),
          Counter(value:-1, increment: 1)
        ]),
        appBar: AppBar(title: Text("METANIT.COM")),)
  ));
}
class Counter extends StatefulWidget{

  int value = 0;
  int increment = 1;

  Counter({ super.key, required this.value, required this.increment});
  @override
  _CounterState createState() => _CounterState(this.value, this.increment);
}
class _CounterState extends State<Counter>{

  int value = 0;
  int increment = 1;

  _CounterState(this.value, this.increment);

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
        child: Text("Value: $value", style: TextStyle(fontSize: 22)),
        onPressed:(){ setState(() {
          value = value + increment;
        });}
    );
  }
}
