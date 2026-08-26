// Импортируем необходимый пакет Flutter
import 'package:flutter/material.dart';
// Определите пользовательский виджет MyStatefulWidget с состоянием
class MyStatefulWidget extends StatefulWidget {
  // Переопределяем метод createState для создания объекта состояния
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
// Определяем класс состояния для MyStatefulWidget
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  // Инициализируем переменную текста с начальным значением
  String _text = 'Нажми кнопку';
  // Метод для изменения текста
  void _changeText() {
    // Используем setState для обновления состояния виджета
    setState(() {
      // Обновляем переменную текста здесь
      _text = 'Кнопка нажата';
    });
  }
  // Переопределяем метод build для определения пользовательского интерфейса виджета
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _changeText,
      child: Text(_text),
    );
  }
}
// В методе main создаем приложение с нашим кастомным виджетом MyStatefulWidget.
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyStatefulWidget(),
        ),
      ),
    ),
  );
}
// В результате мы получим приложение с кнопкой "Нажми кнопку". При нажатии на кнопку текст изменится на "Кнопка нажата".
