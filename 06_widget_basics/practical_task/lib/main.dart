import 'package:flutter/material.dart';
 
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Это Stateless виджет'),
            SizedBox(height: 20), // Добавляем отступ между текстами
            ElevatedButton(
              onPressed: () {
                // Переход на второй экран
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Перейти на Stateful Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
 
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}
 
class _SecondScreenState extends State<SecondScreen> {
  int _counter = 0;
 
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Нажмите кнопку'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 20), // Добавляем отступ между текстами
            ElevatedButton(
              onPressed: () {
                // Переход на первый экран
                Navigator.pop(context);
              },
              child: Text('Вернуться на Stateless Screen'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
 
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FirstScreen(),
    routes: {
      '/second': (context) => SecondScreen(),
    },
  ));
}
