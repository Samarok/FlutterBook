import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:  Container(
      color: Colors.white,
      padding: EdgeInsets.only(top:25),
      child: Text("Flutter на  METANIT.COM",
          style: TextStyle(fontSize: 22, color: Colors.black87),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr),
    ),
  ));
}
