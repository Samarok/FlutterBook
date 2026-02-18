import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ThemeExtension Example',
      theme: ThemeData(
        extensions: [CustomButtonTheme()],
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isOrange = true; // Флаг для определения текущего цвета кнопки

  void _changeColor() {
    setState(() {
      // Меняем цвет кнопки на противоположный
      _isOrange = !_isOrange;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Получаем доступ к кастомной теме через ThemeExtension
    final customButtonTheme = Theme.of(context).extension<CustomButtonTheme>()!;
    final buttonColor = _isOrange ? customButtonTheme.orangeColor : customButtonTheme.greenColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeExtension Example'),
      ),
      body: Center(
        child: Container(
          width: 100, // Устанавливаем ширину контейнера
          height: 100, // Устанавливаем высоту контейнера
          child: ElevatedButton(
            onPressed: _changeColor,
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor, // Используем цвет из кастомной темы
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // Устанавливаем квадратную форму кнопки
              ),
            ),
            child: Text(
              'Нажми',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

// Кастомный ThemeExtension
class CustomButtonTheme extends ThemeExtension<CustomButtonTheme> {
  final Color orangeColor = Colors.orange; // Оранжевый цвет
  final Color greenColor = Colors.green; // Зелёный цвет

  @override
  CustomButtonTheme copyWith() {
    return CustomButtonTheme();
  }

  @override
  CustomButtonTheme lerp(ThemeExtension<CustomButtonTheme>? other, double t) {
    if (other is! CustomButtonTheme) return this;
    return CustomButtonTheme();
  }
}
