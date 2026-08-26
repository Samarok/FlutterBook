import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> items = [];

  @override
  void initState() {
    super.initState();
    items = List.generate(3, (index) {
      return CounterItem(key: ValueKey(index));
    });
  }

  void swapItems() {
    setState(() {
      items.insert(0, items.removeAt(2)); // Перемещаем последний элемент в начало списка
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Перемещение виджетов')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: swapItems,
            child: Text('Переместить последний элемент'),
          ),
          Column(children: items),
        ],
      ),
    );
  }
}

class CounterItem extends StatefulWidget {
  CounterItem({Key? key}) : super(key: key);

  @override
  _CounterItemState createState() => _CounterItemState();
}

class _CounterItemState extends State<CounterItem> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Счетчик: $_counter'),
      trailing: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
