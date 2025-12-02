import 'package:flutter/material.dart';
 
class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatelessWidget'),
      ),
      body: Center(
        child: Text('Это Stateless виджет'),
      ),
    );
  }
}
 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStatelessWidget(),
  ));
}
