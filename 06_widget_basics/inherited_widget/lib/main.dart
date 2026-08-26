import 'package:flutter/material.dart';
 
class CounterInheritedWidget extends InheritedWidget {
  final int counter;
  final Widget child;

  CounterInheritedWidget({required this.counter, required this.child}) : super(child: child);
 
  static CounterInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
  }
 
  @override
  bool updateShouldNotify(CounterInheritedWidget oldWidget) {
    return counter != oldWidget.counter;
  }
}
 
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = CounterInheritedWidget.of(context)?.counter ?? 0;
 
    return Scaffold(
      appBar: AppBar(title: Text('InheritedWidget Example')),
      body: Center(
        child: Text('Counter value: $counter'),
      ),
    );
  }
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Добавляем MaterialApp
      debugShowCheckedModeBanner: false,
      home: CounterInheritedWidget(
        counter: 5,
        child: MyHomePage(),
      ),
    );
  }
}
 
void main() {
  runApp(MyApp());
}
