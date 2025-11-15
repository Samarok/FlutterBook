import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Ресурсы Flutter', style: TextStyle(fontFamily: 'Roboto'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              Text('Пример текста с шрифтом Roboto', style: TextStyle(fontFamily: 'Roboto', fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
