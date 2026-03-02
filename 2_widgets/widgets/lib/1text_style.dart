import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      padding: EdgeInsets.only(top:25, left:10, right:10),
      color: Colors.teal,
      child: Column(children: <Widget>[
        Text("Hello Flutter from Metanit.com",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 26,
                decoration: TextDecoration.lineThrough,
                decorationStyle: TextDecorationStyle.double
            )),
        Text("Hello Flutter from Metanit.com",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 26,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.wavy,
                decorationColor: Colors.blue,
                decorationThickness: 2
            )),
        Text("Hello Flutter from Metanit.com",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 26,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dotted,
                decorationColor: Colors.red,
                decorationThickness: 3
            ))
      ])
  )
  );
}
