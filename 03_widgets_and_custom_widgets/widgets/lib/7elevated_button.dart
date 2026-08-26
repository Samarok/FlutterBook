import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
        body: ElevatedButton(
            child:Text("Click", style: TextStyle(fontSize: 22),),
            onPressed:(){ print("Clicked!!!");}
        ),
        appBar: AppBar(title:Text("METANIT.COM")),
      )
  ));
}
