import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.white,
    padding: EdgeInsets.only(top:40),
    child: const MyStatelessWidget(),
  ));
}

class MyStatelessWidget extends StatelessWidget{
  const MyStatelessWidget({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Text(
      "Hello Flutter!",
      style: TextStyle(fontSize: 22, color: Colors.lightBlue),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
  }
}
