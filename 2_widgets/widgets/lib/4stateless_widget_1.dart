import 'package:flutter/material.dart';

void main() {
  runApp(MyStatelessWidget());
}

class MyStatelessWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top:40),
      child: const Text(
        "Hello Flutter from METANIT.COM",
        style: TextStyle(fontSize: 22, color: Colors.lightBlue),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

