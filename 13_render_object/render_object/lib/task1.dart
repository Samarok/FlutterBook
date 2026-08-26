import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(MyClockApp());
}

class ClockData {
  double hour = 0;
  double minute = 0;
  double second = 0;
}

class MyClockApp extends StatefulWidget {
  @override
  _MyClockAppState createState() => _MyClockAppState();
}

class _MyClockAppState extends State<MyClockApp> {
  ClockData clockData = ClockData();
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startClock();
  }

  void startClock() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) {
      setState(() {
        clockData.second++; // Увеличиваем секунды
        if (clockData.second >= 60) {
          clockData.second = 0;
          clockData.minute++; // Увеличиваем минуты
          if (clockData.minute >= 60) {
            clockData.minute = 0;
            clockData.hour++; // Увеличиваем часы
            if (clockData.hour >= 24) {
              clockData.hour = 0; // Сброс часов
            }
          }
        }
      });
    });
  }

  void resetClock() {
    setState(() {
      clockData.hour = 0;
      clockData.minute = 0;
      clockData.second = 0;
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Часы')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomPaint(
                size: Size(200, 200),
                painter: ClockPainter(clockData),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: resetClock,
                child: Text('Сбросить время'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  final ClockData clockData;

  ClockPainter(this.clockData);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;

    // Рисуем часы
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2),
        size.width / 2 - 10,
        paint
    );

    // Расчет углов для стрелок
    double hourAngle = (clockData.hour % 12 + clockData.minute / 60) * (pi / 6);
    double minuteAngle = (clockData.minute + clockData.second / 60) * (pi / 30);
    double secondAngle = clockData.second * (pi / 30);

    // Рисуем часовые стрелки
    paint.color = Colors.black;
    paint.strokeWidth = 8;
    canvas.drawLine(
        Offset(size.width / 2, size.height / 2),
        Offset(size.width / 2 + 50 * cos(hourAngle - pi / 2),
            size.height / 2 + 50 * sin(hourAngle - pi / 2)),
        paint
    );

    // Рисуем минутные стрелки
    paint.color = Colors.blue;
    paint.strokeWidth = 5;
    canvas.drawLine(
        Offset(size.width / 2, size.height / 2),
        Offset(size.width / 2 + 70 * cos(minuteAngle - pi / 2),
            size.height / 2 + 70 * sin(minuteAngle - pi / 2)),
        paint
    );

    // Рисуем секундные стрелки
    paint.color = Colors.red;
    paint.strokeWidth = 3;
    canvas.drawLine(
        Offset(size.width / 2, size.height / 2),
        Offset(size.width / 2 + 80 * cos(secondAngle - pi / 2),
            size.height / 2 + 80 * sin(secondAngle - pi / 2)),
        paint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
