import 'package:flutter/material.dart';
 
void main() {
  runApp(Container(
      color: Colors.lightBlue,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(40),
      margin: EdgeInsets.only(top:30),
      child: Text(
        'Hello Flutter from metanit.com',
          textDirection: TextDirection.ltr
        )
      )
  );
}
