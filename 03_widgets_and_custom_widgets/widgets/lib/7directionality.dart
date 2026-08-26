import 'package:flutter/material.dart';

int count = 0;
void main() {
  runApp(Directionality(
    textDirection: TextDirection.rtl,
    child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top:25),
        child: ElevatedButton(
            child:Text("Click", textDirection: TextDirection.ltr),
            onPressed:(){}
        )),
  ));
}
