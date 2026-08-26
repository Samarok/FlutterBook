import 'package:flutter/material.dart';

// Точка входа в приложение. Выполняется при запуске приложения.
void main() {
  // Запускаем приложение, создавая экземпляр MyApp
  runApp(MyApp());
}
// Определение главного виджета приложения
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Возвращаем MaterialApp, который обеспечивает базовую структуру для приложения
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Home - основной виджет, отображаемый в приложении
      home: Scaffold(
        // AppBar - виджет для отображения верхней панели с заголовком
        appBar: AppBar(
          title: Text('Circle Widget Example'), // Заголовок панели
        ),
        // Body - основной контент, отображаемый в приложении
        body: Center(
          // Центрируем CircleWidget в середине экрана
          child: CircleWidget(),
        ),
      ),
    );
  }
}
// Определение кастомного виджета CircleWidget
class CircleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Радиус круга
    final double radius = 100;
    // Возвращаем Container, который будет использоваться для отображения круга
    return Container(
      // Используем BoxDecoration для стилизации контейнера
      decoration: BoxDecoration(
        shape: BoxShape.circle, // Устанавливаем форму контейнера как круг
        color: Colors.red, // Устанавливаем цвет круга
      ),
      // Устанавливаем ширину контейнера равной диаметру круга
      width: radius * 2,
      // Устанавливаем высоту контейнера равной диаметру круга
      height: radius * 2,
    );
  }
}
