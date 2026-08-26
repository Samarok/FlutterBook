import 'package:flutter/material.dart';
// Класс MyCardWidget, наследующий StatefulWidget,
// который позволяет обновлять состояние виджета.
class MyCardWidget extends StatefulWidget {
  // Переопределение метода createState для создания состояния виджета.
  @override
  _MyCardWidgetState createState() => _MyCardWidgetState();
}
// Класс _MyCardWidgetState, наследующий State, который хранит состояние виджета MyCardWidget.
class _MyCardWidgetState extends State<MyCardWidget> {
  // Переменная _displayText для хранения текста, отображаемого на виджете.
  String _displayText = "Нажмите на кнопку";
  // Метод _changeText для изменения текста на виджете.
  void _changeText() {
    // setState вызывает обновление состояния виджета.
    setState(() {
      // Изменение текста на "Текст изменен!".
      _displayText = "Текст изменен!";
    });
  }
  // Переопределение метода build для создания виджета.
  @override
  Widget build(BuildContext context) {
    // Создание виджета Card с содержимым.
    return Card(
      // Дочерний виджет Column для вертикального расположения элементов.
      child: Column(
        // mainAxisSize.min для минимальной высоты виджета.
        mainAxisSize: MainAxisSize.min,
        // Дочерние виджеты Column.
        children: <Widget>[
          // Виджет Text для отображения текста.
          Text(_displayText),
          // Виджет ElevatedButton для вызова метода _changeText при нажатии.
          ElevatedButton(
            // Метод _changeText вызывается при нажатии на кнопку.
            onPressed: _changeText,
            // Дочерний виджет Text для отображения текста на кнопке.
            child: Text('Изменить текст'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: MyCardWidget(),
      ),
    ),
  ));
}