// Импортируем необходимый пакет Flutter
import 'package:flutter/material.dart';
// В этом коде мы создаем кастомный виджет MyStatelessWidget, который наследуется от StatelessWidget. Это означает, что наш виджет не имеет состояния и не может изменяться.
class MyStatelessWidget extends StatelessWidget {
  // Переопределение метода build, который отвечает за отрисовку нашего виджета.
  @override
  Widget build(BuildContext context) {
    // Отрисовка текста "Привет, мир!".
    return Scaffold(
      body: Center(
        child: Text(
          'Привет, мир!',
          style: TextStyle(fontSize: 24), // можно настроить стиль
        ),
      ),
    );
  }
}
// В методе main мы создаем приложение с нашим кастомным виджетом MyStatelessWidget.
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyStatelessWidget(),
  ));
}
// В результате мы получим приложение с текстом "Привет, мир!".
