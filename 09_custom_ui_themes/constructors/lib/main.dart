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
        appBar: AppBar(
          title: Text('Change Button Color'),
        ),
        body: Center(
          child: ColorChangingButton(),
        ),
      ),
    );
  }
}

class ColorChangingButton extends StatefulWidget {
  @override
  _ColorChangingButtonState createState() => _ColorChangingButtonState();
}

class _ColorChangingButtonState extends State<ColorChangingButton> {
  Color _buttonColor = Colors.blue; // Начальный цвет кнопки

  void _changeColor() {
    setState(() {
      // Изменение цвета кнопки при нажатии
      _buttonColor = _buttonColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _changeColor,
      style: ElevatedButton.styleFrom(
        backgroundColor: _buttonColor, // Устанавливаем текущий цвет кнопки
      ),
      child: Text(
        'Нажми меня',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}