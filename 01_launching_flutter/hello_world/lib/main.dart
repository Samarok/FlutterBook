import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.red, // Добавляем красный фон
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Text(
            'Привет, Мир!',
            style: TextStyle(fontSize: 32, color: Colors.yellow), // Увеличиваем текст и делаем его желтым
          ),
        ),
      ),
    );
  }
}