import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home:  Scaffold(
          body: TextField(
              onSubmitted: (text) {
                print("onSubmitted");
                print("Введенный текст: $text");
              },
              onChanged: (text) {
                print("onChanged");
                print("Введенный текст: $text");
              }),
          appBar: AppBar(title: Text("METANIT.COM")))
  ));
}
