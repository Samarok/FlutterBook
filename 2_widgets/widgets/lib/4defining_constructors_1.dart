import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.white,
    padding: EdgeInsets.only(top:40),
    child: const MyStatelessWidget(myText: "Flutter on metanit.com",
        myColor: Colors.redAccent),
  ));
}

class MyStatelessWidget extends StatelessWidget{
  final String myText;
  final Color myColor;
  const MyStatelessWidget({ Key? key, required  this.myText,
    required  this.myColor }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      myText,
      style: TextStyle(fontSize: 22, color: myColor),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
  }
}

