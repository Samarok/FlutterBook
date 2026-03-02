import 'package:flutter/material.dart';

void main() {
  runApp(Container(
    color: Colors.white,
    padding: EdgeInsets.only(top:25),
    child: const MyStatelessWidget(
      myColor: Colors.tealAccent,
      myChild: Text("Flutter на metanit.com",
        style: TextStyle(fontSize: 22, color: Colors.teal),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,),
    ),
  ));
}

class MyStatelessWidget extends StatelessWidget{

  final Widget myChild;
  final Color myColor;

  const MyStatelessWidget({ Key? key, required this.myChild,
    this.myColor = Colors.white70}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
        color: myColor,
        child: myChild
    );
  }
}
