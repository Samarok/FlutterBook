import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorProvider(
        child: Scaffold(
          appBar: AppBar(title: Text('InheritedWidget Example')),
          body: Center(child: ColorButton()),
        ),
      ),
    );
  }
}

class ColorData extends InheritedWidget {
  final Color color;
  final VoidCallback toggleColor;

  const ColorData({
    Key? key,
    required this.color,
    required this.toggleColor,
    required Widget child,
  }) : super(key: key, child: child);

  static ColorData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ColorData>();
  }

  @override
  bool updateShouldNotify(ColorData old) => color != old.color;
}

class ColorProvider extends StatefulWidget {
  final Widget child;
  const ColorProvider({Key? key, required this.child}) : super(key: key);

  @override
  _ColorProviderState createState() => _ColorProviderState();
}

class _ColorProviderState extends State<ColorProvider> {
  Color _color = Colors.blue;

  void _toggleColor() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColorData(
      color: _color,
      toggleColor: _toggleColor,
      child: widget.child,
    );
  }
}

class ColorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = ColorData.of(context)!;
    return ElevatedButton(
      onPressed: data.toggleColor,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(data.color),
      ),
      child: Text('Нажми меня', style: TextStyle(color: Colors.white)),
    );
  }
}