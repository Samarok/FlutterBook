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
  String _displayText = 'Привет, Flutter!';

  void _changeText() {
    setState(() {
      _displayText = 'Текст изменен!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Простое приложение'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _displayText,
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20),
          Image.network(
            'https://avatars.mds.yandex.net/i?id=75ab3ed6064199779b64dbe79317a3c3_l-12247908-images-thumbs&n=13', 
            width: 400, 
            height: 400,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _changeText,
            child: Text('Изменить текст'),
          ),
        ],
      ),
    );
  }
}