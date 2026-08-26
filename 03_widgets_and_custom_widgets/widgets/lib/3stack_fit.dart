import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      color: Colors.white,
      padding: EdgeInsets.only(top:40, bottom: 10, left: 20, right: 20),
      child: Stack(
        alignment: AlignmentDirectional.center,
        textDirection: TextDirection.ltr,
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: 240,
            height: 240,
            color: Colors.blueGrey,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.redAccent,
          )
          ,
        ],
      )
  )
  );
}
