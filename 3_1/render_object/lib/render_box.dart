import 'package:flutter/material.dart';
import 'dart:math';

class Clock extends LeafRenderObjectWidget {
  final Size size;
  final Offset offset;
  final double hour;
  final double minute;

  const Clock({
    required this.size,
    required this.offset,
    required this.hour,
    required this.minute,
    super.key,
  });

  @override
  RenderObject createRenderObject(BuildContext context) =>
      ClockRenderBox(size, offset, hour, minute);

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderObject renderObject) {
    final clockRenderObject = renderObject as ClockRenderBox;
    clockRenderObject
      ..ownSize = size
      ..offset = offset
      ..hour = hour
      ..minute = minute;
  }
}

class ClockRenderBox extends RenderBox {
  Size _size;
  Offset _offset;
  double _hour;
  double _minute;

  ClockRenderBox(
      this._size,
      this._offset,
      this._hour,
      this._minute,
      );

  @override
  get sizedByParent => false;

  @override
  Size computeDryLayout(BoxConstraints constraints) =>
      constraints.constrain(_size);

  @override
  void performLayout() => size = constraints.constrain(_size);

  set ownSize(Size newSize) {
    if (newSize != _size) {
      _size = newSize;
      markNeedsPaint();
      markNeedsLayout();
    }
  }

  set offset(Offset offset) {
    if (offset != _offset) {
      _offset = offset;
      markNeedsPaint();
    }
  }

  set hour(double hour) {
    if (hour != _hour) {
      _hour = hour;
      markNeedsPaint();
      markNeedsSemanticsUpdate();
    }
  }

  set minute(double minute) {
    if (minute != _minute) {
      _minute = minute;
      markNeedsPaint();
      markNeedsSemanticsUpdate();
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final center = size.center(offset + _offset);
    final radius = size.shortestSide / 2;
    final hourToRads = _hour / 12 * 2 * pi;
    final minsToRads = _minute / 60 * 2 * pi;
    final paintHours = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 5
      ..color = Colors.white;
    final paintMins = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 2
      ..color = Colors.grey;
    context.canvas.drawLine(
      center,
      center +
          Offset(
            radius / 2 * cos(pi / 2 - hourToRads),
            -radius / 2 * sin(pi / 2 - hourToRads),
          ),
      paintHours,
    );
    context.canvas.drawLine(
      center,
      center +
          Offset(
            radius * cos(pi / 2 - minsToRads),
            -radius * sin(pi / 2 - minsToRads),
          ),
      paintMins,
    );
  }
}

class ClockData {
  Offset offset = Offset.zero;
  Size size = const Size.square(128);
  double hour = 0;
  double minute = 0;
}

class MyClockApp extends StatefulWidget {
  const MyClockApp({super.key});

  @override
  State<MyClockApp> createState() => _MyClockAppState();
}

class _MyClockAppState extends State<MyClockApp> {
  final clockData = ClockData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: false),
      home: Scaffold(
        body: SafeArea(
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ElevatedButton(
              onPressed: () =>
                  setState(() => clockData.offset += const Offset(1, 1)),
              child: const Text('Shift'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => clockData.size *= 1.1),
              child: const Text('Resize'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => clockData.hour++),
              child: const Text('Increment hour'),
            ),
            ElevatedButton(
              onPressed: () => setState(() => clockData.minute++),
              child: const Text('Increment min'),
            ),
            //добавили constraints, ограничивающие изменение размера до квадрата со стороной 200
            LimitedBox(
              maxWidth: 200,
              maxHeight: 200,
              child: Clock(
                size: clockData.size,
                offset: clockData.offset,
                hour: clockData.hour,
                minute: clockData.minute,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyClockApp());
}
