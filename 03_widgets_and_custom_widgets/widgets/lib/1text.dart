import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      padding: EdgeInsets.only(top:25, left:10, right:10),
      color: Colors.white,
      child: Text("Hello Flutter from Metanit.com",
          textDirection: TextDirection.ltr,       // текст слева направо
          textAlign: TextAlign.center,            // выравнивание по центру
          style: TextStyle(color: Colors.green,   // зеленый цвет текста
              fontSize: 26,                       // высота шрифта 26
              backgroundColor: Colors.black87     // черный цвет фона текста
          )
      )
  )
  );
}
