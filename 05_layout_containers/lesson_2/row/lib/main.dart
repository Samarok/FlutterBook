import 'package:flutter/material.dart';
 
void main() {
  runApp(Container(
    padding: EdgeInsets.all(30),
    color: Colors.teal,
    child:Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Tom',
              textDirection: TextDirection.ltr),
          Text('Bob',
              textDirection: TextDirection.ltr),
          Text('Sam',
              textDirection: TextDirection.ltr),
          Text('Alice',
              textDirection: TextDirection.ltr)
        ],
      )
    )
  );
}
